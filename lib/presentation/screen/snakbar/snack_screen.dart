import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar (BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: const Text('Hola Mundo'),
    action: SnackBarAction(label: 'Ok!', onPressed: (){}),
    duration: const Duration(seconds: 3),
    ),
          );
  }

  void openDialog (BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text ('Estas Seguro?'),
        content: const Text('Esta aplicacion fue desarrollada con las licencias descritas a continuacion'),
        actions: [
          TextButton(
            onPressed: ()=> Navigator.of(context).pop(), 
            child: const Text('Cancelar'),
             ),
             FilledButton(
              onPressed: ()=> context.pop(), 
              child: const Text('Aceptar'))
        ],
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: const Text('Snack & Dialogs')
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: (){
              showAboutDialog(context: context,
              children: [
                const Text('Esta aplicacion fue desarrollada con las licencias descritas a continuacion')
              ]);
            }, 
            child: const Text('Licencias Usadas'),),
         FilledButton.tonal(
            onPressed: (){
              openDialog(context);
            }, 
            child: const Text('Mostar Dialogo'),),
        ],
      )
    ),  

      floatingActionButton: FloatingActionButton.extended(
        label: const Text ('Mostar SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: (){
          showCustomSnackbar(context);
        }
        ),
    );
  }
}