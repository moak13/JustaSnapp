import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({
    Key key,
  }) : super(key: key);

  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage1, _storedImage2, _storedImage3;

  Future<void> _openCamera() async {
    final imageFile = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      if (_storedImage1 == null) {
        _storedImage1 = File(imageFile.path);
      } else if (_storedImage1 != null || _storedImage2 == null) {
        _storedImage2 = File(imageFile.path);
      }
      //  else {
      //   _storedImage3 = File(imageFile.path);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: _openCamera,
          child: Container(
            color: Color(0xFFC4C4C4),
            height: deviceSize.height * 0.15,
            width: double.infinity,
            child: Icon(Icons.photo_camera),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Add photos of your item. Supported format are .jpeg and .png',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ImageContainer(
              child: _storedImage1 != null
                  ? Image.file(
                      _storedImage1,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )
                  : Text(
                      'take a pic',
                      textAlign: TextAlign.center,
                    ),
            ),
            ImageContainer(
              child: (_storedImage2 != null && _storedImage1 != null)
                  ? Image.file(
                      _storedImage2,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )
                  : Text(
                      'take a pic',
                      textAlign: TextAlign.center,
                    ),
            ),
            // ImageContainer(
            //   child: (_storedImage1 != null && _storedImage2 != null&&_storedImage3==null)
            //       ? Image.file(_storedImage3)
            //       : Text(
            //           'take a pic',
            //           textAlign: TextAlign.center,
            //         ),
            // ),
          ],
        ),
      ],
    );
  }
}

class ImageContainer extends StatelessWidget {
  final Widget child;
  const ImageContainer({
    Key key,
    this.child,
    // @required File storedImage2,
    // @required File storedImage1,
  }) :
        // _storedImage2 = storedImage2,
        //       _storedImage1 = storedImage1,
        super(key: key);

  // final File _storedImage2;
  // final File _storedImage1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
            height: 100, width: 100, color: Color(0XFFC4C4C4), child: child),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: IconButton(
            onPressed: () {
              // delete Image
            },
            icon: Icon(
              Icons.delete,
              color: Theme.of(context).errorColor,
            ),
          ),
        ),
      ]),
    );
  }
}
