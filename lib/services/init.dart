
import 'package:getapiproject/controllers/sign_in_controller.dart';
import 'package:getapiproject/services/api_services.dart';
import 'package:getapiproject/services/network_client.dart';
import 'package:get/get.dart';

import '../controllers/logout_controller.dart';
import '../controllers/sign_up_controller.dart';

Future<void> initData() async {
  Get.lazyPut(() => NetworkClient(),fenix: true,);

  Get.lazyPut(() => ApiService(networkClient: NetworkClient()),fenix: true,);
  Get.lazyPut(() => SigninController(apiService: Get.find()),fenix: true,);
    Get.lazyPut(() => SignupController(apiService: Get.find()),fenix: true,);
     Get.lazyPut(() => LogoutController(apiService: Get.find()),fenix: true,);
  //Controllers
 

  // String userToken = sharedP.getString('UserToken')!;
}
