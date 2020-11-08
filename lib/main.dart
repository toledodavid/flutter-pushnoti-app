import 'package:flutter/material.dart';
import 'package:pushapp/src/pages/home_page.dart';
import 'package:pushapp/src/pages/message_page.dart';
import 'package:pushapp/src/providers/push_notifications_provider.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final pushProvider =  new PushNotificationsProvider();
    pushProvider.initNotifications();

    pushProvider.messagesStream.listen((argument) {
      print('argument from main: $argument');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Push app',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'message': (BuildContext context) => MessagePage()
      },
    );
  }
}