import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:near_care/presentation/widgets/Custom_Text_Field_Name.dart';
import 'package:near_care/presentation/widgets/custom_rx.dart';
import 'package:near_care/presentation/widgets/custom_search.dart';

class SeeMoreBody extends StatefulWidget {
  const SeeMoreBody({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  State<SeeMoreBody> createState() => _SeeMoreBodyState();
}

class _SeeMoreBodyState extends State<SeeMoreBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
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
                      top: MediaQuery.of(context).size.height *
                          0.0, // Adjust top position based on screen height
                      child: FittedBox(
                        child: Text(
                          'Patient Details',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width *
                                0.04, // Adjust font size based on screen width
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0d47a1),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: const Text(
                    'Name',
                    style: TextStyle(fontSize: 15, color: Color(0xff02196f3)),
                  ),
                ),
                const Text(
                  'Mohamed Ahmed Anwer',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff444444)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Gender',
                          style: TextStyle(
                              fontSize: 15, color: Color(0xff02196f3)),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .01),
                        const Text(
                          'Male',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff444444)),
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
                              fontSize: 15, color: Color(0xff02196f3)),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .01),
                        const Text(
                          '36 Years 6 months',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff444444)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                Stack(
                  children: [
                    Divider(
                      height: MediaQuery.of(context).size.height *
                          0.03, // Adjust height based on screen height
                      indent: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.black,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.0,
                      child: FittedBox(
                        child: const Text(
                          'Medical Info',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0d47a1)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                const Text(
                  'Allergies',
                  style: TextStyle(fontSize: 15, color: Color(0xff02196f3)),
                ),
                Container(
                  width: .9 * MediaQuery.sizeOf(context).width,
                  height: 35,
                  color: Color(0xffe3f2fd),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 5),
                    child: const Text(
                      'Gluten & Strawbariers',
                      style: TextStyle(fontSize: 15, color: Color(0xff444444)),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                const Text(
                  'Diseases',
                  style: TextStyle(fontSize: 15, color: Color(0xff02196f3)),
                ),
                Container(
                  width: .9 * MediaQuery.sizeOf(context).width,
                  height: 35,
                  color: Color(0xffe3f2fd),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 5),
                    child: const Text(
                      'Sugar level 2',
                      style: TextStyle(fontSize: 15, color: Color(0xff444444)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Divider(
                          height: MediaQuery.of(context).size.height *
                              0.03, // Adjust height based on screen height
                          indent: MediaQuery.of(context).size.width * 0.3,
                          color: Colors.black,
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.0,
                          child: FittedBox(
                            child: const Text(
                              'Prescription',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0d47a1)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    const CustomSearch(
                      height: 35,
                      iconSize: 20,
                      hintSize: 13,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5.0, top: 2, bottom: 5),
                      child: const Text(
                        'Cant find ? add manually',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0d47a1)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: CustomTextFieldName(
                        width: MediaQuery.of(context).size.width * 0.39,
                        heighUnit: 30,
                        hightDose: 30,
                        heighName: 35,
                        repeatedHight: 35,
                        heighButton: 35,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    //Container (3)
                    Container(
                      child: Column(
                        children: [
                          const CustomAddRX(
                            dmaxLines: 7,
                            sizeOfNames: 12,
                            valuSize: 12,
                            widthBetween: 30,
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * .02),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: MaterialButton(
                    height: 40,
                    minWidth: .7 * MediaQuery.sizeOf(context).width,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Color(0xff0d47a1),
                    onPressed: widget.onPressed,
                    child: Text(
                      "see less",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
