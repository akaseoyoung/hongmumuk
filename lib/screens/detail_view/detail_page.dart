import 'package:flutter/material.dart';
import 'package:hongmumuk/screens/detail_view/naver_map.dart';
import 'package:hongmumuk/screens/detail_view/search_result.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/maplinks.dart';
import '../../../colors/palette.dart';
import '../../models/restaurants.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void showDetailPage(BuildContext context, String restaurant, String type) {
  matchKakaoLink(type);
  List<String> kakaoLinkList = matchKakaoLink(type);
  List<String> naverLinkList = matchNaverLink(type);
  int index = giveRestaurantIndex(restaurant);

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Palette.sheetColor,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.95,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                (MediaQuery.of(context).size.width) * 0.08, 62,
                (MediaQuery.of(context).size.width) * 0.08, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // 식당이름 및 분류 text row
                  children: [
                    Text(
                      restaurant,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          fontSize: (MediaQuery.of(context).size.width) * 0.05,
                          letterSpacing: -2),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: (MediaQuery.of(context).size.width) * 0.025),
                      child: Text(
                        type,
                        style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: Palette.buttonIconColor,
                            fontSize: (MediaQuery.of(context).size.width) * 0.03,
                            letterSpacing: -1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  // kakao, naver 지도 button row
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: (MediaQuery.of(context).size.width) * 0.16,
                        child: ElevatedButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                  kakaoLinkList[index],
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20),
                                right: Radius.circular(20),
                              ),
                            ),
                            padding: EdgeInsets.zero,
                            backgroundColor: Palette.kakao,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/image/kakao.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width) * 0.16,
                        child: ElevatedButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                naverLinkList[index],
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(60, 25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20),
                                right: Radius.circular(20),
                              ),
                            ),
                            padding: EdgeInsets.zero,
                            backgroundColor: Palette.naver,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/image/naver.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Container( // Best Review 상단 실선
                    height: 1.0,
                    color:Palette.lineColor,
                  ),
                ),
                SizedBox( // 네이버 지도 위젯 container
                  height: (MediaQuery.of(context).size.height) * 0.2,
                  child: NaverMapWidget(restaurant: restaurant, type: type, index: index),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 28),
                  child: Container( // Best Review 상단 실선
                    height: 1.0,
                    color:Palette.lineColor,
                  ),
                ),
                Text(
                  'Best Review',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      fontSize: (MediaQuery.of(context).size.width) * 0.04,
                      letterSpacing: -1.5),
                ),
                Expanded( // 상위 review 나열된 listview'
                  child: SearchResult(searchKeyword: "홍대 $restaurant"),
                ),
              ],
            ),
          ),
      );
    },
  );
}
