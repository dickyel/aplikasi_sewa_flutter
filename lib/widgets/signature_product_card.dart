import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:signature/signature.dart';

class SignatureProductCard extends StatefulWidget {
  @override
  State<SignatureProductCard> createState() => _SignatureProductCardState();
}

class _SignatureProductCardState extends State<SignatureProductCard> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 1,
    penColor: blackColor,
    exportBackgroundColor: whiteColor2,
    // ignore: avoid_print
    onDrawStart: () => print('onDrawStart called!'),
    // ignore: avoid_print
    onDrawEnd: () => print('onDrawEnd called!'),
  );
  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    _controller.addListener(() => print('Value changed'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: greyColor3, width: 1),
          ),
          child: Signature(
            controller: _controller,
            height: 200,
            backgroundColor: blueColor3,
          ),
        ),
        //OK AND CLEAR BUTTONS
        Container(
          decoration: BoxDecoration(color: blackColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              //SHOW EXPORTED IMAGE IN NEW ROUTE
              IconButton(
                icon: const Icon(Icons.check),
                color: whiteColor3,
                onPressed: () async {
                  if (_controller.isNotEmpty) {
                    final Uint8List? data = await _controller.toPngBytes();
                    if (data != null) {
                      await Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            return Scaffold(
                              appBar: AppBar(),
                              body: Center(
                                child: Container(
                                  color: Colors.grey[300],
                                  child: Image.memory(data),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.undo),
                color: whiteColor3,
                onPressed: () {
                  setState(() => _controller.undo());
                },
              ),
              IconButton(
                icon: const Icon(Icons.redo),
                color: whiteColor3,
                onPressed: () {
                  setState(() => _controller.redo());
                },
              ),
              //CLEAR CANVAS
              IconButton(
                icon: const Icon(Icons.clear),
                color: whiteColor3,
                onPressed: () {
                  setState(() => _controller.clear());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
