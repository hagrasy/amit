import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultFormField extends StatelessWidget {
  TextEditingController controller; //1
  String? Function(String?)? validation; //2
  TextInputType? keyboardType; //3
  void Function(String)? onChanged; //4
  String? labelText; //5
  String? hintText; //6
  Widget? suffixIcon; //7

  DefaultFormField(
      {super.key,
      required this.controller, //1
      this.validation, //2
      this.keyboardType, //3
      this.onChanged, //4
      this.labelText, //5
      this.hintText, //6
      this.suffixIcon //7
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        controller: controller,
        validator: validation,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          labelText: labelText,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: suffixIcon,
          //
          //
          //
          //const Icon(
          //   Icons.email_outlined,
          //   size: 20,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(6)),
        ),
      ),
    );
  }
}
