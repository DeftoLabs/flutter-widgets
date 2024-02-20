import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}
final slides = <SlideInfo> [
  SlideInfo('Busca la Comida', 'Cupidatat tempor ea in proident.','assets/images/1.png'),
  SlideInfo('Entrega Comida', 'Lorem nisi commodo voluptate laborum non aliqua ea est deserunt do enim consequat.','assets/images/2.png'),
  SlideInfo('Disfruta la Comida', 'Mollit ea anim non dolore quis nulla dolore sit dolore ad occaecat qui exercitation in.','assets/images/3.png')

];


class AppTutorialScreen extends StatefulWidget {

  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if(!endReached && page >= (slides.length -1.5)){
        setState(() {
          endReached = true;
        });
      } 
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children:  slides.map
              ((slideData) => _Slide(
                title: slideData.title, 
                caption: slideData.caption, 
                imageUrl: slideData.imageUrl)).toList()
          ),
          Positioned(
            right: 20,
            top:50,
            child: FilledButton(
              onPressed: () => context.pop(), 
              child: const Text('Skip'))),

          endReached ? Positioned(
            bottom: 50,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(
                child: const Text('Start'),
                onPressed: ()=> context.pop(),),
            )
              ) : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle),
            const SizedBox(height: 20,),
            Text(caption, style: captionStyle),
          ],
        ),
      ),);
  }
}