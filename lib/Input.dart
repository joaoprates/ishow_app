import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hint;
  final bool obscure;
  final Icon icon;

  FocusNode myFocusNode = FocusNode();

  Input(
      {@required this.hint,
      this.obscure = false,
      this.icon = const Icon(Icons.person)});

  @override
  Widget build(BuildContext context) {



    return Container(
      padding: EdgeInsets.all(8),
      child:
      TextField(

        focusNode: myFocusNode,
        obscureText: this.obscure,
        decoration: InputDecoration(
            icon: this.icon,
            border: InputBorder.none,
            hintText: this.hint,
            hintStyle: TextStyle(color: Colors.grey[600], fontSize: 18)),
      ),
    );
  }
}
