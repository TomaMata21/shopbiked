import 'package:flutter/material.dart';

const black = Color(0xFF242C3B);
const blue = Color(0xFF37B6E9);
const violet = Color(0xFF4B4CED);
const blackGray = Color(0xFF353F54);
const blueGray = Color(0xFF353F54);

const strokeLinear = LinearGradient(colors: [
  Color(0xFFFFFFFF),
  Color(0xFF000000),
]);

const cardLinearBlack = LinearGradient(colors: [
  Color(0x99353F54),
  Color(0x99222834),
]);

const cardStrokeLinearBlack = LinearGradient(
  colors: [
    Color(0x33FFFFFF),
    Color(0x33000000),
    Color(0x33000000),
  ],
  stops: [0.0, 0.84, 1.0],
);

final shadowEffect = [
  BoxShadow(
    color: Colors.black.withOpacity(0.2),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3),
  ),
];

const cardLinear = LinearGradient(
  begin: Alignment(0.17, -0.98),
  end: Alignment(-0.17, 0.98),
  colors: [
    Color(0xFF353F53),
    Color(0xFF212734),
  ],
);

const selectedMenuShadow = [
  BoxShadow(
    color: Color(0xFF10141B),
    blurRadius: 30,
    offset: Offset(0, 20),
    spreadRadius: 0,
  ),
  BoxShadow(
    color: Color(0x7F2A3345),
    blurRadius: 30,
    offset: Offset(0, -20),
    spreadRadius: 0,
  )
];

const selectedTabLinear = LinearGradient(
  begin: Alignment(0.46, -0.89),
  end: Alignment(-0.46, 0.89),
  colors: [
    Color(0xFF34C8E8),
    Color(0xFF4E4AF2),
  ],
);

const selectedMenuLinear = LinearGradient(
  begin: Alignment(0.46, -0.89),
  end: Alignment(-0.46, 0.89),
  colors: [
    Color(0xFF34C8E8),
    Color(0xFF4E4AF2),
  ],
);
