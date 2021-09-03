import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

final _formKey = GlobalKey<FormBuilderState>();

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({ Key? key }) : super(key: key);

  @override
  _AuthorizationPageState createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    } else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
  }

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
                      SizedBox(
                        height: 120,
                        child: QRView(
                          key: qrKey,
                          onQRViewCreated: _onQRViewCreated,
                        ),
                      ),
                      (result != null)
                      ? Text(
                          'Barcode Type:   Data: ${result?.code}')
                      : Text('Scan a code'),
                        
                    ]
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}