import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';

class AppImagePicker {
  static Future<Map<String,String>?> _imgFromCamera(BuildContext context) async {
    final pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 60);

    return await _getImage(pickedFile);
  }

  static Future<Map<String,String>?> _imgFromGallery(BuildContext context) async {
    try{
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 60);
      return await _getImage(pickedFile);
    }catch(e){
      print('Please select a valid file'+e.toString());
    }
    
  }

  static Future<Map<String,String>?> _getImage(XFile? pickedFile) async {
    if (pickedFile != null) {
      print(pickedFile.name);
      final bytes = await pickedFile.readAsBytes();
      var mimeType = lookupMimeType(pickedFile.path);
      return {"fileName": pickedFile.name, "base64" : 'data:$mimeType;base64,${base64Encode(bytes)}' } ;
    }
    return null;
  }

  static Future showPicker(context, Function(Map<String,String>?) onSelected) async {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Photo Library'),
                    subtitle: const Text('Choose an image from gallery'),
                    onTap: () async {
                      Navigator.of(context).pop();
                      var imageBase64 = await _imgFromGallery(context);
                      if(imageBase64?.isNotEmpty == true) {
                        onSelected(imageBase64);
                      }
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  subtitle: const Text('Take a picture from your camera'),
                  onTap: () async {
                    Navigator.of(context).pop();
                    var imageBase64 = await _imgFromCamera(context);
                    if(imageBase64?.isNotEmpty == true) {
                      onSelected(imageBase64);
                    }
                  },
                ),
              ],
            ),
          );
        });
  }
}
