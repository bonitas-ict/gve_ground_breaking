import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gve_opening/src/application/auth/authentication/authentication_bloc.dart';
import 'package:gve_opening/src/domain/auth/auth.dart';
import 'package:gve_opening/src/misc/debug_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../presentation.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key, required this.hashedOtp}) : super(key: key);
  final String hashedOtp;

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String otp = '';

  void doesOTPmatch() {
    final utfValue = utf8.encode(otp);
    final sha256Value = sha256.convert(utfValue).toString();
    printLn("${sha256Value.toLowerCase()} ------ ${widget.hashedOtp.toLowerCase()}");
    if (sha256Value.toLowerCase() == widget.hashedOtp.toLowerCase()) {
      //context.router.navigate(const HomeRoute());
      context.read<AuthenticationBloc>().add(const AuthenticationEvent.switchAppState(AppState.AUTHENTICATED));
    } else {
      SnackUtil.showErrorSnack(context: context, message: 'Incorrect OTP Code');
    }
  }

  @override
  Widget build(BuildContext context) {
    final appLoc = AppLocalizations.of(context);
    return Scaffold(
      body: Container(
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
                            .headline5!
                            .copyWith(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        appLoc.provide_otp,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
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
                              .bodyText1!
                              .copyWith(color: const Color(0xFFCFCFCF))),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(appLoc.resend_code,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: const Color(0xFF598E48)))
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
