import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          '1': 'Choose Language',
        },
        'ar': {
          '1': 'أختر اللغة : ',
        }
      };
  // throw UnimplementedError();
}
