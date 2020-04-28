import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

final _client = http.Client();

class Photo {
  final int id;
  final String imagePath;

  Photo.fromJson(Map<dynamic, dynamic> jsonMap)
      : id = jsonMap['id'],
        imagePath = jsonMap['url'];
}

Future<Stream<Photo>> getPhotos() async {
  final url = 'https://jsonplaceholder.typicode.com/photos';

  final streamedResponse =
      await _client.send(http.Request('get', Uri.parse(url)));

  return streamedResponse.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .expand((jsonBody) => jsonBody as List)
      .map((jsonPhoto) => Photo.fromJson(jsonPhoto));
}
