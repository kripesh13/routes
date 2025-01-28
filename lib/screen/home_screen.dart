import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:router/riverpode/home_provider.dart';
import 'package:router/service/notification_services.dart';





class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   final String hello =  ref.read(helloProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


          InkWell(
            onTap: () async {
           var token = await  NotificationServices().getToken();
           print(token);
            },
            child: Text(hello)), 


            ElevatedButton(
              onPressed: () {
              context.pushNamed('/details',extra: {"title":"yo details screen ko title ho hai"});
              },
              child: Text("Go to Details"),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed('/login',pathParameters:{"number":"9876543210", "name": "JohnDoe",  } );
              },
              child: Text("Go to Login"),
            ),
          ],
        ),
      ),
    );
  }
}