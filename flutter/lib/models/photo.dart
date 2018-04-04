import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Photo {
  final int id;
  final String imagePath;

  Photo.fromJson(Map jsonMap)
      : id = jsonMap['id'],
        imagePath = jsonMap['url'];
}

Future<Stream<Photo>> getPhotos() async {
  var url = 'https://jsonplaceholder.typicode.com/photos';
  var client = new http.Client();
  var streamedResponse =
      await client.send(new http.Request('get', Uri.parse(url)));

  return streamedResponse.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .expand((jsonBody) => (jsonBody as List))
      .map((jsonPhoto) => new Photo.fromJson(jsonPhoto));
}
