import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../../utils/utils.dart';
class ViewButton extends StatefulWidget {
  final Function onPressed;
  final String label;
  const ViewButton({Key? key, required this.onPressed, required this.label}) : super(key: key);

  @override
  _ViewButtonState createState() => _ViewButtonState();
}

class _ViewButtonState extends State<ViewButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context, dividedBy: 40),
            vertical: screenHeight(context, dividedBy: 200)),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Constants.colors[2],
                  Constants.colors[2],
                ]),
            color: Constants.colors[4],
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          widget.label,
          style: TextStyle(
              fontSize: 13,
              color: Constants.colors[3],
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
