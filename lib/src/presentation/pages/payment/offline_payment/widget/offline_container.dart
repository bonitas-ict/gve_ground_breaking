import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class OfflineContainer extends StatelessWidget {
  const OfflineContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: const Color(0xFFF9FBF6),
                  //height: 400,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 95,
                        child: FormBuilderTextField(
                          name: 'name', 
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(labelText: 'Name on payment invoice'),
                          validator: FormBuilderValidators.compose(
                            [FormBuilderValidators.required(context),FormBuilderValidators.minLength(context, 5)]
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 95,
                        child: FormBuilderTextField(
                          name: 'email', 
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(labelText: 'Email Address'),
                          validator: FormBuilderValidators.compose(
                            [ FormBuilderValidators.required(context),FormBuilderValidators.minLength(context, 5)]
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 95,
                        child: FormBuilderTextField(
                          name: 'phone', 
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(labelText: 'Phone Number'),
                          validator: FormBuilderValidators.compose(
                            [ FormBuilderValidators.required(context),FormBuilderValidators.minLength(context, 5)]
                          ),
                        )
                      ),
                      SizedBox(
                        height: 95,
                        child: FormBuilderTextField(
                          name: 'amount', 
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(labelText: 'Amount Paid'),
                          validator: FormBuilderValidators.compose(
                            [ FormBuilderValidators.required(context),FormBuilderValidators.minLength(context, 5)]
                          ),
                        )
                      ),
                      SizedBox(
                        height: 95,
                        child: FormBuilderTextField(
                          name: 'file', 
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(labelText: 'Upload payment invoice'),
                          validator: FormBuilderValidators.compose(
                            [ FormBuilderValidators.required(context),FormBuilderValidators.minLength(context, 5)]
                          ),
                        )
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: const Color(0xFF7EB84E)),
                onPressed: () {
                  
                },
                child: const Text('Submit'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}