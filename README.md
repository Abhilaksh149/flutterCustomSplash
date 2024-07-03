
# Flutter Custom Splash Screen 

When your app is opened, there is a brief period while the app loads.
By default, during this time, the app displays a white splash screen.
This package will help you add a customized splash screen, allowing you to include your
own background image and logo. It also features a one liner progress loader that indicates the loading progress,
enhancing the user experience. Once the splash screen loads completely,
you can navigate to the next screen using the navigateToNextScreen callback function


## Features

- Flutter custom splash screen.
- Customizable with background image and your logo image.
- Loading percentage indicator with customizable color.
- Callback function to handle navigation once the splash screen is completely loaded.
- Customizable height and width of the logo image container.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_custom_splash_screen: ^latest_version
```

Then run `flutter pub get` to install the package.

### Usage

Here is a simple example of how to use the flutter custom splash screen:


```dart
import 'package:flutter/material.dart';
import 'package:flutter_custom_splash_screen/flutter_custom_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


