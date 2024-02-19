import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon});

}
    final List<MenuItem> appMenuItems =[
      MenuItem(
        title: 'Botones', 
        subTitle: 'Varios Botones de Flutter', 
        link:'/buttoms', 
        icon: Icons.smart_button_outlined,
        ),

        MenuItem(
        title: 'Tarjetas', 
        subTitle: 'Un contenedor estilizado', 
        link:'/cards', 
        icon: Icons.credit_card,
        ),
    ];
