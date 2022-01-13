import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BaseInvest extends StatelessWidget {
  final Widget? child;
  const BaseInvest({
    Key? key,
    @required this.size,
    @required this.greenColor,
    @required this.numberFormat,
    @required this.cardNumberStyle,
    @required this.child,
  }) : super(key: key);

  final Size? size;
  final Color? greenColor;
  final NumberFormat? numberFormat;
  final TextStyle? cardNumberStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0, left: 5),
      height: size!.height * 0.23,
      width: size!.width * 0.5 - 20,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 2,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.2))
        ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              greenColor!,
              Colors.greenAccent,
            ]),
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Stack(children: [
        Positioned(
            top: 1,
            right: 2,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                      greenColor!,
                      Colors.greenAccent,
                    ]),
              ),
            )),
        Positioned(
            top: 10,
            left: 2,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                      greenColor!,
                      Colors.greenAccent,
                    ]),
              ),
            )),
        Positioned(
            right: 2,
            bottom: 10,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                      greenColor!,
                      Colors.greenAccent,
                    ]),
              ),
            )),
        child!
      ]),
    );
  }
}
