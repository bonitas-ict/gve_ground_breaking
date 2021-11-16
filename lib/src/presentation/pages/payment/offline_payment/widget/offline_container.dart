import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gve_opening/src/application/application.dart';

import '../../../../presentation.dart';
final _formKey = GlobalKey<FormBuilderState>();

class OfflineContainer extends StatefulWidget {
  const OfflineContainer({ Key? key }) : super(key: key);

  @override
  State<OfflineContainer> createState() => _OfflineContainerState();
}

class _OfflineContainerState extends State<OfflineContainer> {

  var selectedFileName = "Please select a file to upload";
   /// Validate and submit form value to the server
  void formSubmitHandler(BuildContext context){
    _formKey.currentState?.save();
    if (_formKey.currentState?.validate() == true) {
      context.read<OfflinePayBloc>().add(OfflinePayEvent.submitEvidence(_formKey.currentState?.value));
    }
  }

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
                  padding: const EdgeInsets.all(16),
                  child: FormBuilder(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.always,
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
                        const SizedBox(height: 16,),
                        SizedBox(
                          height: 95,
                          child: FormBuilderField(
                            name: 'base64Document', 
                            validator: FormBuilderValidators.compose(
                              [ FormBuilderValidators.required(context),FormBuilderValidators.minLength(context, 5)]
                            ),
                            builder: (FormFieldState<dynamic> field){
                              return InputDecorator(
                                decoration: InputDecoration(
                                  labelText: 'Upload payment invoice screenshot',
                                  contentPadding:const EdgeInsets.only(top: 6.0, bottom: 0.0),
                                  border: InputBorder.none,
                                  errorText: field.errorText,
                                ),
                                child: Container(
                                  margin: const EdgeInsets.only(top: 4),
                                  //height: 20,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(child: Text(selectedFileName, maxLines: 1,overflow: TextOverflow.clip,),),
                                          const SizedBox(width: 4),
                                          GestureDetector(child: const Icon(Icons.upload), onTap: () async{
                                            await AppImagePicker.showPicker(
                                              context,
                                              (img64) {
                                                if (img64!.isNotEmpty) {
                                                  field.didChange(img64['base64']);
                                                  setState(() {
                                                    selectedFileName = img64['fileName'] ?? 'Please select a file to upload';
                                                  });
                                                }
                                              },
                                            );
                                          },)
                                        ],
                                      ),
                                      const SizedBox(height: 4,),
                                      const Divider(color: Colors.green,)
                                    ]
                                  ),
                                ),
                              );
                            },
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            BlocConsumer<OfflinePayBloc, OfflinePayState>(
              listener: (_, OfflinePayState st){
                st.authFailureOrSuccessOption.fold(() => null, (a){
                  context.read<LandInfoBloc>().add(const LandInfoEvent.getLandsInfo());
                  context.router.popUntilRoot();
                });
              },
              builder: (context, state) {
                if(state.isSubmitting) return const Center(child: CircularProgressIndicator());
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: const Color(0xFF7EB84E)),
                      onPressed: () => formSubmitHandler(context),
                      child: const Text('Submit'),
                    ),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}