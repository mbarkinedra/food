import 'package:flutter/material.dart';



class CustomInput extends StatelessWidget {
  final String? label;
  final String hint;
  TextEditingController? controller;
  final Function? validator;
  bool des;

  CustomInput(
      { this.label,
        this.hint = "",
        this.controller,
         this.validator,
        this.des = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 8,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.all(8),

            child: Center(
              child: TextFormField(
                controller: controller,
                enabled: des,
                validator: (v) {
                  return validator!(v);
                },
                decoration: InputDecoration(
                  hintText: hint,
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.yellow,fontSize: 15),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.yellow)),
                  // enabledBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  //     borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
