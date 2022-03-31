import 'package:get_it/get_it.dart';

import '../api_client.dart';

abstract class BaseRepo {
  ApiClient repo = GetIt.I.get<ApiClient>();

}