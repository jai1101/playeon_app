import 'package:flutter/material.dart';
import 'package:playeon/widgets/style.dart';

class VariableText extends StatelessWidget {
  final String? text;
  final Color? fontcolor;
  final TextAlign? textAlign;
  final FontWeight weight;
  final bool underlined, linethrough;
  final String fontFamily;
  final double? fontsize, line_spacing, letter_spacing;
  final int? max_lines;
  final TextOverflow overflow;
  final FontStyle fontStyle;
//final double minfontsize,scalefactor,fontsize;

  const VariableText({
    super.key,
    this.text,
    this.fontcolor = textColor1,
    this.fontsize = 15,
    this.textAlign,
    this.weight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
    this.underlined = false,
    this.line_spacing,
    this.letter_spacing = 0.7,
    this.max_lines, //double line_spacing=1.2,
    this.fontFamily = fontRegular,
    this.overflow = TextOverflow.ellipsis,
    this.linethrough = false,
// this.minfontsize=10,//this.scalefactor,
  });

  @override
  Widget build(BuildContext context) {
    //var media=MediaQuery.of(context);
    return Text(
      text!,
      maxLines: max_lines,
      overflow: overflow,
      textAlign: textAlign,
      //textScaleFactor: 1,
      style: TextStyle(
        color: fontcolor, fontWeight: weight,
        height: line_spacing,
        letterSpacing: letter_spacing,
        fontSize: fontsize,
        fontStyle: fontStyle,
        //  fontSize: fontsize,
        fontFamily: fontFamily,
        decorationThickness: 2.0,
        decoration: underlined
            ? TextDecoration.underline
            : (linethrough ? TextDecoration.lineThrough : TextDecoration.none),
      ),
    );
  }
}
class NoAnimationRoute extends PageRouteBuilder {
  final Widget? widget;

  NoAnimationRoute({this.widget})
      : super(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (context, anim1, anim2) {
            return widget!;
          },
        );
}

class SwipeLeftAnimationRoute extends PageRouteBuilder {
  final Widget? widget;
  final int milliseconds;
  SwipeLeftAnimationRoute({this.widget, this.milliseconds = 200})
      : super(
          transitionDuration: Duration(
            milliseconds: milliseconds,
          ),
          pageBuilder: (context, anim1, anim2) => widget!,
          transitionsBuilder: (context, anim1, anim2, child) {
            var begin = const Offset(1, 0);
            var end = const Offset(0, 0);
            var tween = Tween<Offset>(begin: begin, end: end);
            var offsetAnimation = anim1.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}

class SwipeRightAnimationRoute extends PageRouteBuilder {
  final Widget? widget;
  final int milliseconds;
  SwipeRightAnimationRoute({
    this.widget,
    this.milliseconds = 200,
  }) : super(
          transitionDuration: Duration(
            milliseconds: milliseconds,
          ),
          pageBuilder: (context, anim1, anim2) => widget!,
          transitionsBuilder: (context, anim1, anim2, child) {
            var begin = const Offset(-1, 0);
            var end = const Offset(0, 0);
            var tween = Tween<Offset>(begin: begin, end: end);
            var offsetAnimation = anim1.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}

class SwipeUpAnimationRoute extends PageRouteBuilder {
  final Widget? widget;
  final int milliseconds;
  SwipeUpAnimationRoute({
    this.widget,
    this.milliseconds = 200,
  }) : super(
          transitionDuration: Duration(
            milliseconds: milliseconds,
          ),
          pageBuilder: (context, anim1, anim2) => widget!,
          transitionsBuilder: (context, anim1, anim2, child) {
            var begin = const Offset(0, 1);
            var end = const Offset(0, 0);
            var tween = Tween<Offset>(begin: begin, end: end);
            var offsetAnimation = anim1.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        ); 
}