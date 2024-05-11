import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFieldName extends StatelessWidget {
 

  const CustomTextFieldName({
    super.key,
    required this.width, required this.heighUnit, required this.hightDose, required this.heighName, required this.repeatedHight, required this.heighButton,
  });
  final double width;
 final double  heighUnit;
 final double  heighButton;
  
  final double hightDose;
  
  final double heighName;
  final double repeatedHight;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Name*',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xff0d47a1)),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            width: .85 * MediaQuery.sizeOf(context).width,
            height: heighName,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffe3f2fd),
                hintText: 'First name',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.grey[500]),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .02),
        //Row Unit and Dose in Columns 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Unit *',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0d47a1)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: heighUnit,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xffe3f2fd),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dose *',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0d47a1)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: hightDose,
                    width: width,
                    decoration: BoxDecoration(
                        color: Color(0xffe3f2fd),
                        borderRadius: BorderRadius.circular(5)),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .03),
        // Column Repeat Time*
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Repeat Time*',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0d47a1)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            Container(
              height: repeatedHight,
              width: .86 * MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: Color(0xffe3f2fd),
                  borderRadius: BorderRadius.circular(5)),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: '1',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Container(
              height: heighButton,
              width: .86 * MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Color(0xff0d47a1)),
              child: const Center(
                child: Text(
                  'Add to prescription',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfff5f5f5)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
