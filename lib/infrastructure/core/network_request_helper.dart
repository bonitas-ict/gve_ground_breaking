import 'dart:convert';
import 'dart:io';

import 'package:gve_launch/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

/// NETWORK HTTP REQUEST VERB HELPERS
/// THIS IS A REQUEST HELPER CLASS THAT ABSTRACTS AWAY THE IMPLEMENTATION OF THE NETWORK REQUEST
/// 

@lazySingleton
class NetorkHelper {
  NetorkHelper({required http.Client conn}) : _http = conn;

  static String baseUrl = dotenv.env['BASE_URL']!;
  final http.Client _http;

  Future<dynamic> getRequest(String url, [Map<String, String>? header]) async {
    dynamic responseJson;
    try{
      print(Uri.parse(baseUrl + url));
      final response = await _http.get(Uri.parse(baseUrl + url), headers:{'Content-type': 'application/json',...?header});
      print('status code: '+response.statusCode.toString());
      responseJson = _returnResponse(response);
    }on SocketException{
      throw NoNetworkException("No Internet connectivity");
    }
    return responseJson;
  }

  Future<dynamic> postRequest(String url, Map<String, dynamic> body,[Map<String, String>? header]) async {
    dynamic responseJson;
    try{
      print(Uri.parse(baseUrl + url));
      final response = await _http.post(Uri.parse(baseUrl + url), body: jsonEncode(body), headers: {'Content-type': 'application/json', ...?header});
      print(response.body.toString());
      print('status code: '+response.statusCode.toString());
      responseJson = _returnResponse(response);
    }on SocketException {
      throw NoNetworkException("No Internet connectivity");
    }
    return responseJson;
  }

  Future<dynamic> deleteRequest(String url, Map<String, dynamic> body,[Map<String, String>? header]) async {
    dynamic responseJson;
    try{
      final response = await _http.delete(Uri.parse(baseUrl + url), body: jsonEncode(body), headers: {'Content-type': 'application/json', ...?header});
      print(response.body.toString());
      print('status code: '+response.statusCode.toString());
      responseJson = _returnResponse(response);
    }on SocketException {
      throw NoNetworkException("No Internet connectivity");
    }
    return responseJson;
  }

  /// General response mapper
  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        dynamic responseJson = json.decode( response.body.toString());
        print(responseJson);
        return responseJson;
      case 400: 
        dynamic responseJson = json.decode( response.body.toString());
        throw BadRequestException(responseJson['message'] ?? response.body.toString());
      case 401:
      case 403:
        dynamic responseJson = json.decode( response.body.toString());
        throw UnauthorisedException(responseJson['message'] ?? response.body.toString());
      case 500:
      default:
        throw FetchDataException('Error: ${response.statusCode} ${response.body.toString()}');
    }
  }
}
