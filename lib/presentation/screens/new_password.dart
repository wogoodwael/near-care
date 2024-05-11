import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:near_care/core/utils/constant.dart';
import 'package:near_care/presentation/widgets/header_logo.dart';

class NewPasswordScreen extends StatefulWidget {
  NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  Color textColor = Colors.black;
  // اللون الافتراضي للنص
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderLogo(),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Write your new password',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: kPraimary),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: kgrey,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: kPraimary),
                      child: const Center(
                          child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      )),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      'At least 8 characters',
                      style: TextStyle(
                        color: kBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Must have a :',
                      style: TextStyle(color: kBlack),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Number ( 0-9 )',
                      style: TextStyle(color: kBlack),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Lowercase letter (a-z)',
                      style: TextStyle(color: kBlack),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Uppercase letter (A-Z)',
                      style: TextStyle(color: kBlack),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Special Character (ex: &,#,\$)',
                      style: TextStyle(color: kBlack),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
