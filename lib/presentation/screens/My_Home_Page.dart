import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:near_care/presentation/widgets/Custom_Text_Field_Name.dart';
import 'package:near_care/presentation/widgets/custom_rx.dart';
import 'package:near_care/presentation/widgets/custom_search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .07),
              Stack(
                children: [
                  Divider(
                    height: MediaQuery.of(context).size.height *
                        0.03, // Adjust height based on screen height
                    indent: MediaQuery.of(context).size.width *
                        0.3, // Adjust indent based on screen width
                    color: Colors.black,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.0,
                    child: FittedBox(
                      child: const Text(
                        'Prescription',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0d47a1)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .03),
              const CustomSearch(
                height: 40,
                iconSize: 25,
                hintSize: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 2, bottom: 5),
                child: const Text(
                  'Cant find ? add manually',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0d47a1)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: CustomTextFieldName(
                  width: MediaQuery.of(context).size.width * 0.37,
                  heighUnit: 35,
                  hightDose: 35,
                  heighName: 40,
                  repeatedHight: 40,
                  heighButton: 45,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .03),
              //Container (3)
              Container(
                child: Column(
                  children: [
                    const CustomAddRX(
                      dmaxLines: 7,
                      sizeOfNames: 15,
                      valuSize: 15,
                      widthBetween: 15,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),
                    Center(
                      child: Container(
                        height: 45,
                        width: .85 * MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff0d47a1)),
                        child: const Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xfff5f5f5)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),
                    Container(
                      height: 45,
                      width: .85 * MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffffdede)),
                      child: const Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .06),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
