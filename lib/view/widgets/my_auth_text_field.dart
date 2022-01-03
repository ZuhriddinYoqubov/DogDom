import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyAuthTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final TextInputType textInputType;
  final String labelText;
  late bool? isVisible = false;
  Widget? suffixIcon;

  String? Function(String?)? validator;
  

  MyAuthTextField({
    required this.controller,
    required this.hintText,
    required this.textInputType,
    required this.labelText,
    this.suffixIcon,
    this.validator,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // if(textInputType == TextInputType.visiblePassword) 
    isVisible = Provider.of<AuthProvider>(context).isVisible;
    SizeConfig().init(context);
    return TextFormField(
      controller: controller,
      validator: _validator,
      keyboardType: textInputType,
      obscureText: (textInputType == TextInputType.visiblePassword && isVisible!) ? true : false,
      onChanged: (value) {
        // Provider.of<TextFieldProvider>(context, listen: false).value =
        //     value;
        // context.read<TextFieldProvider>().changValue(value);
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: whiteConst.withOpacity(0.4)),
        //labelText: labelText,
        //alignLabelWithHint: true,
        filled: true,
      
        fillColor: whiteConst.withOpacity(0.25),
        contentPadding: EdgeInsets.symmetric(vertical: getUniqueH(18.0), horizontal: getUniqueW(28.0)),
        border: UnderlineInputBorder(
          
          borderSide: const BorderSide(
            style: BorderStyle.none,
            width: 0.0,
          ),
          
          borderRadius: BorderRadius.circular(
            getUniqueW(30.0),
          ),
        ),
      ),
      style: TextStyle(color: whiteConst, fontSize: getUniqueW(17.0), fontWeight: FontWeight.w500),
    );
  }

  String? _validator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      return 'Please, Fill the field';
    } else if (fieldContent.length < 3) {
      return 'Minimum 3 characters';
    } 
    return null;
  }
}
