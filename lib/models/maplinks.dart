List<String> matchKakaoLink(String type){
  switch (type) {
    case '한식':
      return kakaoKoreanList;
    case '중식':
      return kakaoChineseList;
    case '일식':
      return kakaoJapaneseList;
    case '양식':
      return kakaoWesternList;
    case '아시안':
      return kakaoAsianList;
    case '패푸':
      return kakaoFastList;
    case '분식':
      return kakaoSnackList;
    case '기타':
      return kakaoEtcList;
    default:
      return [];
  }
}

List<String> matchNaverLink(String type){
  switch (type) {
    case '한식':
      return naverKoreanList;
    case '중식':
      return naverChineseList;
    case '일식':
      return naverJapaneseList;
    case '양식':
      return naverWesternList;
    case '아시안':
      return naverAsianList;
    case '패푸':
      return naverFastList;
    case '분식':
      return naverSnackList;
    case '기타':
      return naverAsianList;
    default:
      return [];
  }
}

// kakao map link lists
final List<String> kakaoKoreanList = [
  'https://place.map.kakao.com/1718126650',
  'https://place.map.kakao.com/1993290266',
  'https://place.map.kakao.com/14734012',
  'https://place.map.kakao.com/24580312',
  'https://place.map.kakao.com/490667330',
  'https://place.map.kakao.com/15625653',
  'https://place.map.kakao.com/1722785841',
  'https://place.map.kakao.com/1183957472',
  'https://place.map.kakao.com/10278424'
];

final List<String> kakaoChineseList = [
  'https://place.map.kakao.com/570518757',
  'https://place.map.kakao.com/1237520308',
  'https://place.map.kakao.com/957182243',
  'https://place.map.kakao.com/1056365433',
  'https://place.map.kakao.com/474254018',
  'https://place.map.kakao.com/2088827518',
  'https://place.map.kakao.com/2082473107',
  'https://place.map.kakao.com/2145716193',
  'https://place.map.kakao.com/26873353'
];

final List<String> kakaoJapaneseList = [
  'https://place.map.kakao.com/1426286680',
  'https://place.map.kakao.com/12771116',
  'https://place.map.kakao.com/12437276',
  'https://place.map.kakao.com/2057792795',
  'https://place.map.kakao.com/1653817475',
  'https://place.map.kakao.com/1318186006',
  'https://place.map.kakao.com/21960086',
  'https://place.map.kakao.com/1704662385',
  'https://place.map.kakao.com/1859634829'
];

final List<String> kakaoWesternList = [
  'https://place.map.kakao.com/1694657356',
  'https://place.map.kakao.com/1711475071',
  'https://place.map.kakao.com/2052188089',
  'https://place.map.kakao.com/1056158711',
  'https://place.map.kakao.com/1680046810',
  'https://place.map.kakao.com/1591202287',
  'https://place.map.kakao.com/1978020868',
  'https://place.map.kakao.com/13113825',
  'https://place.map.kakao.com/27272711'
];

final List<String> kakaoAsianList = [
  'https://place.map.kakao.com/19032335',
  'https://place.map.kakao.com/1289781956',
  'https://place.map.kakao.com/1551661200',
  'https://place.map.kakao.com/228801586',
  'https://place.map.kakao.com/27416360',
  'https://place.map.kakao.com/9926329',
  'https://place.map.kakao.com/21358621',
  'https://place.map.kakao.com/352051170',
  'https://place.map.kakao.com/1709780448'
];

final List<String> kakaoFastList = [
  'https://place.map.kakao.com/1677721147',
  'https://place.map.kakao.com/488474938',
  'https://place.map.kakao.com/285790744',
  'https://place.map.kakao.com/1737612851',
  'https://place.map.kakao.com/1693089943',
  'https://place.map.kakao.com/27469228',
  'https://place.map.kakao.com/723372106',
  'https://place.map.kakao.com/27548461',
  'https://place.map.kakao.com/1267694470'
];

final List<String> kakaoSnackList = [
  'https://place.map.kakao.com/895272833',
  'https://place.map.kakao.com/2081735366',
  'https://place.map.kakao.com/19909925',
  'https://place.map.kakao.com/824668308',
  'https://place.map.kakao.com/25859396',
  'https://place.map.kakao.com/26932953',
  'https://place.map.kakao.com/965233002',
  'https://place.map.kakao.com/20125512',
  'https://place.map.kakao.com/1735205837'
];

final List<String> kakaoEtcList = [
  'https://place.map.kakao.com/1287662476',
  'https://place.map.kakao.com/326057387',
  'https://place.map.kakao.com/20885402',
  'https://place.map.kakao.com/404647637',
  'https://place.map.kakao.com/468200097',
  'https://place.map.kakao.com/1753129148',
  'https://place.map.kakao.com/75559616',
  'https://place.map.kakao.com/375498117',
  'https://place.map.kakao.com/11088775'
];

// naver map link lists
final List <String> naverKoreanList = [
  'https://m.place.naver.com/restaurant/1352674026',
  'https://m.place.naver.com/restaurant/1017344816',
  'https://m.place.naver.com/restaurant/38274964',
  'https://m.place.naver.com/restaurant/38252282',
  'https://m.place.naver.com/restaurant/1299875051',
  'https://m.place.naver.com/restaurant/38275469',
  'https://m.place.naver.com/restaurant/1224693248',
  'https://m.place.naver.com/restaurant/1893956178',
  'https://m.place.naver.com/restaurant/31202900'
];

final List <String> naverChineseList = [
  'https://m.place.naver.com/restaurant/1732949952',
  'https://m.place.naver.com/restaurant/1270213408',
  'https://m.place.naver.com/restaurant/1289446008',
  'https://m.place.naver.com/restaurant/1181997169',
  'https://m.place.naver.com/restaurant/1889129222',
  'https://m.place.naver.com/restaurant/1777629862',
  'https://m.place.naver.com/restaurant/1811586372',
  'https://m.place.naver.com/restaurant/1919141423',
  'https://m.place.naver.com/restaurant/36504830'
];

final List <String> naverJapaneseList = [
  'https://m.place.naver.com/restaurant/1414076813',
  'https://m.place.naver.com/restaurant/19535343',
  'https://m.place.naver.com/restaurant/13475125',
  'https://m.place.naver.com/restaurant/1736095566',
  'https://m.place.naver.com/restaurant/1453555886',
  'https://m.place.naver.com/restaurant/1157398737',
  'https://m.place.naver.com/restaurant/33626741',
  'https://m.place.naver.com/restaurant/1080330680',
  'https://m.place.naver.com/restaurant/36097869'
];

final List <String> naverWesternList = [
  'https://m.place.naver.com/restaurant/1210273017',
  'https://m.place.naver.com/restaurant/1726349203',
  'https://m.place.naver.com/restaurant/1440010652',
  'https://m.place.naver.com/restaurant/1452827703',
  'https://m.place.naver.com/restaurant/1561438151',
  'https://m.place.naver.com/restaurant/154970292',
  'https://m.place.naver.com/restaurant/1752228333',
  'https://m.place.naver.com/restaurant/13341197',
  'https://m.place.naver.com/restaurant/364996702'
];

final List <String> naverAsianList = [
  'https://m.place.naver.com/restaurant/31093198',
  'https://m.place.naver.com/restaurant/1979790113',
  'https://m.place.naver.com/restaurant/70086019',
  'https://m.place.naver.com/restaurant/1363039498',
  'https://m.place.naver.com/restaurant/37420517',
  'https://m.place.naver.com/restaurant/11866833',
  'https://m.place.naver.com/restaurant/36195963',
  'https://m.place.naver.com/restaurant/1155830773',
  'https://m.place.naver.com/restaurant/1769874750'
];

final List <String> naverFastList = [
  'https://m.place.naver.com/restaurant/1514089345',
  'https://m.place.naver.com/restaurant/1853322194',
  'https://m.place.naver.com/restaurant/38705494',
  'https://m.place.naver.com/restaurant/1935683021',
  'https://m.place.naver.com/restaurant/1068055738',
  'https://m.place.naver.com/restaurant/37572950',
  'https://m.place.naver.com/restaurant/753331433',
  'https://m.place.naver.com/restaurant/37624477',
  'https://m.place.naver.com/restaurant/1448176164'
];

final List <String> naverSnackList = [
  'https://m.place.naver.com/restaurant/1068496177',
  'https://m.place.naver.com/restaurant/1923547109',
  'https://m.place.naver.com/restaurant/11856660',
  'https://m.place.naver.com/restaurant/1363994074',
  'https://m.place.naver.com/restaurant/32481151',
  'https://m.place.naver.com/restaurant/36680775',
  'https://m.place.naver.com/restaurant/1734153618',
  'https://m.place.naver.com/restaurant/32812047',
  'https://m.place.naver.com/restaurant/1817514533'
];

final List <String> naverEtcList = [
  'https://m.place.naver.com/restaurant/1087552980',
  'https://m.place.naver.com/restaurant/1005475707',
  'https://m.place.naver.com/restaurant/33237660',
  'https://m.place.naver.com/restaurant/37485940',
  'https://m.place.naver.com/restaurant/793535986',
  'https://m.place.naver.com/restaurant/1791240561',
  'https://m.place.naver.com/restaurant/1609583532',
  'https://m.place.naver.com/restaurant/1818653919',
  'https://m.place.naver.com/restaurant/32050464'
];