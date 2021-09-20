// import 'dart:io';

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class ScannerPage extends StatefulWidget {
//   const ScannerPage({Key? key, required this.submitCodeReference})
//       : super(key: key);

//   final ValueChanged<String?> submitCodeReference;
//   @override
//   _ScannerPageState createState() => _ScannerPageState();
// }

import 'package:flutter/material.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({ Key? key,  required this.submitCodeReference }) : super(key: key);
  final ValueChanged<String?> submitCodeReference;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}

// class _ScannerPageState extends State<ScannerPage> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

//   QRViewController? controller;

//   @override
//   void reassemble() {
//     super.reassemble();
//     if (Platform.isAndroid) {
//       controller?.pauseCamera();
//     } else if (Platform.isIOS) {
//       controller?.resumeCamera();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: QRView(
//         key: qrKey,
//         overlay: QrScannerOverlayShape(cutOutSize: MediaQuery.of(context).size.width * .8, borderWidth: 10, borderLength: 20, borderRadius: 10),
//         onQRViewCreated: _onQRViewCreated,
//       ),
//     );
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     this.controller = controller;
//     controller.scannedDataStream.listen((scanData) {
      
     
      
//     })..onData((data) {
//       final  Barcode? result = data;
//        widget.submitCodeReference(result?.code);
//       controller.stopCamera();
//       context.router.pop();
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }
