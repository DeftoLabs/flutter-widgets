import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/screens.dart';



final appRouter = GoRouter(
  routes:[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
        GoRoute(
          path: '/buttoms',
          builder: (context, state) {
            return const ButtonsScreen();
          },
        ),
        GoRoute(
          path: '/cards',
          builder: (context,state) {
            return const CardsScreen();
          },
        ),  
      ],
      
    );