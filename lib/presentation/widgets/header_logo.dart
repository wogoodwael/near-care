import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:near_care/core/utils/constant.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: .1 * MediaQuery.sizeOf(context).height,
          bottom: .07 * mediaheight(context)),
      child: SvgPicture.asset(
        "images/logo.svg",
        width: 200,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
