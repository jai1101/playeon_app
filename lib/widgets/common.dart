// ignore_for_file: public_member_api_docs, sort_constructors_first
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

class MyButton extends StatelessWidget {
  final String? btnTxt;
  final double? btnHeight;
  final double? btnWidth;
  final Function()? onTap;
  final Color? btnColor;
  final Color? txtColor;
  final double? btnRadius;
  final double? fontSize;
  final FontWeight? weight;
  final Color? borderColor;
  final fontFamily;

  MyButton({
    this.btnTxt = "Test",
    this.borderColor = textColor1,
    this.weight = FontWeight.w600,
    this.fontSize = 20,
    this.btnRadius = 8,
    this.onTap,
    this.btnHeight,
    this.btnWidth,
    this.btnColor = textColor1,
    this.txtColor = textColorW,
    this.fontFamily = fontMedium,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      width: btnWidth != null ? btnWidth : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: btnColor, //textStyle: TextStyle(color: Color(0xff000000)),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: borderColor != null ? borderColor! : btnColor!,
                  width: 2),
              borderRadius: BorderRadius.circular(btnRadius!)),
        ),
        onPressed: onTap ?? null,
        child: Center(
          child: FittedBox(
            child: VariableText(
              text: btnTxt,
              fontcolor: txtColor,
              weight: weight!,
              max_lines: 1,
              fontsize: fontSize,
              fontFamily: fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  TextEditingController? cont;
  String? hintTxt;
  bool fill;
  TextInputAction? inputAction;
  TextInputType? inputType;
  bool obscure;
  CustomTextField(
      {Key? key,
      this.cont,
      this.hintTxt,
      this.fill = false,
      this.obscure = false,
      this.inputAction = TextInputAction.next,
      this.inputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TextFormField(
      controller: cont,
      obscureText: obscure,
      textInputAction: inputAction,
      keyboardType: inputType,
      style: TextStyle(
        fontFamily: fontMedium,
        color: textColor1,
        fontSize: size.height * 0.018,
      ),
      decoration: InputDecoration(
        hintText: hintTxt,
        hintStyle: TextStyle(color: textColor1),
        enabled: true,
        filled: fill,
        fillColor: backgroundColorB,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textColor1),
        ),
      ),
    );
  }
}

class CustomPasswordField extends StatefulWidget {
  TextEditingController? cont;
  String? hintTxt;
  bool fill;
  TextInputAction? inputAction;
  TextInputType? inputType;
  bool obscure;
  CustomPasswordField(
      {Key? key,
      this.cont,
      this.hintTxt,
      this.fill = false,
      this.obscure = true,
      this.inputAction = TextInputAction.next,
      this.inputType = TextInputType.text})
      : super(key: key);

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TextFormField(
      controller: widget.cont,
      obscureText: widget.obscure,
      textInputAction: widget.inputAction,
      keyboardType: widget.inputType,
      style: TextStyle(
        fontFamily: fontMedium,
        color: textColor1,
        fontSize: size.height * 0.018,
      ),
      decoration: InputDecoration(
        hintText: widget.hintTxt,
        hintStyle: TextStyle(color: textColor1),
        enabled: true,
        filled: widget.fill,
        fillColor: backgroundColorB,
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              widget.obscure = !widget.obscure;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: widget.obscure
                ? Image.asset("assets/icons/ic_password_show.png",
                    color: textColor1, scale: 1.7)
                : Image.asset("assets/icons/ic_password_hide.png",
                    color: textColor1, scale: 1.7),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textColor1),
        ),
      ),
    );
  }
}

class ProcessLoadingLight extends StatefulWidget {
  @override
  State createState() {
    return _ProcessLoadingLightState();
  }
}

class _ProcessLoadingLightState extends State<ProcessLoadingLight>
    with SingleTickerProviderStateMixin {
  AnimationController? _cont;
  Animation<Color?>? _anim;

  @override
  void initState() {
    _cont = AnimationController(
        duration: Duration(
          seconds: 1,
        ),
        vsync: this);
    _cont!.addListener(() {
      setState(() {});
    });
    ColorTween? col = ColorTween(begin: primaryColor1, end: primaryColor2);
    _anim = col.animate(_cont!);
    _cont!.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _cont!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(0, 0, 0, 0.3),
        child: Center(
          child: SizedBox(
              width: 50 * _cont!.value,
              height: 50 * _cont!.value,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  _anim!.value,
                ),
              )),
        ));
  }
}
