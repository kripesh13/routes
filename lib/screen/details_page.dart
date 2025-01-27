import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:router/riverpode/home_provider.dart';

class DetailsScreen extends ConsumerStatefulWidget {
  final String ? title;
  const DetailsScreen({super.key,this.title});

  @override
  ConsumerState<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends ConsumerState<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    print("yo build vayo hai");
        var state = ref.read(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
      ),
      body: Column(
        children: [
          Consumer(
            builder: (context, ref, child) {
              print("yo pheri build vayo hai ");
              final counter = ref.watch(counterProvider);
              final switchState = ref.watch(switchProvide);
              return Column(
                children: [
                  Text(counter.toString()),
                  Switch(
                    value: switchState,
                    onChanged: (value) {
                      ref.read(switchProvide.notifier).state = value;
                    },
                  )
                ],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              ElevatedButton(
                onPressed: () {
                  state.state++;
                },
                child: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  state.state--;
                },
                child: Icon(Icons.remove),
              ),
            ],
          ),




 Consumer(builder: (context, ref, child) {
var seePass = ref.watch(sliderProvider.select((state){
  return state.showPassword;
}));
  return InkWell(
    onTap: () {
     var show = ref.read(sliderProvider.notifier);
     show.state = show.state.copyWith(showPassword: !seePass);
    },
    child: Container(
      height: 70,
      width: 70,
      child:  seePass == true ? Icon(Icons.remove_red_eye_outlined) : Icon(Icons.remove_circle_outline_outlined),
    ),
  );
 }),


 
          Consumer(builder: (context, ref, child) {
            var state = ref.watch(sliderProvider.select((state)=>state.slider));
            var stateRead = ref.read(sliderProvider.notifier);
                  log(state);

            return Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.red.withOpacity(state),
                ),


                Slider(value: state , onChanged: (value) {
                  stateRead.state = stateRead.state.copyWith(slider: value);
                },)
              ],
            );
          },)
        ],
      ),
    );
  }
}


// class DetailsScreen extends ConsumerWidget {
//   final String title;
//   const DetailsScreen({super.key, required this.title});

  // @override
  // Widget build(BuildContext context, WidgetRef ref) {

  //   print('build vayo hai');
    // var state = ref.read(counterProvider.notifier);
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Details Screen"),
    //   ),
    //   body: Column(
    //     children: [
         

    //       Consumer(builder: (context, ref, child) {
    //         print("yo pheri build vayo hai ");
    //             final counter = ref.watch(counterProvider);
    //             final switchState = ref.watch(switchProvide);
    //         return  Column(
    //           children: [
    //             Text(counter.toString()),
    //             Switch(value: switchState, onChanged: (value) {
    //               ref.read(switchProvide.notifier).state = value;
    //             },)
    //           ],
    //         );
    //       },),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         spacing: 50,
    //         children: [
    //            ElevatedButton(
    //               onPressed: () {
    //                 state.state++;
    //               },
    //               child: Icon(Icons.add),
    //             ),
              

    //             ElevatedButton(
    //               onPressed: () {
    //                 state.state--;
    //               },
    //               child: Icon(Icons.remove),
    //             ),
              
    //         ],
    //       ),
    //     ],
    //   ),
    // );
//   }
// }
