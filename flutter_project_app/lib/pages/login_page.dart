import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_app/controllers/auth_controller.dart';
import 'package:flutter_project_app/pages/reset_password.dart';
import 'package:flutter_project_app/pages/singup_page.dart';
import 'package:get/get.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    AuthController.instance.login(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    Navigator.pop(context);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  children: [
                    Container(
                      width: w,
                      height: h * 0.3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/loginimg.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Bienvenido",
                            style: TextStyle(
                              fontSize: 56,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Inicia sesión con tu cuenta",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[500]),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Correo electrónico",
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Colors.deepPurple,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                              ],
                            ),
                            child: TextField(
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: "Contraseña",
                                prefixIcon: const Icon(
                                  Icons.password,
                                  color: Colors.deepPurple,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const ResetPassword();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "¿Olvidaste tu contraseña?",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[500]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    GestureDetector(
                      onTap: () {
                        login();
                      },
                      child: Container(
                        width: w * 0.5,
                        height: h * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/loginbtn.png"),
                              fit: BoxFit.cover),
                        ),
                        child: Center(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "Iniciar sesión",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.login,
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: w * 0.1,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "¿Aún no tienes una cuenta?",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: " Crear cuenta",
                            style: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const SignUpPage()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}