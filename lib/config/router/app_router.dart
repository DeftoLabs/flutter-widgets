import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/screens.dart';



final appRouter = GoRouter(
  routes:[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
        GoRoute(
          path: '/buttoms',
          name: ButtonsScreen.name,
          builder: (context, state) {
            return const ButtonsScreen();
          },
        ),
        GoRoute(
          path: '/cards',
          name: CardsScreen.name,
          builder: (context,state) {
            return const CardsScreen();
          },
        ), 
          GoRoute(
          path: '/progress',
          name: ProgressScreen.name,
          builder: (context,state) {
            return const ProgressScreen();
          },
        ),   
      ],
      
    );