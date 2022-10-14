import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

mixin Loader<T extends StatefulWidget> on State<T> {
  var isOpem = false;

  void showLoader() {
    if (!isOpem) {
      isOpem = true;
      showDialog(
        context: context,
        builder: (_) {
          return LoadingAnimationWidget.threeArchedCircle(
              color: Colors.white, size: 60);
        },
      );
    }
  }

  void hideLoader() {
    if (isOpem) {
      isOpem = false;
      Navigator.of(context).pop();
    }
  }
}
