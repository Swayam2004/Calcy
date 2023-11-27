import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  late final double _deviceHeight, _deviceWidth;

  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [_calcUtility(), _calcContainer()],
      ),
    );
  }

  Widget _calcUtility() {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              _calcUtilityIcons(currentIcon: Icons.schedule),
              _calcUtilityIcons(currentIcon: Icons.straighten),
              _calcUtilityIcons(currentIcon: Icons.calculate),
            ],
          ),
          _calcUtilityIcons(currentIcon: Icons.backspace)
        ],
      ),
    );
  }

  Widget _calcContainer() {
    return Container(
      padding: const EdgeInsets.all(5),
      height: _deviceHeight * 0.63,
      width: _deviceWidth,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(5, 5, 5, 1.0),
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(255, 60, 60, 60),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          _calcIcons(
              currentIcon: FontAwesomeIcons.c,
              iconColor: Colors.redAccent,
              currentSize: 40),
          _calcIcons(
            currentIcon: Icons.code,
            iconColor: Colors.green,
            currentSize: 50,
          ),
          _calcIcons(
              currentIcon: FontAwesomeIcons.percent,
              iconColor: Colors.green,
              currentSize: 40),
          _calcIcons(
            currentIcon: FontAwesomeIcons.divide,
            iconColor: Colors.green,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.seven,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.eight,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.nine,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.xmark,
            iconColor: Colors.green,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.four,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.five,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.six,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.minus,
            iconColor: Colors.green,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.one,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.two,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.three,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.plus,
            iconColor: Colors.green,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.plusMinus,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: FontAwesomeIcons.zero,
            currentSize: 40,
          ),
          _calcIcons(
            currentIcon: Icons.fiber_manual_record,
            currentSize: 25,
          ),
          _calcIcons(
            currentColor: const Color.fromARGB(255, 48, 134, 6),
            currentIcon: FontAwesomeIcons.equals,
            currentSize: 40,
          ),
        ],
      ),
    );
  }
  
  Widget _calcUtilityIcons({IconData? currentIcon}) {
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        currentIcon,
        size: 30,
        color: const Color.fromARGB(255, 150, 150, 150),
      ),
    );
  }

  Widget _calcIcons(
      {Color currentColor = const Color.fromARGB(255, 40, 40, 40),
      IconData? currentIcon,
      Color iconColor = Colors.white,
      double currentSize = 50}) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: currentColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        currentIcon,
        size: currentSize,
        color: iconColor,
      ),
    );
  }
}
