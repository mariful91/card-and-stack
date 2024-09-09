import 'dart:ui';
import 'package:flutter/material.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  _HomePageeState createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //backround er photo 
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/432879071_883491783525333_2182262661741250735_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeEYPzuQgGtyrDsN74Or4jOb-g5IoFqCSSj6DkigWoJJKI0Smsb2FspoSVvwpOLgGTejX336fFurkOZlCclGFzZ1&_nc_ohc=FcdupvQwf2kQ7kNvgEdFKnn&_nc_ht=scontent.fdac22-1.fna&_nc_gid=AQ2WxAjCd-Q1Bz_CYJVqZfc&oh=00_AYC6RcvjP4nBP2iOtwzp6zzgJtkScBqULzE3vFEbM5PV0Q&oe=66E44F14',
              fit: BoxFit.cover, //photo re pura containare use korar jonno boxfit use korchi
            ),
          ),
          // backround photo te blour use korar jonno backdropfilter use korchi
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 2),
            child: Container(
              height: 300,
            ),
          ),
          // profile er uporer lekha 
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Container(
              child: Text(
                "WELCOME TO MY PROFILE,VISIT MY PROFILE TO KNOW ABOUT ME!",
                style: TextStyle(
                  color: Colors.yellow, 
                  fontSize: 18, 
                  fontWeight: FontWeight.bold, //lekhake valovabe dekhanur jonno bold korci
                ),
              ),
            ),
          ),
          //profile er nicher lekhar kaj ekhane kora hoiche
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 20, right: 20),
            child: Container(
              child: Text(
                "MY ELDER BROTHER RUSSEL MADE ME AN APPS DEVELOPER",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //profile er kaj kora hoiche ekhane
          Positioned(
            top: 210,
            left: (MediaQuery.of(context).size.width- 120) / 2, 
            child: ClipOval(
              child: Image.network(
                'https://scontent.fdac22-2.fna.fbcdn.net/v/t39.30808-6/449824064_943271020880742_3071278019408398532_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=110&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeFaVEV5ubpioZPlmeO_ioncjc9tLugmxoONz20u6CbGg85nJn7ablDih94cekgVpCXTYxxTZvJWaod2JYeEmEug&_nc_ohc=LVMrL_EoB4AQ7kNvgH20k-X&_nc_ht=scontent.fdac22-2.fna&oh=00_AYARz_TsOCVAeCpzAl6S9xrtsymaH8vwE-qf815UcocSYA&oe=66E474B8',
                height: 120, 
                width: 120, 
                fit: BoxFit.cover, //boxfit er kaj holo photo ke sompuro containare use korbr
              ),
            ),
          ),
        ],
      ),
    );
  }
}