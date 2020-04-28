import 'package:flutter/material.dart';

import '../models/photo.dart' as photo;
import '../views/photoItem.dart';

class PhotosList extends StatefulWidget {
  PhotosList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PhotosListState createState() => _PhotosListState();
}

class _PhotosListState extends State<PhotosList> {
  final _photoList = <photo.Photo>[];
  bool isFetchingNextPage = false;
  final _scrollController = ScrollController();

  @override
  void initState() {
    _getPhotos();
    super.initState();
  }

  void _getPhotos() async {
    final stream = await photo.getPhotos();
    stream.listen((photo) => setState(() => _photoList.add(photo)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemExtent: 200,
        itemCount: _photoList.length,
        itemBuilder: (context, index) {
          final photo = _photoList[index];
          return PhotoWidget(photo);
        },
        controller: _scrollController,
      ),
    );
  }
}
