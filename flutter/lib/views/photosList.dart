import 'package:flutter/material.dart';

import '../models/photo.dart' as photo;
import '../views/photoItem.dart';

class PhotosList extends StatefulWidget {
  PhotosList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PhotosListState createState() => new _PhotosListState();
}

class _PhotosListState extends State<PhotosList> {
  var photoList = <photo.Photo>[];
  bool isFetchingNextPage = false;
  ScrollController _scrollController = new ScrollController();
 
  @override
  initState() {
    super.initState();
    _getPhotos();
  }

  _getPhotos() async {
    var stream = await photo.getPhotos();
    stream.listen((photo) => setState(() => photoList.add(photo)));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemExtent: 200.0,
        itemCount: photoList.length,
        itemBuilder: (context, index) {
          final photo = photoList[index];
          return new PhotoWidget(photo);
        },
        controller: _scrollController,
      ),
    );
  }
}
