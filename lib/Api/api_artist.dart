import 'dart:convert';

import 'package:api_sigi/modals/modal_album.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect {
  var baseUrl = "https://dummyjson.com/";

  Future<Quote> fetchData() async {
    final response = await httpClient.get("quotes");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return Quote.fromJson(response.body);
    }
  }
}
