import 'package:flutter/widgets.dart';

class CustomImageCache extends WidgetsFlutterBinding {
  @override
  ImageCache createImageCache() {
    this.imageCache.maximumSize = 10;
    return super.createImageCache();
  }
}
