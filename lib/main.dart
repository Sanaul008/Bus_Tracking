
import 'package:first_project/Emergency_Contact.dart';
import 'package:first_project/EnteringPage.dart';
import 'package:first_project/Notifications.dart';
import 'package:first_project/Routes&Schedule%20Control.dart';
import 'package:first_project/Routes&Schedule.dart';
import 'package:first_project/Transport.dart';
import 'package:first_project/admin_emergency.dart';
import 'package:first_project/admin_home.dart';
import 'package:first_project/admin_notification.dart';
import 'package:first_project/admin_signin.dart';
import 'package:first_project/bus_location.dart';
import 'package:first_project/bus_track.dart';
import 'package:first_project/home.dart';
import 'package:first_project/payment.dart';
import 'package:flutter/material.dart';
import 'package:first_project/login.dart';
import 'package:first_project/register.dart';

void main()  {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EnteringPage(),
    routes: {
      'EnteringPage':(context) => EnteringPage(),
      'admin_signin': (context) => SignInPage(),
      'bus_location': (context) => DriverLocation(),
      'bus-track': (context) => BusTrack(),
      'Routes&Schedule Control': (context) => RoutesAndSchedulePages(),
      'admin_notification' : (context) => NotificationPage(),
      'payment' : (context) => PaymentWays(),
      'Notifications' : (context) => NotificationPages(),
      'admin_emergency': (context) => EmergencyPage(),
      'Emergency_Contact': (context) => EmergencyPages(),
      'admin_home' :(context) => HomePages(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => HomePage(),
      'Transport': (context) => TransportPage(),
      'Routes&Schedule': (context) => RoutesAndSchedulePage()

    },
  ));
}