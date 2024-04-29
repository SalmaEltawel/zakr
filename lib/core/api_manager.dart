import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:zakr/models/radio_model.dart';

class ApiManager {
  static Future<List<Radios>> getData({String language = "ar"}) async {
    try {
      Uri url =
          Uri.parse("https://mp3quran.net/api/v3/radios?language=$language");
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      RadioModel radioModel = RadioModel.fromJson(json);
      return radioModel.radios??[] ;
    } catch (e) {
      throw (e);
    }
  }
}
