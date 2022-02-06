import 'dart:convert';
import 'package:http/http.dart';
import '../dummy_model.dart';

class HttpService {
  final dummyUri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  Future<List<Dummy>> dummyGet() async {
    Response res = await get(dummyUri);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Dummy> dummys = body
          .map(
            (dynamic item) => Dummy.fromJson(item),
      )
          .toList();

      return dummys;
    } else {
      throw "Unable to retrieve dummy data.";
    }
  }
}
