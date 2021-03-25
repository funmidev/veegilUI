import 'package:flutter/material.dart';
import 'package:veegil_test/utils/constants.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final String label;

  CustomField({@required this.hintText, @required this.iconData, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: TextField(
        style: TextStyle(
          fontSize: 14,
          color: kGreyColor,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: kGreyColor,
            fontWeight: FontWeight.bold,
          ),
          labelText: label,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              iconData,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}



class CustomPasswordField extends StatefulWidget {
  final String hintText;
  final IconData iconData;
  final String label;

  CustomPasswordField({@required this.hintText, @required this.iconData, this.label});

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: TextField(
        style: TextStyle(
          fontSize: 14,
          color: kGreyColor,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: kGreyColor,
            fontWeight: FontWeight.bold,
          ),
          labelText: widget.label,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              widget.iconData,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

