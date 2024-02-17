import 'package:flutter/material.dart';
import 'package:resturant/consts/consts.dart';

Widget customTextField({String? title, obsecureText, controller, icon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      5.heightBox,
      TextFormField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          labelText: title,
          isDense: true,
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), // Set the border radius
            borderSide: BorderSide(
              color: Color.fromARGB(
                  255, 216, 214, 214), // Set the border color to light grey
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          fillColor: whiteColor,
          filled: true,
          prefixIcon: icon,
          suffixIcon: const Icon(
            Icons.remove_red_eye_outlined,
            color: redColor,
          ),
          contentPadding: EdgeInsets.all(15),
          // focusedBorder: const OutlineInputBorder(
          //     borderSide: BorderSide(color: redColor))
        ),
      ).box.rounded.make(),
    ],
  );
}
