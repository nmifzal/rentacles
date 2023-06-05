import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentacles/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerPhoneNumber = TextEditingController();

// methods
  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> signInWithPhoneNumber() async {
    try {
      await Auth()
          .loginWithPhoneNumber(phoneNumber: _controllerPhoneNumber.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

// widgets
  Widget _entryField(
    String title,
    TextEditingController controller,
    Icon icon,
  ) {
    return TextField(
      enableInteractiveSelection: true,
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
        prefixIcon: icon,
        border: const OutlineInputBorder(),
      ),
    );
  }

  Widget spaceX(double width) {
    return SizedBox(width: width);
  }

  Widget spaceY(double height) {
    return SizedBox(height: height);
  }

  Widget _errorMessage() {
    return Text(
      errorMessage == '' ? '' : 'Humm? $errorMessage',
      style: TextStyle(color: Colors.red.shade400),
    );
  }

  Widget _submitButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: const ButtonStyle(splashFactory: InkSparkle.splashFactory),
          onPressed: isLogin
              ? signInWithEmailAndPassword
              : createUserWithEmailAndPassword,
          child: Text(isLogin ? "Login" : "Submit")),
    );
  }

  Widget _loginOrRegisterButton() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
          onPressed: () {
            setState(() {
              isLogin = !isLogin;
            });
          },
          child: Text(isLogin ? "Register instead" : "Login instead")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              spaceY(45),
              _entryField(
                  'email', _controllerEmail, const Icon(Icons.email_outlined)),
              spaceY(25),
              _entryField(
                  'password', _controllerPassword, const Icon(Icons.password)),
              spaceY(25),
              _errorMessage(),
              spaceY(15),
              _submitButton(),
              spaceY(15),
              _loginOrRegisterButton(),
              // spaceY(15),
              // _phoneNumberButton()
            ],
          ),
        ),
      ),
    );
  }
}
