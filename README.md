<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

When your app is opened, there is a brief period while the app loads.
By default, during this time, the app displays a white splash screen.
This package will help you add a customized splash screen, allowing you to include your
own background image and logo. It also features a one liner progress loader that indicates the loading progress,
enhancing the user experience. Once the splash screen loads completely,
you can navigate to the next screen using the navigateToNextScreen callback function


```dart
class CompanionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(
          bgImage: 'lib/assets/images/bg.png',
          logoImage: 'lib/assets/images/logo.png',
          logoHeight: 90,
          logoWidth: 90,
          logoColor: Colors.blue,
          logoBgColor: Colors.black,
          textColor: Colors.black,),
        onGenerateRoute: route.controller,
        initialRoute: route.splashScreen,
      );
  }
}

```

