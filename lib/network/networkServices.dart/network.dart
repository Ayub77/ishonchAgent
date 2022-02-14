import 'dart:convert';

import 'package:agent/network/apiConstanta.dart/api.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:http/http.dart' as http;

class Network {
  static var box = Hive.box("MyBaza");

  static Future getApi(String api, Map<String, dynamic> params) async {
    var res = await box.get('auth');
    String auth = res ?? "";
    Map<String, String> head = {
      'Coutent-Type': 'application/json; charset=UTF-8',
      'Authorization': auth
    };
    try {
      var uri = Uri.http(Api.Base, api, params);
      var response = await http.get(uri, headers: head);
      if (response.statusCode < 299) {
        var data = {'error': false, 'data': jsonDecode(response.body)};
        return data;
      }
      var data = {'error': true, 'data': "xatolik"};
      return data;
    } catch (e) {
      var data = {'error': true, 'data': "Server bilan aloqa yo'q"};
      return data;
    }
  }

  static Future postApi(String api, Map<String, dynamic> params) async {
    var res = box.get('auth');
    String auth = res ?? "";
    Map<String, String> head = {
      'Coutent-Type': 'application/json; charset=UTF-8',
      'Authorization': auth
    };
    try {
      var uri = Uri.http(Api.Base, api);
      var response = await http.post(uri, headers: head, body: params);

      if (response.statusCode < 299) {
        var data = {'error': false, 'data': jsonDecode(response.body)};
        return data;
      }
      var data = {'error': true, 'data': "xatolik"};
      return data;
    } catch (e) {
      var data = {'error': true, 'data': "Server bilan aloqa yo'q"};
      return data;
    }
  }

  static Future putApi(String api, Map<String, dynamic> params,
      {String? id}) async {
    var res = box.get('auth');
    String auth = res ?? "";
    Map<String, String> head = {
      'Coutent-Type': 'application/json; charset=UTF-8',
      'Authorization': auth
    };
    try {
      var uri = Uri.http(Api.Base, api + "/" + id!);
      var response = await http.put(uri, headers: head, body: params);

      if (response.statusCode < 299) {
        var data = {'error': false, 'data': jsonDecode(response.body)};
        return data;
      }
      var data = {'error': true, 'data': "xatolik"};
      return data;
    } catch (e) {
      var data = {'error': true, 'data': "Server bilan aloqa yo'q"};
      return data;
    }
  }

  static Future deleteApi(
      String api, String id, Map<String, dynamic> params) async {
    var res = await box.get('auth');
    String auth = res ?? "";
    Map<String, String> head = {
      'Coutent-Type': 'application/json; charset=UTF-8',
      'Authorization': auth
    };
    try {
      var uri = Uri.http(Api.Base, api + "/" + id, params);
      var response = await http.delete(uri, headers: head);

      if (response.statusCode < 299) {
        var data = {'error': false, 'data': jsonDecode(response.body)};
        return data;
      }
      var data = {'error': true, 'data': "xatolik"};
      return data;
    } catch (e) {
      var data = {'error': true, 'data': "Server bilan aloqa yo'q"};
      return data;
    }
  }
}
