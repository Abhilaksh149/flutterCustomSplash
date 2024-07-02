import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final String bgImage;
  final String logoImage;
  final double logoHeight;
  final double logoWidth;
  final Color logoColor;
  final Color logoBgColor;
  final Color textColor;
  final double? fontSize;
  final Function? navigateToNextScreen;

  const SplashScreen({Key? key, required this.bgImage, required this.logoImage, required this.logoHeight, required this.logoWidth, required this.logoColor, required this.logoBgColor, required this.textColor, this.navigateToNextScreen, this.fontSize}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  double beginAnim = 0.0 ;
  double endAnim = 1.0 ;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(seconds: 2), vsync: this);
    animation = Tween(begin: beginAnim, end: endAnim).animate(controller)
      ..addListener(() {
        setState(() {
          if (animation.value == 1.0) {
            widget.navigateToNextScreen;
          }
        });
      });
    startProgress();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  void startProgress(){
    controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: widget.logoHeight,
              width:  widget.logoWidth,
              child: Image.asset(widget.logoImage),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.30,
                height: 50,
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: LinearProgressIndicator(
                    value: animation.value,
                    color: widget.logoColor,
                    backgroundColor: widget.logoBgColor,
                  ),
                )
            ),
            Text(
              "${(animation.value * 100).round().toString()}%",
              style:  TextStyle(
                fontSize: widget.fontSize,
                color: widget.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}