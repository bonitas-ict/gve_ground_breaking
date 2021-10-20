import 'dart:convert';
import 'dart:io';

import 'package:gve_opening/src/misc/debug_util.dart';

import '../../domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

/// NETWORK HTTP REQUEST VERB HELPERS
/// THIS IS A REQUEST HELPER CLASS THAT ABSTRACTS AWAY THE IMPLEMENTATION OF THE NETWORK REQUEST
/// 

@lazySingleton
class NetworkHelper {
  NetworkHelper({required http.Client conn}) : _http = conn;

  static String baseUrl = dotenv.env['BASE_URL']!;
  final http.Client _http;

  Future<dynamic> getRequest(String url, [Map<String, String>? header]) async {
    dynamic responseJson;
    try{
      printLn(Uri.parse(baseUrl + url));
      final response = await _http.get(Uri.parse(baseUrl + url), headers:{'Content-type': 'application/json',...?header});
      printLn('status code: '+response.statusCode.toString());
      responseJson = _returnResponse(response);
    }on SocketException{
      throw const NoNetworkException("No Internet connectivity");
    }
    return responseJson;
  }

  // Future<dynamic> uploadActions(String url, File fileInfo, [Map<String, String>? header]) async {
  //   var request = http.MultipartRequest('POST', Uri.parse(baseUrl + url));
  //   request.headers['Authorization'] = header?['Authorization'] ?? '';
  //   request.fields['clientName'] = 'Mazi Kanu';
  //   request.files.add(http.MultipartFile.fromBytes(field, value, contentType: ))
  // }

   Future<dynamic> putRequest(String url, Map<String, dynamic> body,[Map<String, String>? header]) async {
    dynamic responseJson;
    try{
      printLn(Uri.parse(baseUrl + url));
      final response = await _http.put(Uri.parse(baseUrl + url), body: jsonEncode(body), headers: {'Content-type': 'application/json', ...?header});
      printLn(response.body.toString());
      printLn('status code: '+response.statusCode.toString());
      responseJson = _returnResponse(response);
    }on SocketException {
      throw const NoNetworkException("No Internet connectivity");
    }
    return responseJson;
  }

  Future<dynamic> postRequest(String url, Map<String, dynamic> body,[Map<String, String>? header]) async {
    dynamic responseJson;
    try{
      printLn(Uri.parse(baseUrl + url));
      final response = await _http.post(Uri.parse(baseUrl + url), body: jsonEncode(body), headers: {'Content-type': 'application/json', ...?header});
      printLn(response.body.toString());
      printLn('status code: '+response.statusCode.toString());
      responseJson = _returnResponse(response);
    }on SocketException {
      throw const NoNetworkException("No Internet connectivity");
    }
    return responseJson;
  }

  Future<dynamic> deleteRequest(String url, Map<String, dynamic> body,[Map<String, String>? header]) async {
    dynamic responseJson;
    try{
      final response = await _http.delete(Uri.parse(baseUrl + url), body: jsonEncode(body), headers: {'Content-type': 'application/json', ...?header});
      printLn(response.body.toString());
      printLn('status code: '+response.statusCode.toString());
      responseJson = _returnResponse(response);
    }on SocketException {
      throw const NoNetworkException("No Internet connectivity");
    }
    return responseJson;
  }

  /// General response mapper
  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        dynamic responseJson = json.decode( response.body.toString());
        printLn(responseJson);
        return responseJson;
      case 400: 
        dynamic responseJson = json.decode( response.body.toString());
        throw BadRequestException(responseJson['message'] ?? response.body.toString());
      case 401:
      case 403:
      case 404:
        dynamic responseJson = json.decode( response.body.toString());
        throw UnauthorisedException(responseJson['message'] ?? response.body.toString());
      case 500:
      default:
        throw FetchDataException('Error: ${response.statusCode} ${response.body.toString()}');
    }
  }
}
