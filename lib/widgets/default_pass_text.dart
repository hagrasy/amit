import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultPassText extends StatefulWidget {
  TextEditingController controller; //1
  String? Function(String?)? validation; //2
  TextInputType? keyboardType; //3
  void Function(String)? onChanged; //4
  String? labelText;
  Widget? suffixIcon; //7

  DefaultPassText(
      {super.key,
      required this.controller,
      this.keyboardType,
      this.labelText,
      this.onChanged,
      this.suffixIcon,
      this.validation,
      required String hintText});

  @override
  State<DefaultPassText> createState() => _DefaultPassTextState();
}

class _DefaultPassTextState extends State<DefaultPassText> {
  //5
  String? hintText;
  bool isPassword = true;

  void changeEye() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        keyboardType: TextInputType.number,
        onChanged: (value) {},
        controller: widget.controller,
        obscureText: isPassword,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          labelText: "Password",
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          hintText: "Enter your password",
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              changeEye();
            },
            icon: isPassword
                ? const Icon(
                    Icons.remove_red_eye_sharp,
                    size: 20,
                  )
                : const Icon(Icons.remove_red_eye_outlined, size: 20),
          ),
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
