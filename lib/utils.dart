import 'package:flutter/cupertino.dart';

class Ts extends StatelessWidget {
  final String text;
  final double? textScaleFactor;

  const Ts({Key? key, required this.text, this.textScaleFactor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      text,
      textScaleFactor: textScaleFactor ?? 2,
    ));
  }
}
