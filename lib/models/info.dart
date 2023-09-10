import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../colors/palette.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void showInfoPage(BuildContext context) {

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Palette.sheetColor,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.95,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(
                child: Text(
                  'Info',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: Image.asset(
                  'assets/image/logo_non.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.28,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Column(
                    children: const <Widget> [
                      Padding(
                        padding: EdgeInsets.only(bottom: 4),
                        child: Text(
                          'iOS 류동완',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4),
                        child: Text(
                          'Android 최서영',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,),
                        ),
                      ),
                      Text(
                        'Design 박세영',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: TextButton(
                      onPressed: () {
                        launchUrl(
                            Uri.parse(
                                'https://www.notion.so/makeus-challenge/'
                                    '702ccffff6e4416688ec72622259faa6'
                            ),
                        );
                      },
                      child: Text(
                        "Contact Us, Click Here!",
                        style: TextStyle(
                          // decoration: TextDecoration.underline,
                          color: Palette.blue1,
                        ),
                      ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'v 1.0',
                    style: TextStyle(
                      color: Palette.versionColor,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,),
                  ),
                ),
              ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width * 0.4,
              //   child: FittedBox(
              //     fit: BoxFit.fitWidth,
              //     child: Text(
              //       'hongmumuk@gmail.com',
              //       style: TextStyle(
              //         color: Palette.versionColor,
              //         fontFamily: 'Pretendard',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 16,),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );
    },
  );
}

// hongmumuk@gmail.com
