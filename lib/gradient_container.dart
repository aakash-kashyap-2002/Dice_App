import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

//import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{

  const GradientContainer(this.col1 , this.col2 , {super.key});
  final Color col1;
  final Color col2;

  const GradientContainer.purple({super.key}) : col1 = Colors.purple , col2 = Colors.indigo;

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [col1,col2],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: DiceRoller(),
          ),
        );
  }
}




// class GradientContainer extends StatelessWidget{

//   const GradientContainer(this.col1 , this.col2 , {super.key});
//   final Color col1;
//   final Color col2;

//   const GradientContainer.purple({super.key}) : col1 = Colors.purple , col2 = Colors.indigo;

//   @override
//   Widget build(context) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [col1,col2],
//               begin: startAlignment,
//               end: endAlignment,
//             ),
//           ),
//           child:const Center(
//             child: StyledText('Your Aakash misses you Bebaaaaaa'),
//           ),
//         );
//   }
// }