import 'package:flutter/material.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:credpaltest/utils/locator.dart';
import 'package:credpaltest/utils/progressBarManager/dialog_models.dart';
import 'package:credpaltest/utils/progressBarManager/dialog_service.dart';


class ProgressManager extends StatefulWidget {
  final Widget child;
   const ProgressManager( {required this.child});

  _ProgressManagerState createState() => _ProgressManagerState();
}

class _ProgressManagerState extends State<ProgressManager> {
  final ProgressService _progressService = locator<ProgressService>();

  @override
  void initState() {
    super.initState();
    _progressService.registerProgressListener(_showDialog);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
  Future getFuture() {
    return Future(() async {
      await Future.delayed(const Duration(seconds: 5));
      return 'Hello, Future Progress Dialog!';
    });
  }  void _showDialog(ProgressRequest request) async{

   await showDialog(
        context: context,
        builder: (context) =>
        FutureProgressDialog(getFuture()),
    );
    // ArsProgressDialog progressDialog = ArsProgressDialog(
    //     context,
    //     blur: 2,
    //     dismissable: false,
    //     backgroundColor: const Color(0x33000000),
    //     animationDuration: const Duration(milliseconds: 500));

    // pr.show();
    //progressDialog.show(); // show dialog
    //progressDialog.dismiss();
    print('show');

  }

}
