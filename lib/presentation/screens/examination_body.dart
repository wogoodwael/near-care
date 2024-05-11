import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:near_care/core/utils/constant.dart';
import 'package:near_care/presentation/widgets/requests_item.dart';

class ExaminationBody extends StatefulWidget {
  const ExaminationBody({Key? key});

  @override
  State<ExaminationBody> createState() => _ExaminationBodyState();
}

class _ExaminationBodyState extends State<ExaminationBody> {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: .06 * mediaheight(context)),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        'images/logo.svg',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(
                        width: .1 * mediawidth(context),
                      ),
                      const Text(
                        'Availability',
                        style: TextStyle(
                            fontSize: 16,
                            color: kBlack,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Transform.scale(
                        scale: 0.75, // Adjust the scale factor as needed
                        child: Switch(
                          splashRadius: 10,
                          inactiveThumbColor: Colors.grey,
                          activeColor: Colors.white,
                          activeTrackColor: Color(0xff366cf4),
                          value: isEnabled,
                          onChanged: (value) {
                            setState(() {
                              isEnabled = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Examinations Requests',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: kPraimary),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: kgrey,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: grey,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          fillColor: kBlack),
                    ),
                  ),
                  SizedBox(height: 16),
                  RequestsItem(color: kSacand),
                  SizedBox(height: 16),
                  RequestsItem(color: kgrey),
                  SizedBox(height: 16),
                  RequestsItem(color: kSacand),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
