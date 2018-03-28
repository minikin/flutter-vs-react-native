import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Photo {
  final String id;
  final String imagePath;

  Photo.fromJson(Map jsonMap) :
    id = jsonMap['id'],
    imagePath = jsonMap['path'];
}

Future<Stream<Photo>>getPhotos() async {
  var url = '';
  var client =new http.Client();
  var streamedResponse = await client.send(new http.Request('get', Uri.parse(url)));

  return streamedResponse.stream
    .transform(UTF8.decoder)
    .transform(JSON.decoder)
    .expand((jsonBody) => (jsonBody as Map)['results'])
    .map((jsonPlace) => new Photo.fromJson(jsonPlace));
}