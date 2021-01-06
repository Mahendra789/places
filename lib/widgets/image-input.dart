import 'dart:io';
import 'package:flutter/material.dart';

class Imageinput extends StatefulWidget {
  @override
  _ImageinputState createState() => _ImageinputState();
}

class _ImageinputState extends State<Imageinput> {
  File _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: _storedImage != null
              ? Image.file(
                  _storedImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Text(
                  'No Image Taken',
                  textAlign: TextAlign.center,
                ),
          alignment: Alignment.center,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: FlatButton.icon(
            icon: Icon(Icons.camera),
            label: Text('Add Picture'),
            textColor: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
