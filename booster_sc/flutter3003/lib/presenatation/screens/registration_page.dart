import 'package:flutter/material.dart';
import 'package:flutter3003/presenatation/widgets/MyElevatedButton.dart';
import 'package:flutter3003/presenatation/widgets/MyTextField.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8c4ae2),
      appBar: AppBar(
        backgroundColor: const Color(0xff8c4ae2),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Регистрация',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const MyTextField(
                labelText: 'Фамилия',
              ),
              const SizedBox(
                height: 15,
              ),
              const MyTextField(
                labelText: 'Имя',
              ),
              const SizedBox(
                height: 15,
              ),
              const MyTextField(
                labelText: 'Номер телефона',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              const MyTextField(
                obscureText: true,
                labelText: 'Пароль',
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyElevatedButton(
                title: 'Зарегстрироватся',
                fontSize: 18,
                width: double.infinity,
                height: 60,
                onPressed: () {},
                backgroundColor: Colors.white.withOpacity(0.7),
                textColor: const Color(0xff8c4ae2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
