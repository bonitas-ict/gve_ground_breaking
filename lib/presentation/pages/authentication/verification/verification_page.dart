import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gve_launch/presentation/presentation.dart';
import 'package:gve_launch/presentation/shared/shared.dart';

final _formKey = GlobalKey<FormBuilderState>();

class VerificationPage extends StatelessWidget {
  const VerificationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLoc = AppLocalizations.of(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 120, left: 30, right: 30, bottom: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(appLoc!.welcome_back, style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),),
                      const SizedBox(height: 26),
                      FormBuilderTextField(
                        name: appLoc.email, 
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
                      ),
                      const SizedBox(height: 20),
                      FormBuilderTextField(
                        name: appLoc.phone_number, 
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
                      ),
                      const SizedBox(height: 16),
                      SizedBox(width: double.infinity,child: OutlinedButt(onPressed: ()=> context.router.navigate(const OtpRoute()), label: appLoc.login, color: Colors.white,))
                    ]
                  ),
                ),
              ),
              Text("Don't have an account? sign up", style: Theme.of(context).textTheme.bodyText2!.copyWith(color:const Color(0xFFCFCFCF)),)
            ],
          ),
        ),
      ),
    );
  }
}