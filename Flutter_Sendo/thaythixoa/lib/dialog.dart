library dialog_loading;
import 'package:flutter/material.dart';

class DialogLoading extends StatelessWidget {
  BuildContext context;

  DialogLoading(BuildContext _context) {
    this.context = _context;
  }

  void hideLoading() {
    Navigator.pop(context);
  }
  Future<bool> _onWillPop() {
    return Container() ?? false;
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
              opacity: 0.3,
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
