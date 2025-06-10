// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:todo/core/helpers/app_routes.dart';
// import 'package:todo/features/auth/data/services/auth_services.dart';

// class RegisterBody extends StatefulWidget {
//   const RegisterBody({super.key});

//   @override
//   State<RegisterBody> createState() => _RegisterBodyState();
// }

// class _RegisterBodyState extends State<RegisterBody>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;
//   late Animation<Offset> _slideAnimation;

//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1000),
//     );

//     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
//     );

//     _slideAnimation = Tween<Offset>(
//       begin: const Offset(0, 0.5),
//       end: Offset.zero,
//     ).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
//     );

//     _animationController.forward();
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 40),
//                 FadeTransition(
//                   opacity: _fadeAnimation,
//                   child: const Text(
//                     'Create Account',
//                     style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 FadeTransition(
//                   opacity: _fadeAnimation,
//                   child: const Text(
//                     'Sign up to get started',
//                     style: TextStyle(fontSize: 16, color: Colors.black54),
//                   ),
//                 ),
//                 const SizedBox(height: 40),
//                 SlideTransition(
//                   position: _slideAnimation,
//                   child: FadeTransition(
//                     opacity: _fadeAnimation,
//                     child: TextField(
//                       controller: _nameController,
//                       decoration: InputDecoration(
//                         hintText: 'Full Name',
//                         prefixIcon: const Icon(Icons.person_outline),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: Colors.grey[100],
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 SlideTransition(
//                   position: _slideAnimation,
//                   child: FadeTransition(
//                     opacity: _fadeAnimation,
//                     child: TextField(
//                       controller: _emailController,
//                       decoration: InputDecoration(
//                         hintText: 'Email',
//                         prefixIcon: const Icon(Icons.email_outlined),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: Colors.grey[100],
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 SlideTransition(
//                   position: _slideAnimation,
//                   child: FadeTransition(
//                     opacity: _fadeAnimation,
//                     child: TextField(
//                       controller: _passwordController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         hintText: 'Password',
//                         prefixIcon: const Icon(Icons.lock_outline),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: Colors.grey[100],
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 SlideTransition(
//                   position: _slideAnimation,
//                   child: FadeTransition(
//                     opacity: _fadeAnimation,
//                     child: TextField(
//                       controller: _confirmPasswordController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         hintText: 'Confirm Password',
//                         prefixIcon: const Icon(Icons.lock_outline),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: Colors.grey[100],
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//                 SlideTransition(
//                   position: _slideAnimation,
//                   child: FadeTransition(
//                     opacity: _fadeAnimation,
//                     child: SizedBox(
//                       width: double.infinity,
//                       height: 50,
//                       child: ElevatedButton(
//                         onPressed: () async {
//                           final name = _nameController.text.trim();
//                           final email = _emailController.text.trim();
//                           final password = _passwordController.text;
//                           final confirmPassword =
//                               _confirmPasswordController.text;

//                           // Validate inputs
//                           if (name.isEmpty ||
//                               email.isEmpty ||
//                               password.isEmpty ||
//                               confirmPassword.isEmpty) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('Please fill in all fields'),
//                               ),
//                             );
//                             return;
//                           }

//                           if (password != confirmPassword) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('Passwords do not match'),
//                               ),
//                             );
//                             return;
//                           }

//                           if (password.length < 6) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text(
//                                   'Password must be at least 6 characters',
//                                 ),
//                               ),
//                             );
//                             return;
//                           }

//                           try {
//                             final authService = AuthService();
//                             final user = await authService.signUp(
//                               email,
//                               password,
//                             );

//                             if (user != null) {
//                               // Optional: you could store name to Firestore here if you want
//                               context.go(
//                                 AppRoutes.home,
//                               ); // Navigate to home on success
//                             } else {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text('Registration failed'),
//                                 ),
//                               );
//                             }
//                           } catch (e) {
//                             final errorMessage =
//                                 e is String ? e : 'Unexpected error occurred';
//                             print(
//                               'Registration error: $e (${e.runtimeType})',
//                             ); // for debugging
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text(errorMessage)),
//                             );
//                           }
//                         },

//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blue,
//                           foregroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           elevation: 0,
//                         ),
//                         child: const Text(
//                           'Sign Up',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 SlideTransition(
//                   position: _slideAnimation,
//                   child: FadeTransition(
//                     opacity: _fadeAnimation,
//                     child: Center(
//                       child: TextButton(
//                         onPressed: () {
//                           context.go(AppRoutes.login);
//                         },
//                         child: const Text(
//                           'Already have an account? Sign In',
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
