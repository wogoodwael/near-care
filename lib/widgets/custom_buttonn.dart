
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
   late final double title;
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
              width: MediaQuery.of(context).size.width* .8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Color(0xff0d47a1)),
              child: const Center(
                child: Text(
                  'See More',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfff5f5f5)),
                ),
              ),
            );
  }
}