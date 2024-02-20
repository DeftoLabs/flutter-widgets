import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'uicontrol_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Control'),
      ),
      body: const _UiControlView(),
    );
  }
}

class _UiControlView extends StatefulWidget {
  const _UiControlView();

  @override
  State<_UiControlView> createState() => _UiControlViewState();
}

enum Transportation {car, plane, boat, submarine}

class _UiControlViewState extends State<_UiControlView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Additional Controls'),
          value: isDeveloper, 
          onChanged:(value){
            setState(() {
                     isDeveloper = !isDeveloper;  
            });
        }),
          ExpansionTile(
            title: Text('Transportation'),
            subtitle: Text('Select the Transportation'),
            children: [
          RadioListTile(
            value: Transportation.car, 
            title: const Text('By Car'),
            subtitle: const Text('Travel on Car'),
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.car;
            })),
            RadioListTile(
            value: Transportation.plane, 
            title: const Text('By plane'),
            subtitle: const Text('Travel on Plane'),
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.plane;
            })),
            RadioListTile(
            value: Transportation.boat, 
            title: const Text('By Boat'),
            subtitle: const Text('Travel on Boat'),
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.boat;
            })),
          RadioListTile(
            value: Transportation.submarine, 
            title: const Text('By Submarine'),
            subtitle: const Text('Travel in Submarine'),
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.submarine;
            })),


            ],),
        CheckboxListTile(
          title: const Text('Incluir Desayuno?'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          })),
          CheckboxListTile(
          title: const Text('Incluir Almuerzo?'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          })),
          CheckboxListTile(
          title: const Text('Incluir Cena?'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          })),

      ],
    );
  }
}