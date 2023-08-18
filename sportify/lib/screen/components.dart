import 'package:flutter/material.dart';



class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final double borderRadius;
  final double buttonHeight;
  final Color borderColor;

  const CustomButton({
    required this.text,
    required this.onPressed,
    this.buttonColor = const Color(0xff491919),
    this.textColor = Colors.white,
    this.borderColor = const Color(0xff491919),
    this.borderRadius = 20.0,
    this.buttonHeight = 40.0
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return IntrinsicWidth(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
        height:widget.buttonHeight,
        decoration: BoxDecoration(
            color: widget.buttonColor,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            border: Border.all(color: widget.borderColor)
        ),
        child: MaterialButton(
          onPressed: widget.onPressed,
          minWidth: double.infinity,
          child: Text(
            widget.text,
            style: TextStyle(color: widget.textColor),
          ),
        ),

      ),
    );
  }
}



// class CustomButton2 extends StatefulWidget {
//   final String text;
//   final VoidCallback onPressed;
//   final Color buttonColor;
//   final Color textColor;
//   final double borderRadius;
//   final double buttonHeight;
//   final Color borderColor;
//
//   const CustomButton2({
//     required this.text,
//     required this.onPressed,
//     this.buttonColor = const Color(0xff932E36),
//     this.textColor = Colors.white,
//     this.borderColor = const Color(0xff932E36),
//     this.borderRadius = 20.0,
//     this.buttonHeight = 40.0
//   });
//
//   @override
//   State<CustomButton> createState() => _CustomButtonState();
// }
//
// class _CustomButtonState2 extends State<CustomButton2> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return IntrinsicWidth(
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: size.width * .05),
//         height:widget.buttonHeight,
//         decoration: BoxDecoration(
//             color: widget.buttonColor,
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//             border: Border.all(color: widget.borderColor)
//         ),
//         child: MaterialButton(
//           onPressed: widget.onPressed,
//           minWidth: double.infinity,
//           child: Text(
//             widget.text,
//             style: TextStyle(color: widget.textColor),
//           ),
//         ),
//
//       ),
//     );
//   }
// }



