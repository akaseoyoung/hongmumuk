import 'package:flutter/material.dart';
import 'package:hongmumuk/models/restaurants.dart';
import 'package:hongmumuk/utilities/random.dart';
import 'package:hongmumuk/screens/detail_view/detail_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colors/palette.dart';
import '../models/category.dart';
import '../models/info.dart';

class ViewScreen extends StatefulWidget {
  ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  bool isViewScreen = true;
  String randomRestaurant = '';
  String type = '';
  late StateSetter stateSetter;

  get restaurantList => null;

  void updateRandomRestaurant(){
    setState(() {
      randomRestaurant = chooseRandomRestaurant();
      type = findRestaurantType(randomRestaurant);
      stateSetter(() {});
    });
  }
  void resetRandomRestaurant() {
    setState(() {
      randomRestaurant = '';
      type = '';
    });
  }

  double getHeightMultiplier(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    print("screenHeight $screenHeight");

    if (screenHeight >= 1000) {
      return 0.2;
    } else if (screenHeight >= 700) {
      return 0.17;
    } else {
      return 0.12;
    }
  }

  @override
  Widget build(BuildContext context) {
    double heightMultiplier = getHeightMultiplier(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) * heightMultiplier,
          ),
          Expanded(
            child: SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        if (index == 4) {
                          showInfoPage(context);
                        } else {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => categories[index].route));
                        }
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: categories[index].color,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            index == 4 // 로고 아이콘
                                ? Expanded(child: Image(
                                image: AssetImage('assets/image/logo_non.png'))
                                )
                                : Text(
                                categories[index].name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize:
                                  (MediaQuery.of(context).size.width) * 0.08,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.height * 0.02,
                  0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: (MediaQuery.of(context).size.height) * 0.06,
                        child: InkWell(
                          onTap: (){
                            resetRandomRestaurant();
                            showModalBottomSheet(
                              backgroundColor: Palette.sheetColor,
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.95,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget> [
                                        Text(
                                          '랜덤선택',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w800,
                                              fontSize: (MediaQuery.of(context).size.width) * 0.08,
                                              letterSpacing: -2),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                                          child: SizedBox(
                                            height: (MediaQuery.of(context).size.height) * 0.1,
                                            child: InkWell(
                                              child: SizedBox(
                                                child: StatefulBuilder(
                                                  builder: (BuildContext context, StateSetter setState) {
                                                    return TextButton(
                                                      onPressed: (){
                                                        showDetailPage(context, randomRestaurant, type);
                                                      },
                                                      child: StatefulBuilder(
                                                        builder: (BuildContext context, StateSetter setState){
                                                          stateSetter = setState;
                                                          return Text(
                                                            randomRestaurant,
                                                            style: TextStyle(
                                                              fontFamily: 'Pretendard',
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: (MediaQuery.of(context).size.width) * 0.06,
                                                              letterSpacing: -2,
                                                              color: Palette.defaultColor,
                                                            ),
                                                          );
                                                        }
                                                      ),
                                                    );
                                                  }
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/image/dice.gif',
                                          width: (MediaQuery.of(context).size.width) * 0.4,
                                          height: (MediaQuery.of(context).size.width) * 0.4,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 32),
                                          child: ElevatedButton(
                                            onPressed: updateRandomRestaurant,
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white, // 배경색을 하얀색으로 설정
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                  (MediaQuery.of(context).size.width) * 0.02),
                                              child: Text(
                                                '랜덤 돌리기',
                                                style: TextStyle(
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: (MediaQuery.of(context).size.width) * 0.05,
                                                    letterSpacing: -1.5,
                                                    color: Palette.defaultColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          borderRadius: BorderRadius.circular(
                              (MediaQuery.of(context).size.height) * 0.06),
                          child: Image.asset(
                            'assets/image/랜덤.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 1,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.height) * 0.06,
                        height: (MediaQuery.of(context).size.height) * 0.06,
                        child: InkWell(
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                  'https://instagram.com/hongik_mumukji?igshid=OGQ5ZDc2ODk2ZA=='
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(
                              (MediaQuery.of(context).size.height) * 0.06),
                          child: Image.asset(
                            'assets/image/인스타그램.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2,),
                ],
              ),
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * heightMultiplier,
          ),
        ],
      ),
    );
  }
}