
import 'package:bus_tracking/user_Emergency_Contact.dart';
import 'package:bus_tracking/EnteringPage.dart';
import 'package:bus_tracking/user_Notifications.dart';
import 'package:bus_tracking/user_Routes&Schedule.dart';
import 'package:bus_tracking/admin_Routes&Schedule%20Control.dart';
import 'package:bus_tracking/user_Transport.dart';
import 'package:bus_tracking/admin_emergency.dart';
import 'package:bus_tracking/admin_home.dart';
import 'package:bus_tracking/admin_notification.dart';
import 'package:bus_tracking/admin_signin.dart';
import 'package:bus_tracking/admin_bus_location.dart';
import 'package:bus_tracking/user_bus_track.dart';
import 'package:bus_tracking/user_home.dart';
import 'package:bus_tracking/user_payment.dart';
import 'package:flutter/material.dart';
import 'package:bus_tracking/user_login.dart';
import 'package:bus_tracking/user_register.dart';

void main()  {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EnteringPage(),
    routes: {
      'EnteringPage':(context) => EnteringPage(),
      'admin_signin': (context) => SignInPage(),
      'admin_bus_location': (context) => DriverLocation(),
      'user_bus-track': (context) => BusTrack(),
      'admin_Routes&Schedule Control': (context) => RoutesAndSchedulePages(),
      'admin_notification' : (context) => NotificationPage(),
      'user_payment' : (context) => PaymentWays(),
      'Notifications' : (context) => NotificationPages(),
      'admin_emergency': (context) => EmergencyPage(),
      'user_Emergency_Contact': (context) => EmergencyPages(),
      'admin_home' :(context) => HomePages(),
      'user_register': (context) => MyRegister(),
      'user_login': (context) => MyLogin(),
      'user_home': (context) => HomePage(),
      'user_Transport': (context) => TransportPage(),
      'user_Routes&Schedule': (context) => RoutesAndSchedulePage()

    },
  ));
}