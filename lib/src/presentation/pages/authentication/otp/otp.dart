import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/application/auth/authentication/authentication_bloc.dart';
import 'package:gve_opening/src/domain/auth/auth.dart';
import 'package:gve_opening/src/misc/debug_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../presentation.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({ Key? key, required this.hashedOtp, required this.email, required this.phoneNumber }) : super(key: key);
  final String hashedOtp;
  final String email;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<VerificationBloc>(
        create: (context) => getIt<VerificationBloc>()..add(VerificationEvent.emailChanged(email))..add(VerificationEvent.phoneNumberChanged(phoneNumber)),
        child: OtpContainer(hashedOtp: hashedOtp,),
      ),
    );
  }
}

class OtpContainer extends StatefulWidget {
  const OtpContainer({Key? key, required this.hashedOtp}) : super(key: key);
  final String hashedOtp;

  @override
  State<OtpContainer> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpContainer> {
  String otp = '';
  String finalOtp ='';

  @override
  void initState() {
    finalOtp = widget.hashedOtp;
    super.initState();
  }

  void doesOTPmatch() {
    final utfValue = utf8.encode(otp);
    final sha256Value = sha256.convert(utfValue).toString();
    printLn("${sha256Value.toLowerCase()} ------ ${finalOtp.toLowerCase()}");
    if (sha256Value.toLowerCase() == finalOtp.toLowerCase()) {
      //context.router.navigate(const HomeRoute());
      context.read<AuthenticationBloc>().add(const AuthenticationEvent.switchAppState(AppState.AUTHENTICATED));
    } else {
      SnackUtil.showErrorSnack(context: context, message: 'Incorrect OTP Code');
    }
  }

  @override
  Widget build(BuildContext context) {
    final appLoc = AppLocalizations.of(context);
    return BlocListener<VerificationBloc, VerificationState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            (){}, 
            (either) =>either.fold(
              (failure) =>SnackUtil.showErrorSnack(context: context, message: failure.message ?? 'An unknown error occured!', title: 'An error occurred'), 
              (success){
                SnackUtil.showSuccessSnack(context: context, message: success.metadata['testOTP'].toString(),title: 'Verify your email' );
                setState(() {
                  finalOtp = success.data as String;
                });
              }
            )
          );
      },
      child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/otp_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Text(
                          appLoc!.enter_otp,
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          appLoc.provide_otp,
                          style: Theme.of(context)
                              .textTheme
                              .overline!
                              .copyWith(fontSize: 18, color: const Color(0xFF959EA3)),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                            onChanged: (String val) {
                              setState(() {
                                otp = val;
                              });
                              //context.read<OtpBloc>().add(OtpEvent.otpChanged(val));
                            },
                            obscureText: true,
                            animationType: AnimationType.fade,
                            animationDuration: const Duration(milliseconds: 300),
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 40,
                              activeFillColor: Colors.white,
                            ),
                            //validator: (_) => context.read<OtpBloc>().state.otpCode.value.fold((l) => l.maybeMap(invalidOtpCode: (_) => "Invalid Otp code", orElse: () => null), (_) => null) ,
                          ),
                        ),
                        Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: RectangleButton(
                              label: appLoc.verify,
                              onPressed: doesOTPmatch,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(appLoc.did_not_receive_otp,
                            style: Theme.of(context)
                                .textTheme
                                .overline!
                                .copyWith(color: const Color(0xFFCFCFCF), fontSize: 18)),
                        const SizedBox(
                          height: 8,
                        ),
                        context.watch<VerificationBloc>().state.isSubmitting ? const Center(child: CircularProgressIndicator(),):
                        GestureDetector(
                          onTap: ()=> context.read<VerificationBloc>().add(const VerificationEvent.verifyUser()),
                          child: Text(appLoc.resend_code,
                              style: Theme.of(context)
                                  .textTheme
                                  .overline!
                                  .copyWith(color: const Color(0xFF598E48), fontSize: 18)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
