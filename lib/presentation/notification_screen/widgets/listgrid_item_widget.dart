import '../controller/notification_controller.dart';
import '../models/listgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListgridItemWidget extends StatelessWidget {
  ListgridItemWidget(this.listgridItemModelObj);

  ListgridItemModel listgridItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 44,
          width: 44,
          margin: getMargin(
            bottom: 46,
            right: 15
          ),
          variant: IconButtonVariant.FillBlue700,
          shape: IconButtonShape.CircleBorder22,
          padding: IconButtonPadding.PaddingAll10,
          child: CustomImageView(
            svgPath: ImageConstant.imgGrid,
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_dinvest".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold16.copyWith(
                        height: getVerticalSize(
                          1.24,
                        ),
                      ),
                    ),

                    Expanded(child: Text(
                      "lbl_3_12_pm".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                      style: AppStyle.txtInterRegular12.copyWith(
                        height: getVerticalSize(
                          1.27,
                        ),
                      ),
                    ),)


                  ],
                ),
                Container(
                  margin: getMargin(
                    top: 11,
                  ),
                  child: Text(
                    "msg_now_dinvest_has".tr,
                    maxLines: null,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                      height: getVerticalSize(
                        1.19,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
