// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class calculatorBtn extends StatelessWidget {
//   String txt;
//  void  Function(String) fun;
//    calculatorBtn({required this.txt, required this.fun});
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         height: MediaQuery.of(context).size.height,
//         margin:EdgeInsets.all(2.0) ,
//         child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.teal,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.zero
//               )
//             ),
//             onPressed: (){
//               fun(txt);
//             }, child: Text("$txt",
//           textAlign: TextAlign.center,
//           style:TextStyle(
//             fontSize: 28.sp,
//             fontWeight: FontWeight.bold,
//             color: Colors.white
//           ) ,)),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class calculatorBtn extends StatelessWidget {
  String txt;
  Function(String)onPress;
   calculatorBtn({
    required this.txt,
     required this.onPress,
});

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(2),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)
              )
            ),
            onPressed:(){
          onPress(txt);
        } , child: Text("$txt",style: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}

