import 'dart:async';

import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/portfolio_page/portfolio_page.dart';
import 'package:investment_app/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  @override
  Future<void> onReady() async {
    // bool isLogin = await PrefUtils.getIsLogin();
    bool isLogin = true;
    super.onReady();
    Timer(const Duration(seconds: 3), () {
      if (isLogin) {
        Get.off(PortfolioPage());
        // Get.toNamed(AppRoutes.homepageVthreeContainerScreen);
        // Get.toNamed(AppRoutes.portfolioPage);
        // Get.toNamed(AppRoutes.portfolioPage);
      } // } else {
      //   Get.toNamed(AppRoutes.homepageVthreeContainerScreen);
      // }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
