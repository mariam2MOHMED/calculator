// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:simplecalculator/shared/components/calculator_btn.dart';
//
// class CalculatorScreen extends StatefulWidget {
//   static const String routeName="/calculatorScreen";
//
//   @override
//   State<CalculatorScreen> createState() => _CalculatorScreenState();
// }
//
// class _CalculatorScreenState extends State<CalculatorScreen> {
// String res="";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//   centerTitle: true,
//   backgroundColor: Colors.teal,
//   title: Text("Calculator",style: TextStyle(
//     color: Colors.white,
//     fontSize: 20.sp,
//     fontWeight: FontWeight.bold
//   ),),
// ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               alignment: AlignmentDirectional.centerEnd,
//               padding: EdgeInsets.only(right: 8.0),
//               child: Text("$res",style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.sp
//               ),),
//             ),
//           ),
//           Expanded(child: Row(
//             children: [
//               calculatorBtn(txt: "Del",fun: onAcClicked,),
//               calculatorBtn(txt: "clear",fun: clear,),
//
//             ],
//           )),
//           Expanded(child: Row(
//               children: [
//                 calculatorBtn(txt: "7",fun: onDigitClick,),
//                 calculatorBtn(txt: "8",fun: onDigitClick,),
//                 calculatorBtn(txt: "9",fun:onDigitClick,),
//                 calculatorBtn(txt: "/",fun:onOperatorClick,),
//               ],
//           )),
//           Expanded(child: Row(
//             children: [
//               calculatorBtn(txt: "4",fun: onDigitClick,),
//               calculatorBtn(txt: "5",fun: onDigitClick,),
//               calculatorBtn(txt: "6",fun: onDigitClick,),
//               calculatorBtn(txt: "*",fun:onOperatorClick,),
//             ],
//           )),
//           Expanded(child: Row(
//             children: [
//               calculatorBtn(txt: "1",fun: onDigitClick,),
//               calculatorBtn(txt: "2",fun: onDigitClick,),
//               calculatorBtn(txt: "3",fun: onDigitClick,),
//               calculatorBtn(txt: "+",fun: onOperatorClick,),
//             ],
//           )),
//           Expanded(child: Row(
//             children: [
//               calculatorBtn(txt: "0",fun: onDigitClick,),
//               calculatorBtn(txt: ".",fun: onDigitClick,),
//               calculatorBtn(txt: "=",fun: onEqualClick,),
//               calculatorBtn(txt: "-",fun: onOperatorClick,),
//             ],
//           )),
//
//         ],
//       ),
//     );
//   }
// String savedNumber="";
// String savedOperator="";
//   onDigitClick(String digit){
//     res+=digit;
//     setState(() {
//
//     });
//   }
//   onAcClicked(String c){
//     if(res.isEmpty){
// return;
//     }else{
// res=res.substring(0,res.length-1);
//     }
//     setState(() {
//
//     });
//   }
//   void clear(String c){
//     c='';
//     savedNumber='';
//     savedOperator='';
//     res='';
//     setState(() {
//
//     });
//   }
//   onOperatorClick(String oper){
// if(savedNumber.isEmpty){
//   savedNumber=res;
//   savedOperator=oper;
// }else{
//
//   calculate(savedNumber, savedOperator, res);
//    savedNumber=res;
//    savedOperator=oper;
// }
//
// res='';
// setState((){});}
//   void onEqualClick(String h){
//  h='';
//  if(savedNumber.isEmpty){return ;}
//     calculate(savedNumber, savedOperator, res);
//     savedNumber='';
//     savedOperator='';
//     setState(() {});
//
//   }
//   void calculate(String lhs,String oper,String rhs){
// double n1=double.parse(lhs);
// double n2=double.parse(rhs);
// switch(oper){
//   case'+':
//     res=(n1+n2).toString();
//     break;
//   case'-':
//     res=(n1-n2).toString();
//     break;
//   case'*':
//     res=(n1*n2).toString();
//     break;
//   case'/':
//     res=(n1/n2).toString();
//     break;
//
//
// }
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simplecalculator/shared/components/calculator_btn.dart';

class CalculatorScreen extends StatefulWidget {
  static String routeName="CalculatorScreen";
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
 String res="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text("Calculator",style:
        TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 10.0),
              child: Text("$res",style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp
              ),),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                calculatorBtn(txt: "Del", onPress: onDelClick),
                calculatorBtn(txt: "Clear", onPress: onClearClick),

              ],

            ),
          ),
          Expanded(
            child: Row(
              children: [
                calculatorBtn(txt: "7", onPress: onDigitClick),
                calculatorBtn(txt: "8", onPress: onDigitClick),
                calculatorBtn(txt: "9", onPress: onDigitClick),
                calculatorBtn(txt: "*", onPress: onOperatorClick),
              ],

            ),
          ),
          Expanded(
            child: Row(
              children: [
                calculatorBtn(txt: "4", onPress: onDigitClick),
                calculatorBtn(txt: "5", onPress: onDigitClick),
                calculatorBtn(txt: "6", onPress: onDigitClick),
                calculatorBtn(txt: "/", onPress: onOperatorClick),
              ],

            ),
          ),
          Expanded(
            child: Row(
              children: [
                calculatorBtn(txt: "1", onPress: onDigitClick),
                calculatorBtn(txt: "2", onPress: onDigitClick),
                calculatorBtn(txt: "3", onPress: onDigitClick),
                calculatorBtn(txt: "+", onPress: onOperatorClick),
              ],

            ),
          ),
          Expanded(
            child: Row(
              children: [
                calculatorBtn(txt: "0", onPress: onDigitClick),
                calculatorBtn(txt: ".", onPress: onDigitClick),
                calculatorBtn(txt: "=", onPress: onEqualClick),
                calculatorBtn(txt: "-", onPress: onOperatorClick),
              ],

            ),
          ),
        ],
      ),
    );
  }

  String savedNumber="";
 String savedOperator="";
 onClearClick(String f){
   savedNumber="";
   savedOperator="";res="";setState(() {

   });
 }
 onEqualClick(String f){
   if(savedNumber.isEmpty){
     return;
   }else{
     calculate(savedNumber, savedOperator, res);

   }setState(() {

   });
   savedNumber='';savedOperator='';
 }
  onDigitClick(String digit){
    res+=digit;setState(() {

    });
  }
  onOperatorClick(String oper){
   if(savedNumber.isEmpty){
     savedNumber=res;
     savedOperator=oper;
   } else{
     calculate(savedNumber, savedOperator, res);
     savedNumber=res;
     savedOperator=oper;
   }res='';
   setState(() {

   });
  }
  onDelClick(String l){
   if(res.isEmpty){return;}
else{
  res=res.substring(0,res.length-1);
   }
setState(() {

   });
  }
void calculate(String lhs,String oper,String rhs){
    double n1=double.parse(lhs);
    double n2=double.parse(rhs);

    switch(oper){
      case '+':
    res=(n1+n2).toString();
    break;
      case '-':
        res=(n1-n2).toString();
        break;
      case '*':
        res=(n1*n2).toString();
        break;
      case '/':
        res=(n1/n2).toString();
        break;
    }
}
}


