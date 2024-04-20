import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello',
        },
        'ar': {
          'hello': 'مرحبا',
        },
       
      };
  // throw UnimplementedError();
}
