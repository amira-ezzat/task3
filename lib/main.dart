
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_3/router/go_router_app.dart';

void main() async {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: goRouter(),
        );
      },
    );
  }
}
