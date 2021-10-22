import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/misc/debug_util.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../presentation.dart';

final _formKey = GlobalKey<FormBuilderState>();

class AuthContainer extends StatelessWidget {
  const AuthContainer({ Key? key }) : super(key: key);

  /// Validate and submit form value to the server
  void formSubmitHandler(BuildContext context){
    _formKey.currentState?.save();
    if (_formKey.currentState?.validate() == true) {
      printLn(_formKey.currentState?.value);
      final pin = _formKey.currentState?.value['pin'] ?? '';
      context.read<AuthorizationBloc>().add(AuthorizationEvent.pinChanged(pin));
      context.read<AuthorizationBloc>().add(const AuthorizationEvent.verifyPin());
    }
  }

  Future<void> scanQR(BuildContext context) async{
    FlutterBarcodeScanner.scanBarcode('#2A9CCF', 'Cancel', true, ScanMode.QR).then((value){
      if(value!= '-1' && value!='4829686008126'){
        _formKey.currentState?.patchValue({'pin': value});
        context.read<AuthorizationBloc>().add(AuthorizationEvent.pinChanged(value));
        context.read<AuthorizationBloc>().add(const AuthorizationEvent.verifyPin());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final appLoc = AppLocalizations.of(context);

    return BlocConsumer<AuthorizationBloc, AuthorizationState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          (){}, 
          (either) =>either.fold(
            (failure) =>SnackUtil.showErrorSnack(context: context, message: failure.message ?? 'An unknown error occured!', title: 'An error occurred'), 
            (success){
             // SnackUtil.showSuccessSnack(context: context, message: success.message ?? '');
              context.router.navigate(const VerificationRoute());
            }
          )
        );
      },
      builder: (context, state) {
        return LoadingOverlay(
          isLoading: state.isSubmitting,
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 80, left: 16, right: 16, bottom: 16),
                  child: FormBuilder(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/user.png', height: 100,),
                        const SizedBox(height: 8,),
                        Text(appLoc!.welcome, style: Theme.of(context).textTheme.headline4),
                        const SizedBox(height: 8,),
                        Text(appLoc.verify_invite, style: Theme.of(context).textTheme.overline!.copyWith(color: const Color(0xFFCFCFCF))),
                        const SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: FormBuilderTextField(
                            name: 'pin', 
                            keyboardType: TextInputType.number, 
                            decoration: InputDecoration(
                              labelText: appLoc.enter_pin,
                              border:const OutlineInputBorder(),
                            ),
                            validator: FormBuilderValidators.compose(
                              [FormBuilderValidators.required(context), FormBuilderValidators.numeric(context), ValidationExt.actualLength(context,4) ]
                            ),
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: RectangleButton(label: appLoc.verify, onPressed:()=>formSubmitHandler(context) ,)
                        ),
                        const SizedBox(height: 16,),
                        Text(appLoc.need_to_scan, style: Theme.of(context).textTheme.overline! ),
                        const SizedBox(height: 16,),
                        Image.asset('assets/images/qr_code.png', height: 180, ),
                        const SizedBox(height: 16,),
                        Container(
                          width: 280,
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: RoundedButton(onPressed:()=> scanQR(context), label: appLoc.start_scanning ) 
                          //child: RectangleButton(label: appLoc.start_scanning, onPressed: ()=> context.router.navigate(const ScannerRoute()))
                        ),
                        const SizedBox(height: 26,),
                        GestureDetector(
                          onTap: ()=> context.router.navigate(const CreateAccountRoute()),
                          child: Text(appLoc.no_pin, style: Theme.of(context).textTheme.overline!.copyWith( color: const Color(0xFF598E48)), )
                        ),
                      ],
                    ) ,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}