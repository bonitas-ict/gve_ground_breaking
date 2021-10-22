import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/misc/debug_util.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../presentation.dart';
final _fmKey = GlobalKey<FormBuilderState>();

class AccountContainer extends StatelessWidget {
  const AccountContainer({ Key? key }) : super(key: key);

      /// Validate and submit form value to the server
  void formSubmitHandler(BuildContext context){
    _fmKey.currentState?.save();
    if (_fmKey.currentState?.validate() == true) {
      printLn(_fmKey.currentState?.value);
      final name = _fmKey.currentState?.value['name'];
      final email = _fmKey.currentState?.value['email'];
      final phone = _fmKey.currentState?.value['phoneNumber'];
      context.read<VerificationBloc>().add(VerificationEvent.nameChanged(name));
      context.read<VerificationBloc>().add(VerificationEvent.emailChanged(email));
      context.read<VerificationBloc>().add(VerificationEvent.phoneNumberChanged(phone));
      context.read<VerificationBloc>().add(const VerificationEvent.createUser());
    }
  }

  @override
  Widget build(BuildContext context) {
    final appLoc = AppLocalizations.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/sign_up_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: BlocConsumer<VerificationBloc, VerificationState>(
        listener: (context, state) {
          
          state.authFailureOrSuccessOption.fold(
            (){}, 
            (either) =>either.fold(
              (failure) =>SnackUtil.showErrorSnack(context: context, message: failure.message ?? 'An unknown error occured!', title: 'An error occurred'), 
              (success){
                SnackUtil.showSuccessSnack(context: context, message: success.metadata['testOTP'].toString(),title: 'Verify your email' );
                context.router.navigate(OtpRoute(hashedOtp: success.data as String));
              }
            ) 
          );
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state.isSubmitting,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),
                    Text(appLoc!.hello+',', style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 26)),
                    const SizedBox(height: 40),
                    Text(appLoc.sign_up_to_get_started, style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 26, color: Colors.black)),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child:FormBuilder(
                          key: _fmKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 95,
                                child: FormBuilderTextField(
                                  name: 'name', 
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    //contentPadding: const EdgeInsets.all(16),
                                    filled: true,
                                    hintText: 'Full Name',
                                    prefixIcon: const Icon(Icons.account_circle),
                                    fillColor: Colors.white,
                                  ),
                                  validator: FormBuilderValidators.compose(
                                    [ FormBuilderValidators.required(context),FormBuilderValidators.minLength(context, 5)]
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 95,
                                child: FormBuilderTextField(
                                  name: 'email', 
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    //contentPadding: const EdgeInsets.all(16),
                                    filled: true,
                                    hintText: appLoc.email,
                                    prefixIcon: const Icon(Icons.email),
                                    fillColor: Colors.white,
                                  ),
                                  validator: FormBuilderValidators.compose(
                                    [ FormBuilderValidators.required(context), FormBuilderValidators.email(context)]
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 95,
                                child: FormBuilderTextField(
                                  name: 'phoneNumber', 
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  // contentPadding: const EdgeInsets.all(16),
                                    filled: true,
                                    hintText: appLoc.phone_number,
                                    prefixIcon: const Icon(Icons.phone),
                                    fillColor: Colors.white,
                                  ),
                                  validator: FormBuilderValidators.compose(
                                    [ FormBuilderValidators.required(context),FormBuilderValidators.minLength(context, 11), FormBuilderValidators.maxLength(context, 14)]
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(width: 145,child: RoundedButton(onPressed: () => formSubmitHandler(context), label: appLoc.sign_up)) 
                            ],
                          ),
                        ) ,
                      ),
                    )
                  ],
                ),
              ),
            ) ,
          );
        },
      ),
    );
  }
}