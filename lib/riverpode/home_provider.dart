import 'package:riverpod/riverpod.dart';



// read only provide 

final helloProvider = Provider<String>((ref)=> 'hello world');


final counterProvider = StateProvider<int>((ref)=>0);


final switchProvide = StateProvider<bool>((ref) => false,);

final sliderProvider = StateProvider<AppData>((ref) {
  return AppData(showPassword: false, slider: 0.0);
},);



class AppData {
   bool showPassword;
   double slider;
  AppData({required this.showPassword,required this.slider});


  AppData copyWith({
    bool ? showPassword,
    double ? slider,
  }){
    return AppData(showPassword: showPassword ?? this.showPassword, slider: slider ?? this.slider);
  }
}