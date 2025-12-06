import 'package:flutter/material.dart';
import 'package:suku_mobile/screens/onboardingScreens/loginScreen.dart';
import 'package:suku_mobile/ui/passwordField.dart';

import '../../ui/customTextForm.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController studentIDNumberController =
      TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    studentIDNumberController.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black54,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.school, color: Colors.blue[700]),
                            SizedBox(width: 10),
                            Text(
                              "School Portal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Opacity(
                        opacity: 0,
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Create Your Parent\nPortal Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10),
                  // Text("Parent's Full Name"),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: fullNameController,
                    label: "Parent's Full Name",
                    hintText: 'Kube',
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Full name is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    controller: emailController,
                    label: 'Email Address',
                    hintText: 'jane@email.com',
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Email is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  PasswordFormField(
                    controller: passwordController,
                    label: "Password",
                    hintText: "Enter your password",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  PasswordFormField(
                    controller: confirmPasswordController,
                    label: "Confirm Password",
                    hintText: "Re-enter your password",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please confirm your password";
                      }
                      if (value != passwordController.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    controller: studentIDNumberController,
                    label: "Student's ID Number",
                    hintText: 'e.g., 123456',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Student ID is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 5),
                  Text(
                    "You can find this on your student's report card or\nschool documents.",
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // create account
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800],
                      ),
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  // SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(color: Colors.blue[800]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
