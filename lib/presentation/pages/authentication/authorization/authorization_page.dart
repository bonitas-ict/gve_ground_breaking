import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final _formKey = GlobalKey<FormBuilderState>();

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00414F),
      body: Container(
        margin: const EdgeInsets.only(top: 200),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(topLeft:Radius.circular(22),topRight: Radius.circular(22))
                ),
                child: FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Please verify your invite'),
                      FormBuilderTextField(name: 'pin', keyboardType: TextInputType.number,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}