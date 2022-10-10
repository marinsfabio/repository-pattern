import 'package:flutter/material.dart';
import 'package:project01/components/login/custom_login_buttom.dart';
import 'package:project01/controllers/login_controller.dart';
import 'package:project01/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.3,
            ),
            CustomTextfield(
              onChanged: _controller.setUser,
              label: 'login',
            ),
            CustomTextfield(
              onChanged: _controller.setPass,
              label: 'senha',
              obscureText: true,
            ),
            const SizedBox(height: 15),
            CustomLoginButtom(
              loginController: _controller,
            )
          ],
        ),
      ),
    );
  }
}
