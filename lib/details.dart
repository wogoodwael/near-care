import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:near_care/widgets/Custom_Text_Field_Name.dart';
import 'package:near_care/widgets/custom_rx.dart';
import 'package:near_care/widgets/custom_search.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                const Text(
                  'Patient Details',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0d47a1)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                const Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff02196f3)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                const Text(
                  'Mohamed Ahmed Anwer',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff444444)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Gender',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff02196f3)),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .01),
                        const Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff444444)),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Age',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff02196f3)),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .01),
                        const Text(
                          '36 Years 6 months',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff444444)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                const Text(
                  'Medical Info',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0d47a1)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                const Text(
                  'allergies',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff02196f3)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                const Text(
                  'Gluten & Strawberries',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff444444)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                const Text(
                  'Diseases',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff02196f3)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                const Text(
                  'Sugar level 2',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff444444)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                const Text(
                  'Prescription',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0d47a1)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                const CustomSearch(
                  height: 40,
                  iconSize: 25,
                  hintSize: 15,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                const Text(
                  'Cant find ? add manually',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0d47a1)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                CustomTextFieldName(
                  width: MediaQuery.of(context).size.width * 0.4,
                  heighUnit: 35,
                  hightDose: 35,
                  heighName: 40,
                  repeatedHight: 40,
                  heighButton: 45,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                const CustomAddRX(
                  dmaxLines: 5,
                  sizeOfNames: 15,
                  valuSize: 15,
                  widthBetween: 15,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
