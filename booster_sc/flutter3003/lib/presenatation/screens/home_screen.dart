import 'package:flutter/material.dart';
import 'package:flutter3003/presenatation/screens/registration_page.dart';
import 'package:flutter3003/presenatation/widgets/MyElevatedButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8c4ae2),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 110,
                width: 320,
                child: Column(
                  children: [
                    Text(
                      'Добро пожаловать!',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Приветсвуем вас на плащадке аренды\n строительной техники',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              MyElevatedButton(
                width: double.infinity,
                height: 60,
                title: 'Регестрация',
                fontSize: 18,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationPage()),
                  );
                },
                backgroundColor: const Color(0xff8c4ae2),
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'У меня уже есть аккаунт',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MyElevatedButton(
                  width: 168,
                  height: 34,
                  title: 'Магазин автозапчастей',
                  fontSize: 12,
                  onPressed: () {},
                  backgroundColor: const Color(0xff8c4ae2),
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
