import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DialogAhihi {
  BuildContext context;
  Widget _willPop;
  double _opacity;

  DialogAhihi(BuildContext _context, Widget willPop, double opacity) {
    this._willPop = willPop;
    this.context = _context;
    this._opacity = opacity;
  }

  void hideLoading() {
    Navigator.pop(context);
  }
  Future<bool> _onWillPop() {
    return _willPop ?? false;
  }
  void showLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Stack(
          children: [
            new Opacity(
              opacity: _opacity,
            ),
            new Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }
}
