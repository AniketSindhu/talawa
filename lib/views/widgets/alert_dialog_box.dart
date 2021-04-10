import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class AlertBox extends StatefulWidget {
  final String message;
  final Function function;
  AlertBox({this.message,this.function});
  @override
  _AlertBoxState createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirmation").tr(),
      content: Text(
          widget.message),
      actions: [
        ElevatedButton(
          child: Text("Close").tr(),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text("Yes").tr(),
          onPressed: () async {
            print('here');
            widget.function();
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
