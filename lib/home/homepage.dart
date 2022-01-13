import 'package:darkmode/theme/changethemebutton.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'homesave.dart';
import 'homestack.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final BoxDecoration decorator = BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        border: Border.all(color: Colors.black.withOpacity(0.5), width: 4.0),
        gradient: const LinearGradient(
            colors: [Color(0xff23b6e6), Color(0xff02d39a), Color(0xFFFEC18A)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight));
    final TextStyle cardTextStyle =
        GoogleFonts.spartan(color: Colors.white, fontWeight: FontWeight.w600);
    final TextStyle cardNumberStyle =
        GoogleFonts.openSans(fontSize: 18, fontWeight: FontWeight.w600);

    final numberFormat = NumberFormat("##,###.00#", "en_US");
    Size size = MediaQuery.of(context).size;
    Color greenColor = const Color(0xFF00AF19);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            width: 159,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/erick.jpg'),
                  radius: 25,
                ),
               
                SizedBox(
                  width: size.width * 0.01,
                ),
                Text(
                  'Hi Ricko',
                  style: GoogleFonts.spartan(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).textTheme.headline6!.color),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            
            Container(
              height: size.height * 0.1,
              width: size.width * 0.1,
              decoration: BoxDecoration(
                  color: Colors.greenAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0)),
              child: ChangeThemeButtonWidget(),
            ),
             SizedBox(
              width: size.width * 0.02,
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BaseInvest(
                    size: size,
                    greenColor: greenColor,
                    numberFormat: numberFormat,
                    cardNumberStyle: cardNumberStyle,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Total investments',
                              style: TextStyle(
                                  fontFamily: 'Trueno',
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(r'ksh' "${numberFormat.format(27802.05)}",
                            style: cardNumberStyle),
                        const SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),
                  MonthlySave(
                    size: size,
                    greenColor: greenColor,
                    numberFormat: numberFormat,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Monthly savings',
                              style: TextStyle(
                                  fontFamily: 'Trueno',
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          r'ksh' "${numberFormat.format(27802.05)}",
                          style: GoogleFonts.openSans(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text('My money',
                  style: GoogleFonts.spartan(
                      fontWeight: FontWeight.w600, fontSize: 18)),
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 380.0,
                child: Stack(
                  children: [
                    Container(
                      height: 140.0,
                      decoration: decorator,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Investments', style: cardTextStyle),
                            Text(r'ksh' "${numberFormat.format(27802.05)}",
                                style: cardNumberStyle),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 75.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 120,
                        decoration: decorator.copyWith(
                          gradient: LinearGradient(
                              colors: [const Color(0xffE0ABF2), greenColor]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Savings', style: cardTextStyle),
                              Text(
                                r'ksh' "${numberFormat.format(27802.05)}",
                                style: cardNumberStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150.0,
                      right: 0.0,
                      left: 0.0,
                      child: Container(
                          height: 200,
                          decoration: decorator.copyWith(
                            borderRadius: BorderRadius.circular(30.0),
                            gradient: LinearGradient(colors: [
                              const Color(0xFFFCA7E2),
                              const Color(0xFFFC9FD2),
                              const Color(0xFFFCD8BD),
                              greenColor
                            ]),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Buy Now Pay Later',
                                      style: cardTextStyle,
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor: greenColor,
                                            child: const Icon(
                                              Icons.add,
                                              size: 23.0,
                                            )),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        const Text(
                                          'Start shopping',
                                          style: TextStyle(
                                              fontFamily: 'Trueno',
                                              color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        r'ksh'
                                        "${numberFormat.format(27802.05)}",
                                        style: cardNumberStyle),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'Terry',
                                          style: TextStyle(
                                              fontFamily: 'Trueno',
                                              fontSize: 25.0,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        Container(
                                            height: 4.0,
                                            width: 4.0,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black))
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
