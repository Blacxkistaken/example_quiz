import 'package:flutter/material.dart';

/*const kSecondaryColor = Color(0xFF8B94BC);*/
const kSecondaryColor = Colors.white;

const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  /*0xFF00FFCB , (#3aa084)*/
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
const secondGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color.fromRGBO(69, 245, 115, 0.9)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const thirdGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color.fromRGBO(235, 26, 106, 0.9)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const fourthGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color.fromRGBO(26, 148, 235, 0.9)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const double kDefaultPadding = 20.0;
