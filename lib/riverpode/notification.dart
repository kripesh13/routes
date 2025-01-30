import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> createNotification()async{
 await AwesomeNotifications().createNotification(content: NotificationContent(id: 5, channelKey: "basic_channel",
 
 title: "Yo title ho hai",
 body: 'Yo details ho hai',
 
 ));
}