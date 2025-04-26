import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


List<Map<String,dynamic>> transactionsData = [
  {
    'icon' : const FaIcon(FontAwesomeIcons.burger,color: Colors.white,),
    'color': Colors.yellow,
    'name': 'Food',
    'totalAmount': '-\$45.0',
    'date': 'today',
  },
  {
    'icon' : const FaIcon(FontAwesomeIcons.bagShopping,color: Colors.white,),
    'color': Colors.purple,
    'name': 'Shopping',
    'totalAmount': '-\$230.0',
    'date': 'today',
  },
  {
    'icon' : const FaIcon(FontAwesomeIcons.heartCircleCheck,color: Colors.white,),
    'color': Colors.green,
    'name': 'Health',
    'totalAmount': '-\$79.0',
    'date': 'yesterday',
  },
  {
    'icon' : const FaIcon(FontAwesomeIcons.plane,color: Colors.white,),
    'color': Colors.blue,
    'name': 'Travel',
    'totalAmount': '-\$350.0',
    'date': 'yesterday',
  }
];
