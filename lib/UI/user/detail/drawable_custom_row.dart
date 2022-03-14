import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRow extends StatefulWidget {
  final Function onPressed;
  final String label;
  final String asset;
  final Color textColors;
  final int size;

  const CustomRow({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.asset,
    required this.textColors,
    required this.size,
  }) : super(key: key);

  @override
  _CustomRowState createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
        setState(() {
          tapped = true;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 16, left: 10),
        child: Row(
          children: [
            SvgPicture.asset(
              widget.asset,
              width: MediaQuery.of(context).size.width * 0.03,
              height: MediaQuery.of(context).size.width * 0.03,
              // color: widget.textColors,
            ),
            SizedBox(width: 10),
            Container(
              // width: screenWidth(context, dividedBy: 3.5),
              child: AutoSizeText.rich(
                TextSpan(
                  text: widget.label,
                  style: TextStyle(
                      //fontSize: 11,
                      color: widget.textColors,
                      fontFamily: "SFProMedium",
                      fontWeight: FontWeight.w600),
                ),
                minFontSize: 0,
                stepGranularity: 0.1,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
