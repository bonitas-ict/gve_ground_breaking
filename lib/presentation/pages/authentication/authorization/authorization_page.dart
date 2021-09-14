import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../presentation.dart';

final _formKey = GlobalKey<FormBuilderState>();

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLoc = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 80, left: 16, right: 16, bottom: 16),
            child: FormBuilder(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/user.png', height: 100,),
                  const SizedBox(height: 8,),
                  Text(appLoc!.welcome+" user !", style: Theme.of(context).textTheme.headline5),
                  const SizedBox(height: 8,),
                  Text(appLoc.verify_invite),
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
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: RectangleButton(label: appLoc.verify, onPressed: (){},)
                  ),
                  const SizedBox(height: 16,),
                  Text(appLoc.need_to_scan, style: Theme.of(context).textTheme.overline!.copyWith(fontSize: 14, color: const Color(0xFF598E48)), ),
                  const SizedBox(height: 16,),
                  Image.asset('assets/images/qr_code.png', height: 180, ),
                  const SizedBox(height: 16,),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: RectangleButton(label: appLoc.start_scanning, onPressed: ()=> context.router.navigate(const ScannerRoute()))
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}

