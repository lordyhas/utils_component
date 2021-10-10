import 'dart:typed_data';

import 'package:flutter/material.dart';
enum _ImageType{asset, network, memory }
class IconImage extends StatelessWidget {
  final double? size;
  final String imagePath;
  final Uint8List? byte;
  final _ImageType type;

  const IconImage._({
    this.imagePath = "",
    this.byte,
    required this.type,
    this.size = 32,
    Key? key,
  }) : super(key: key);


  const IconImage.asset(final String imagePath,{double? size,}) : this._(
    imagePath:imagePath,
    type: _ImageType.asset,
    size:size,
  );

  const IconImage.network(final String link,{double? size,}) : this._(
    imagePath: link,
    type: _ImageType.network,
    size:size,
  );

  const IconImage.memory(final Uint8List? byte,{double? size,}) : this._(
    byte:byte,
    type: _ImageType.memory,
    size:size,
  );


  @override
  Widget build(BuildContext context) {
    switch(type){
      case _ImageType.asset:
        return Image.asset(imagePath, height: size, width: size, key: key,);

      case _ImageType.network:
        return Image.network(imagePath, height: size, width: size, key: key,);

      case _ImageType.memory:
        return Image.memory(byte!, height: size, width: size, key: key,);

    }
  }
}

