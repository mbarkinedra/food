import 'package:flutter/material.dart';


class CustomInputLogin extends StatelessWidget {
  //final String label;
  final String hint;

  // final TextEditingController textEditingController;
  final bool obscureText;
  final IconButton? suffixIcon;
  final IconData? icon;

  // final Function validator;
  final Color color;
  double? width;
  double? hight;

  CustomInputLogin(
      {this.color = Colors.black,
        this.width,
        this.hight,
        this.icon,
        this.hint = "",
        //  required this.textEditingController,
        //   required this.validator,
        this.obscureText = false,
        this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //width: width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                //   onChanged: onchange,
                // maxLines: maxLines,
                obscureText: obscureText,
                //   validator: validator,
                //  controller: textEditingController,
                decoration: InputDecoration(
                    icon: icon != null ? Icon(icon) : null,
                    errorMaxLines: 3,
                    border: InputBorder.none,
                    hintText: hint
                  //  suffixIcon: suffixIcon,
                ),

                // maxLength: maxLength,
              ),
            ),
            decoration: BoxDecoration(
              color: color,
              border: Border.all(width: 2,color: Colors.orangeAccent),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  offset: Offset(0, 2.0),
                  //blurRadius: 6.0,
                ),
              ],
            ),
            height: hight,
            width: width,
          ),
        ],
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   label,
          //   style: TextStyle(
          //     fontSize: 16,
          //     color: Colors.white,
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          Container(
            //height: 50,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white)),
            child: Center(
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                // validator: (v) {
                //   return validator(v);
                // },
                // controller: textEditingController,
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: hint,
                  icon: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  suffixIcon: suffixIcon,
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide:
                      BorderSide(color: Colors.grey.withOpacity(.0))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      BorderSide(color: Colors.grey.withOpacity(.0))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}