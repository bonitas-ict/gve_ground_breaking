import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../presentation.dart';

final _formKey = GlobalKey<FormBuilderState>();

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({ Key? key }) : super(key: key);
  
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
            image: AssetImage('assets/images/sign_up_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(appLoc!.hello, style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 40),
            Text(appLoc.sign_up_to_get_started, style: Theme.of(context).textTheme.bodyText1),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child:FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FormBuilderTextField(
                        name: appLoc.email, 
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
                      ),
                      const SizedBox(height: 36),
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
                      RoundedButton(onPressed: (){}, label: appLoc.sign_up) 
                    ],
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}