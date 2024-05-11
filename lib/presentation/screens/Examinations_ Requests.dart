import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:near_care/core/utils/constant.dart';
import 'package:near_care/presentation/screens/examination_body.dart';

class ExaminationsRequests extends StatefulWidget {
  const ExaminationsRequests({Key? key}) : super(key: key);

  @override
  State<ExaminationsRequests> createState() => _ExaminationsRequestsState();
}

class _ExaminationsRequestsState extends State<ExaminationsRequests> {
  bool isEnabled = false;
  String currentPage = 'examinations'; // Default page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            currentPage == "examinations"
                ? Container(
                    height: MediaQuery.of(context).size.height * 0.92,
                    child: ExaminationBody())
                : currentPage == "reports"
                    ? Container(
                        height: .92 * mediaheight(context),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: .1 * mediaheight(context),
                              ),
                              Center(
                                  child: Text(
                                "Reports",
                                style: TextStyle(
                                    color: kPraimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 10),
                                child: Text(
                                  "This Month Session ",
                                  style:
                                      TextStyle(color: kPraimary, fontSize: 17),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 10),
                                child: Text(
                                  "01-31 July ",
                                  style: TextStyle(color: kBlack, fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Center(
                        child: Container(
                          height: .92 * mediaheight(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: .1 * mediaheight(context),
                              ),
                              Center(
                                  child: Text(
                                "Account Settings",
                                style: TextStyle(
                                    color: kPraimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 10),
                                child: Text(
                                  "Name ",
                                  style: TextStyle(color: kBlue, fontSize: 17),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 5),
                                child: Text(
                                  "DR. Ahmed Elhamdy",
                                  style: TextStyle(color: kBlack, fontSize: 17),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 10),
                                child: Text(
                                  "Title ",
                                  style: TextStyle(color: kBlue, fontSize: 17),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 5),
                                child: Text(
                                  "General Practition",
                                  style: TextStyle(color: kBlack, fontSize: 17),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: MaterialButton(
                                  height: 45,
                                  minWidth: .9 * mediawidth(context),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  color: kPraimary,
                                  onPressed: () {},
                                  child: Text(
                                    "Edit Account",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Center(
                                  child: MaterialButton(
                                    elevation: 0,
                                    minWidth: .9 * mediawidth(context),
                                    height: 45,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    color: const Color(0xffffdede),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.exit_to_app,
                                            size: 17, color: kBlack),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "LOG OUT",
                                          style: TextStyle(
                                              color: kBlack, fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentPage = 'examinations';
                            });
                          },
                          child: Text(
                            'Examinations',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: currentPage == 'examinations'
                                  ? kPraimary
                                  : Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentPage = 'reports';
                            });
                          },
                          child: Text(
                            'Reports',
                            style: TextStyle(
                              color: currentPage == 'reports'
                                  ? kPraimary
                                  : Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentPage = 'accountSettings';
                            });
                          },
                          child: Text(
                            'Account Setting',
                            style: TextStyle(
                              color: currentPage == 'accountSettings'
                                  ? kPraimary
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Divider(
                    height: 10,
                  ),
                  // Content based on the current page
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
