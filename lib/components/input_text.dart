import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final double width;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Icon icon;
  final String labelText;
  final String hintText;

  InputText(
    this.labelText,
    this.hintText,
    this.controller,
      {
      this.width,
      this.padding,
      this.icon,
      this.margin,
      }
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width != null ? width : null,
      margin: margin != null ? margin : null,
      padding: padding != null ? padding : null,
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 16),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
          prefixIcon: icon != null ? icon : null,
          labelText: labelText,
          hintStyle: TextStyle(color: Colors.green),
          hintText: hintText,
        ),
      ),
    );
  }
}
