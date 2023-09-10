import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:html/parser.dart' as htmlParser;

Future<List<Map<String, dynamic>>> getBlogSearchResults(String restaurant) async {
  final String clientId = "ZaYfmkYyJ4VyCw0P4BLT"; // 네이버 개발자 포털에서 발급받은 클라이언트 아이디
  final String clientSecret = "8I9EqoMWVI"; // 네이버 개발자 포털에서 발급받은 클라이언트 시크릿

  final String encodedRestaurant = Uri.encodeComponent(restaurant);
  final String apiUrl = "https://openapi.naver.com/v1/search/blog?query=홍대+$encodedRestaurant";

  final Map<String, String> requestHeaders = {
    "X-Naver-Client-Id": clientId,
    "X-Naver-Client-Secret": clientSecret,
  };

  final response = await http.get(Uri.parse(apiUrl), headers: requestHeaders);

  if (response.statusCode == 200) {
    final decodedData = json.decode(response.body);
    final items = decodedData['items'] as List<dynamic>;

    final List<Map<String, dynamic>> searchResults = items.map((item) {
      final String title = _parseHtml(item['title'].toString());
      final String description = _parseHtml(item['description'].toString());
      final String link = item['link'].toString();

      return {
        'title': title,
        'description': description,
        'link': link,
      };
    }).toList();

    return searchResults;
  } else {
    throw Exception('Failed to fetch blog search results');
  }
}

String _parseHtml(String htmlString) {
  final document = htmlParser.parse(htmlString);
  final text = parse(document.body!.text).documentElement!.text;

  return text;
}