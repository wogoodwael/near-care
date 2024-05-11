import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:near_care/core/utils/constant.dart';
import 'package:near_care/presentation/screens/Examinations_%20Requests.dart';
import 'package:near_care/presentation/screens/Forget_Password.dart';
import 'package:near_care/presentation/widgets/header_logo.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 30.0,
          right: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderLogo(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: const Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: kPraimary),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: kgrey,
                        borderRadius: BorderRadius.circular(16.0)),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: kBlue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: const Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: kPraimary),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: kgrey,
                        borderRadius: BorderRadius.circular(16.0)),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: kBlue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ExaminationsRequests()));
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: kPraimary),
                      child: const Center(
                          child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Forget Password',
                        style: TextStyle(color: kBlack, fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
