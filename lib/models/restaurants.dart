final List<String> restaurantType = [
  '한식',
  '중식',
  '일식',
  '양식',
  '아시안',
  '패•푸',
  '분식',
  '기타',
];


int findRestaurantIndex(String restaurant) {
  if (koreanRestaurant.contains(restaurant)) {
    return 0;
  } else if (chineseRestaurant.contains(restaurant)) {
    return 1;
  } else if (japaneseRestaurant.contains(restaurant)) {
    return 2;
  } else if (westernRestaurant.contains(restaurant)) {
    return 3;
  } else if (asianRestaurant.contains(restaurant)) {
    return 4;
  } else if (fastRestaurant.contains(restaurant)) {
    return 5;
  } else if (snackRestaurant.contains(restaurant)) {
    return 6;
  } else if (etcRestaurant.contains(restaurant)) {
    return 7;
  } else {
    return 8;
  }
}


String findRestaurantType(String restaurant) {
  if (koreanRestaurant.contains(restaurant)) {
    return '한식';
  } else if (chineseRestaurant.contains(restaurant)) {
    return '중식';
  } else if (japaneseRestaurant.contains(restaurant)) {
    return '일식';
  } else if (westernRestaurant.contains(restaurant)) {
    return '양식';
  } else if (asianRestaurant.contains(restaurant)) {
    return '아시안';
  } else if (fastRestaurant.contains(restaurant)) {
    return '패-푸';
  } else if (snackRestaurant.contains(restaurant)) {
    return '분식';
  } else if (etcRestaurant.contains(restaurant)) {
    return '기타';
  } else {
    return '-';
  }
}


int giveRestaurantIndex(String restaurant){
  int index = 0;
  List<String> mergedList = [...koreanRestaurant,
    ...chineseRestaurant,
    ...japaneseRestaurant,
    ...westernRestaurant,
    ...asianRestaurant,
    ...fastRestaurant,
    ...snackRestaurant,
    ...etcRestaurant,];

  for (int i = 0; i < mergedList.length; i++) {
    // 1부터 9까지의 인덱스를 순차적으로 부여하기 위해 (i % 9)을 사용
    index = i % 9;

    if (mergedList[i] == restaurant) {
      break;
    }
  }
  return index;
}


// 한식
final List<String> koreanRestaurant = [
  '집밥김치찌개',
  '한석화',
  '국시와 가래떡',
  '율촌',
  '제순식당',
  '발바리네',
  '금복식당',
  '후계동',
  '다락투'
];
// 중식
final List<String> chineseRestaurant = [
  '카이화',
  '명장',
  '향차이',
  '환시앙',
  '손오공마라탕',
  '타오마라탕',
  '짬뽕지존',
  '샤오바오',
  '신주양꼬치',
];
// 일식
final List<String> japaneseRestaurant = [
  '소코아',
  '카미야',
  '겐로쿠우동',
  '칸다소바',
  '유익상스시',
  '카츠업',
  '히메시야',
  '멘타카무쇼',
  '라멘트럭'
];
// 양식
final List<String> westernRestaurant = [
  '아티장 깔조네',
  '남산호랭이',
  '바리',
  '봉대박스타게티',
  '롤링파스타',
  '진짜파스타',
  '이양권반상',
  '윤씨밀방',
  '비스트로주라'
];
// 아시안
final List<String> asianRestaurant = [
  '포보',
  '알촌',
  '미분당',
  '더 키친 아시아 인도',
  '델리인디아',
  '산띠',
  '1976샤브샤브',
  '침사추이누들',
  '에이시안'
];
// 패푸
final List<String> fastRestaurant = [
  '스매쉬보이',
  '식스티즈',
  '써브웨이',
  '테이스티버거',
  '샌드프레소',
  '맘스터치',
  '버거킹',
  '더 피자 보이즈',
  '에그드랍'
];
// 분식
final List<String> snackRestaurant = [
  '또보겠지',
  '삼청당',
  '삭',
  '봉봉',
  '그동네떡볶이',
  '김가네',
  '봉구가래떡볶이',
  '지지고',
  '홍분식'
];
// 기타
final List<String> etcRestaurant = [
  '더그리니치',
  '샌디 빌리지',
  '구스토타코',
  '도시락집 미미',
  '긴자료코',
  '상수 냉장고',
  '무쇠김치삼겹',
  '넙딱집',
  '등촌샤브칼국수'
];