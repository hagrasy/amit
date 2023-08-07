import 'package:flutter/material.dart';
import '../widgets/default_form_field.dart';
import '../widgets/default_pass_text.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
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
                                "Sign Up",
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
                                controller: controller,
                                keyboardType: TextInputType.name,
                                onChanged: (value) {},
                                labelText: "Name",
                                hintText: "Enter your user name",
                                suffixIcon: const Icon(Icons.person, size: 20),
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
                              DefaultPassText(
                                controller: passwordController,
                                hintText: "Please enter your password",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              DefaultPassText(
                                controller: passwordController,
                                labelText: "Confirm Password",
                                hintText: "Confirm your password",
                              ),
                            ]))))));
  }
}
