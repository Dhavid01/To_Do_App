import 'package:flutter/material.dart';
import 'package:to_do_list/home/home_view.dart';
import 'package:to_do_list/splash/component/app_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/2.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "😁",
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              const Text(
                "Manage your task",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              const Text(
                "very easily!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 470),
              Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeView())),
                      child: const AppButton()))
            ],
          ),
        ),
      ),
    );
  }
}
