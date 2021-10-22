import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../presentation.dart';

final _formKey = GlobalKey<FormBuilderState>();

class VerificationContainer extends StatelessWidget {
  const VerificationContainer({ Key? key }) : super(key: key);

    /// Validate and submit form value to the server
  void formSubmitHandler(BuildContext context){
    _formKey.currentState?.save();
    if (_formKey.currentState?.validate() == true) {
      final email = _formKey.currentState?.value['email'];
      final phone = _formKey.currentState?.value['phoneNumber'];
      context.read<VerificationBloc>().add(VerificationEvent.emailChanged(email));
      context.read<VerificationBloc>().add(VerificationEvent.phoneNumberChanged(phone));
      context.read<VerificationBloc>().add(const VerificationEvent.verifyUser());
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
          image: AssetImage('assets/images/login_bg.png'),
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
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
                        child: FormBuilder(
                          key: _formKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 60,),
                              Text(appLoc!.welcome_back+ state.name, style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white, fontSize: 22),),
                              const SizedBox(height: 26),
                              SizedBox(
                                height: 95,
                                child: FormBuilderTextField(
                                  name: 'email', 
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
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
                                  name: "phoneNumber", 
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
                              SizedBox(
                                height: 60,
                                width: double.infinity,
                                child: OutlinedButt(onPressed: () => formSubmitHandler(context),
                                label: appLoc.login, color: Colors.white,)
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=> context.router.navigate(const CreateAccountRoute()),
                    child: Text("Don't have an account? Sign up", style: Theme.of(context).textTheme.overline!.copyWith(color:const Color(0xFFCFCFCF)),))
                ],
              )
            )
          );
        },
      ),
    );
  }
}