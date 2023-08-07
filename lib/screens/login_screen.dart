import 'package:flutter/material.dart';
import 'package:note_app/screens/onboarding.dart';
import 'package:note_app/screens/register.dart';
import 'package:note_app/widgets/default_pass_text.dart';
import '../widgets/default_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = TextEditingController();

  final passwordController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DefaultFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {},
                  labelText: "Email",
                  hintText: "Enter your email",
                  suffixIcon: const Icon(
                    Icons.email_outlined,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DefaultPassText(
                  controller: passwordController,
                  labelText: "Password",
                  hintText: "Enter your password",
                ),
                const SizedBox(
                  height: 10,
                ),
                DefaultFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {},
                  labelText: "Mobile",
                  hintText: "Enter a phone number",
                  suffixIcon: const Icon(Icons.phone, size: 20),
                  validation: (value) {
                    if (value!.isEmpty) {
                      return "please enter a correct phone number";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoarding()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "don't have account?, ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: const Text(
                          "create a new account.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
