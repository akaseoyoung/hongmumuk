import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart'; // 네이버 맵 SDK 임포트
import 'package:hongmumuk/screens/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeNaverMap(); // 네이버 지도 초기화

  runApp(const MyApp());
}

Future<void> initializeNaverMap() async {
  await NaverMapSdk.instance.initialize(
    clientId: 'ji0fne2vj4', // 네이버 지도 클라이언트 ID 설정
    onAuthFailed: (e) => print("네이버맵 인증오류 : $e"),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hongmagip',
      theme: ThemeData(
        fontFamily: 'Pretendard',
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: ViewScreen(),
    );
  }
}
