import '../controller/homepage_vthree_controller.dart';
import '../models/listportfolio1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class Listportfolio1ItemWidget extends StatelessWidget {
  Listportfolio1ItemWidget(this.listportfolio1ItemModelObj);

  Listportfolio1ItemModel listportfolio1ItemModelObj;

  var controller = Get.find<HomepageVthreeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 8,
          ),
          padding: getPadding(
            left: 16,
            top: 17,
            right: 16,
            bottom: 17,
          ),
          decoration: AppDecoration.fillLightgreen100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse2832,
                    height: getSize(
                      40.00,
                    ),
                    width: getSize(
                      40.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_sbux".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold14Gray800.copyWith(
                            height: getVerticalSize(
                              1.19,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Text(
                            "lbl_sbux".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegularblack.copyWith(
                              height: getVerticalSize(
                                1.27,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Text(
                  "lbl_80_30".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold16.copyWith(
                    height: getVerticalSize(
                      1.24,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkGray800,
                      height: getSize(
                        14.00,
                      ),
                      width: getSize(
                        14.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                      ),
                      child: Text(
                        "lbl_1_80_1_32".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular12Gray800.copyWith(
                          height: getVerticalSize(
                            1.27,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
