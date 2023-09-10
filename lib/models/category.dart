import 'package:flutter/material.dart';
import 'package:hongmumuk/colors/palette.dart';
import 'package:hongmumuk/models/restaurants.dart';

import '../screens/subview.dart';
import 'info.dart';

final List<CategoryInfo> categories = [
  CategoryInfo('한식', Palette.blue1, SubView(
    type: restaurantType[0],
    restaurantList: koreanRestaurant,
    containerColor: Palette.blue1,
  )),
  CategoryInfo('중식', Palette.blue2, SubView(
    type: restaurantType[1],
    restaurantList: chineseRestaurant,
    containerColor: Palette.blue2,
  )),
  CategoryInfo('일식', Palette.blue3, SubView(
    type: restaurantType[2],
    restaurantList: japaneseRestaurant,
    containerColor: Palette.blue3,
  )),
  CategoryInfo('양식', Palette.blue3, SubView(
    type: restaurantType[3],
    restaurantList: westernRestaurant,
    containerColor: Palette.blue3,
  )),
  CategoryInfo('로고', Colors.white, InfoPage(
    // info 페이지로 연결
  )),
  CategoryInfo('아시안', Palette.blue1, SubView(
    type: restaurantType[4],
    restaurantList: asianRestaurant,
    containerColor: Palette.blue1,
  )),
  CategoryInfo('패•푸', Palette.blue2, SubView(
    type: restaurantType[5],
    restaurantList: fastRestaurant,
    containerColor: Palette.blue2,
  )),
  CategoryInfo('분식', Palette.blue1, SubView(
    type: restaurantType[6],
    restaurantList: snackRestaurant,
    containerColor: Palette.blue1,
  )),
  CategoryInfo('기타', Palette.blue3, SubView(
    type: restaurantType[7],
    restaurantList: etcRestaurant,
    containerColor: Palette.blue3,
  )),
];


// 각 카테고리 정보를 담는 클래스
class CategoryInfo {
  final String name;
  final Color color;
  final Widget route;

  CategoryInfo(this.name, this.color, this.route);
}