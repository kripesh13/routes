import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:router/firebase_options.dart';
import 'package:router/routes/routes.dart';
import 'package:router/service/notification_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AwesomeNotifications()
      .initialize("resource://mipmap/ic_launcher", [
    NotificationChannel(
      channelKey: 'basic_channel',
      channelName: "Basic Notification",
      channelDescription: "Basic Notification",
      importance: NotificationImportance.High,
      channelShowBadge: true,

    )
  ]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationServices notificationServices = NotificationServices();
  await notificationServices.requestNotificationPermissions();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  try {
    if (message.notification != null) {
      print(message.notification!.body);
    }
  } catch (e) {
    print('Error handling background message: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationServices notificationServices = NotificationServices();
    notificationServices.firebaseInit(context);
    notificationServices.requestNotificationPermissions();
    notificationServices.setUpInteractiontMessage(context);
    return ProviderScope(
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: route,
      ),
    );
  }
}
