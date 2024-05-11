import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:near_care/presentation/screens/My_Home_Page.dart';
import 'package:near_care/presentation/widgets/see_more_body.dart';

class VideoStreemScreen extends StatefulWidget {
  const VideoStreemScreen({super.key});

  @override
  State<VideoStreemScreen> createState() => _VideoStreemScreenState();
}

class _VideoStreemScreenState extends State<VideoStreemScreen> {
  bool showMore = false;
  bool cameraOpened = false;
  String? type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: cameraOpened ? 7 : 3,
            child: Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                      width: MediaQuery.sizeOf(context).width,
                      height: .9 * MediaQuery.sizeOf(context).height,
                      child: cameraOpened
                          ? Image.asset('images/agh.png', fit: BoxFit.cover)
                          : Stack(children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                width: MediaQuery.sizeOf(context).width,
                                height: .9 * MediaQuery.sizeOf(context).height,
                                child: Image.asset(
                                  "images/cameraOff.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  top: 250,
                                  left: 100,
                                  child: Container(
                                    width: 150,
                                    height: 30,
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                    child: Center(
                                      child: Text("Your camera is off"),
                                    ),
                                  ))
                            ]),
                    ),
                  ),

                  Positioned(
                      bottom: 0,
                      left: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Container(
                          height: 60,
                          width: .8 * MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                              color: Color(0xffe3f2fd),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xff252525),
                                child: Icon(Icons.mic, color: Colors.white),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xffdadada),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      cameraOpened = !cameraOpened;
                                    });
                                  },
                                  child: cameraOpened
                                      ? Icon(
                                          Icons.videocam_rounded,
                                          color: Colors.black,
                                        )
                                      : Icon(
                                          Icons.videocam_off_rounded,
                                          color: Colors.black,
                                        ),
                                ),
                              ),
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xfffc044e),
                                child:
                                    Icon(Icons.call_end, color: Colors.white),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xff0d47a1),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => MyHomePage()));
                                  },
                                  child: Icon(Icons.sticky_note_2,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  //
                  Positioned(
                      left: 0,
                      top: 35,
                      child: Container(
                          margin: EdgeInsets.all(5),
                          height: cameraOpened ? 100 : 70,
                          width: cameraOpened ? 100 : 70,
                          child: cameraOpened
                              ? Image.asset('images/Capture.png')
                              : Container(
                                  width: 50,
                                  height: 50,
                                  decoration:
                                      BoxDecoration(color: Colors.grey[50]),
                                  child: Center(
                                    child: FittedBox(
                                        child: Text("Patient Camera Is off ")),
                                  ),
                                ),
                          color: Colors.grey))
                ],
              ),
            ),
          ),
          cameraOpened
              ? showMore
                  ? SeeMoreBody(
                      onPressed: () {
                        setState(() {
                          showMore = !showMore;
                        });
                      },
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          showMore = !showMore;
                        });
                      },
                      child: Container(
                        width: .7 * MediaQuery.sizeOf(context).width,
                        height: 75,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 40,
                                width: .7 * MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                    color: Color(0xff0d47a1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                    child: Text(
                                  "see more ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                      ),
                    )
              : Expanded(
                  flex: 3,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Patient Details',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff0d47a1)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Text(
                                'Name*',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff02196f3)),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3f2fd),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 10),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3f2fd),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 10),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff02196f3)),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  'Birth OF Date',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff02196f3)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                PopupMenuButton<String>(
                                  onSelected: (value) {
                                    setState(() {
                                      type = value;
                                    });
                                  },
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry<String>>[
                                    const PopupMenuItem<String>(
                                      value: 'female',
                                      child: Text('female'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: "male",
                                      child: Text("male"),
                                    ),
                                    // Add more PopupMenuItem for additional options
                                  ],
                                  // Custom icon with desired color
                                  child: Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3f2fd),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, right: 2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              color: Colors.grey),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3f2fd),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 10),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3f2fd),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 10),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3f2fd),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 10),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Medical Info',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0d47a1)),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .02),
                            const Text(
                              'Allergies',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff02196f3)),
                            ),
                            Container(
                              width: .9 * MediaQuery.sizeOf(context).width,
                              height: 35,
                              color: Color(0xffe3f2fd),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 5),
                                child: const TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff444444)),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .02),
                            const Text(
                              'Diseases',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff02196f3)),
                            ),
                            Container(
                              width: .9 * MediaQuery.sizeOf(context).width,
                              height: 35,
                              color: Color(0xffe3f2fd),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 5),
                                child: const TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff444444)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
        ],
      ),
    );
  }
}
