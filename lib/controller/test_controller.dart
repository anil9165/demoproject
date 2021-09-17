import 'package:anilmastertest/controller/base_controller.dart';
import 'package:anilmastertest/services/base_client.dart';

class TestController with BaseController {
  dynamic getData() async {
    showLoader();
    var res = await BaseClient()
        .get('https://jsonplaceholder.typicode.com', '/todos/1')
        .catchError(handleError);
    if (res == null) return;
    hideLoader();
    print(res);
    return res;
  }
}
