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
          GoRoute(
          path: '/snacksbars',
          name: SnackbarScreen.name,
          builder: (context,state) {
            return const SnackbarScreen();
          },
        ),
          GoRoute(
          path: '/animated',
          name: AnimatedScreen.name,
          builder: (context,state) {
            return const AnimatedScreen();
          },
        ),
          GoRoute(
          path: '/ui-control',
          name: UiControlsScreen.name,
          builder: (context,state) {
            return const UiControlsScreen();
          },
        ),
          GoRoute(
          path: '/tutorial',
          name: AppTutorialScreen.name,
          builder: (context,state) {
            return const AppTutorialScreen();
          },
        ), 
          GoRoute(
          path: '/infinity',
          name: InfinityScrollScreen.name,
          builder: (context,state) {
            return const InfinityScrollScreen();
          },
        ),
          GoRoute(
          path: '/riverpod',
          name: CounterScreen.name,
          builder: (context,state) {
            return const CounterScreen();
          },
        ), 
          GoRoute(
          path: '/theme-changer',
          name: ThemeChangerScreen.name,
          builder: (context,state) {
            return const ThemeChangerScreen();
          },
        ),  

      ],
      
    );