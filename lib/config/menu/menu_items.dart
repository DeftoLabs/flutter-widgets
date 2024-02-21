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
        title: 'Riverpod Counter', 
        subTitle: 'Intro to Riverpod', 
        link:'/riverpod', 
        icon: Icons.rate_review_sharp,
        ),
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

        MenuItem(
        title: 'Progress Indicator', 
        subTitle: 'Generales y Controlados', 
        link:'/progress', 
        icon: Icons.refresh_rounded,
        ),

        MenuItem(
        title: 'Snack Bar & Dialags', 
        subTitle: 'Generales', 
        link:'/snacksbars', 
        icon: Icons.info_outline,
        ),
        MenuItem(
        title: 'Animated Container', 
        subTitle: 'Generales', 
        link:'/animated', 
        icon: Icons.animation,
        ),
        MenuItem(
        title: 'UI Control + Title', 
        subTitle: 'UI Control', 
        link:'/ui-control', 
        icon: Icons.car_rental_outlined,
        ),
        MenuItem(
        title: 'Intro APP', 
        subTitle: 'Tutorial', 
        link:'/tutorial', 
        icon: Icons.accessible_outlined,
        ),
        MenuItem(
        title: 'Infinity Scroll & Pull', 
        subTitle: 'Lista Infinita + Refresh', 
        link:'/infinity', 
        icon: Icons.list_outlined,
        ),
    ];
