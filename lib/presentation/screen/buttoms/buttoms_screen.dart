import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

    static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttom Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          context.pop();
        }),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){}, 
              child: const Text('Elevated')),
            const ElevatedButton(
              onPressed: null, 
              child: Text('Disabled')),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')),
            FilledButton(
              onPressed: (){}, 
              child: const Text('Filled')), 
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.ac_unit), 
              label: const Text('Filled Icon')),
              OutlinedButton(
                onPressed: (){}, 
                child: const Text('Outline')),
              OutlinedButton.icon(
                onPressed: (){}, 
                icon: const Icon(Icons.access_alarm), 
                label: const Text('Outline Icon')),
              TextButton(onPressed: (){}, child: const Text('Text')),
              TextButton.icon(onPressed: (){}, icon: const Icon(Icons.account_balance_outlined), label: const Text('Text Icon')),
              IconButton(onPressed: (){}, icon: const Icon(Icons.align_vertical_center_sharp),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
          ),),
          const CustomButton(),

          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: 
        InkWell(
          splashColor: Colors.pink[400],
          onTap: (){},
          child: const Padding (
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Custom', style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}