import 'package:dio/dio.dart';
import 'package:finanzapp/src/utils/preferences_utils.dart';

class Http {
  static final Http _httpMod = Http._internal();
  factory Http() {
    return _httpMod;
  }
  Http._internal();

  static const String _host = "finanzapp-backend.herokuapp.com";
  // static const String _host = "localhost:1337";

  static final Map<String, String> _headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
  static final Map<String, String> _headersAuth = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer ${PreferencesUtils.getString("jwt")}',
  };

  static Future<Response> get(
    String path,
    Map<String, dynamic> parameters,
  ) async {
    Uri url = Uri(
      host: _host,
      path: path,
      queryParameters: parameters,
      scheme: 'https',
    );

    Response response = await Dio().get(
      url.toString(),
      options: Options(
        headers: _headersAuth,
      ),
    );

    return response;
  }

  static Future<Response> post(
    String path,
    String data,
  ) async {
    Uri url = Uri(
      host: _host,
      path: path,
      scheme: 'https',
    );
    Response response = await Dio().post(
      url.toString(),
      data: data,
      options: Options(
        headers: _headersAuth,
      ),
    );

    return response;
  }

  static Future<Response> login(
    String path,
    String data,
  ) async {
    Uri url = Uri(
      host: _host,
      path: path,
      scheme: 'https',
    );

    Response response = await Dio().post(
      url.toString(),
      data: data,
      options: Options(
        headers: _headers,
      ),
    );

    return response;
  }

  static Future<Response> update(
    String path,
    String data,
  ) async {
    Uri url = Uri(
      host: _host,
      path: path,
      scheme: 'https',
    );
    Response response = await Dio().put(
      url.toString(),
      data: data,
      options: Options(
        headers: _headersAuth,
      ),
    );

    return response;
  }

  static Future<Response> delete(
    String path,
    Map<String, dynamic> parameters,
  ) async {
    Uri url = Uri(
      host: _host,
      path: path,
      queryParameters: parameters,
      scheme: 'https',
    );
    Response response = await Dio().delete(
      url.toString(),
      options: Options(
        headers: _headersAuth,
      ),
    );

    return response;
  }
}
