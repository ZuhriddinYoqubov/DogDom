import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MySearchTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final TextInputType? textInputType;
  final String? labelText;
  late bool isVisible;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? Function(String?)? validator;
  

  MySearchTextField({
    required this.controller,
    this.hintText,
    this.labelText,
    this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //isVisible = Provider.of<TextFieldProvider>(context).isVisible;
    SizeConfig().init(context);
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      onChanged: (value) {
        // Provider.of<TextFieldProvider>(context, listen: false).value =
        //     value;
        // context.read<TextFieldProvider>().changValue(value);
      },
      decoration: InputDecoration(
        suffixIcon:  SvgPicture.asset(
          MyIcons.voiceTwo,
          color: blackConst.withOpacity(0.55),
          width: getUniqueW(24.0),
          fit: BoxFit.none,
        ),
        prefixIcon: SvgPicture.asset(
          MyIcons.searchSmall,
          width: getUniqueW(24.0),
          fit: BoxFit.none,
          color: blackConst.withOpacity(0.25),
        ),
        hintText: 'Send the sample',
        hintStyle: TextStyle(color: blackConst.withOpacity(0.25) ),
        //labelText: labelText,
        //alignLabelWithHint: true,

        filled: true,
        fillColor: greyConst,
        
        contentPadding: EdgeInsets.symmetric(vertical: getUniqueH(6.0), horizontal: getUniqueW(12.0)),
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
      style: TextStyle(color: blackConst, fontSize: getUniqueW(17.0), fontWeight: FontWeight.w500),
    );
  }
}
