import 'package:flutter/material.dart';

import '../utils/util.dart';

class ImageFullScreen extends StatelessWidget {
  final String image;

  const ImageFullScreen({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.darkColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Style.darkColor,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back),
          )),
      body: Center(
        child: Image.network(
          image,
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
      ),
    );
  }
}
