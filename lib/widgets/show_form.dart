// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:unginformation/utility/my_constant.dart';

class ShowForm extends StatelessWidget {
  final String hint;
  final IconData iconData;
  final bool? obsecu;
  final Function(String) changeFunc;
  const ShowForm({
    Key? key,
    required this.hint,
    required this.iconData,
    this.obsecu,
    required this.changeFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: 200,
      height: 40,
      child: TextFormField(onChanged: changeFunc,
        obscureText: obsecu ?? false,
        decoration: InputDecoration(
          suffixIcon: Icon(
            iconData,
            color: MyConstant.dark,
          ),
          filled: true,
          contentPadding:
              const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
