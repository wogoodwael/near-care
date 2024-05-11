import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
    required this.height, required this.iconSize, required this.hintSize,
  });
  final double height;
  final double iconSize;
  final double hintSize;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: .93 * MediaQuery.sizeOf(context).width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xfff5f5f5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: iconSize,
              ),
              hintText: 'Search By Name',
              hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontSize: hintSize,
                  fontWeight: FontWeight.normal),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
