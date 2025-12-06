import 'package:flutter/material.dart';
import 'package:suku_mobile/ui/passwordField.dart';

import '../../ui/customTextForm.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          "Help & Support",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Logo
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: Image.asset("assets/images/logo.png"),
                ),

                SizedBox(height: 20),

                // Title
                Text(
                  "Parent Portal Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),

                SizedBox(height: 5),

                Text(
                  "Welcome back! Please sign in to your account.",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 30),

                // Email
                CustomTextFormField(
                  controller: emailController,
                  label: "Email Address",
                  hintText: "Enter your email address",
                    validator: (v) {
                      if (v == null || v.trim().isEmpty) return "Email is required";
                      return null;
                    }

                ),

                SizedBox(height: 20),

                // Password
                PasswordFormField(
                  controller: passwordController,
                  label: "Password",
                  hintText: "Enter your password",
                  validator: (v) => v!.isEmpty ? "Password is required" : null,
                ),

                SizedBox(height: 10),

                // Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue[700]),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Login button
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // login
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Face ID
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.face, color: Colors.black54),
                        SizedBox(width: 10),
                        Text("Use Face ID", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:suku_mobile/ui/passwordField.dart';
//
// import '../../ui/customTextForm.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   Center(
//                     child: SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.2,
//                       child: Image.asset("assets/images/logo.png"),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Column(
//                     children: [
//                       Text("Parent Portal Login", style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 30,
//                       ),textAlign: TextAlign.center,),
//                       SizedBox(height: 5),
//                       Text("Welcome back! Please sign in to your account.",
//                       style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w600),),
//                       SizedBox(height: 30),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           CustomTextFormField(controller: emailController, label: "Email Address", hintText: "Enter your email address"),
//                           SizedBox(height: 20),
//                           PasswordFormField(controller: passwordController, label: "Password", hintText: "Enter your password"),
//                           SizedBox(height: 20),
//                           Align(
//                             alignment: Alignment.centerRight,
//                             child: Text(
//                               "Forgot Password?",
//                               style: TextStyle(
//                                 color: Colors.blue[700],
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 30),
//                           SizedBox(
//                             width: double.infinity,
//                             height: 55,
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.blue[800],
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 elevation: 2,
//                               ),
//                               child: const Text(
//                                 "Log In",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 20),
//                           SizedBox(
//                             height: 55,
//                             width: double.infinity,
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.grey[200],
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 // elevation: 2,
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(Icons.face, color: Colors.black54),
//                                   SizedBox(width: 10),
//                                   Text(
//                                     "Use Face ID",
//                                     style: TextStyle(
//                                       color: Colors.black54,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 18,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 80),
//                           SizedBox(
//                             width: double.infinity,
//                             child: Text(
//                               "Help & Support",
//                               style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       // bottomSheet: Text(
//       //   "Help & Support",
//       //   style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
//       // ),
//     );
//   }
// }
