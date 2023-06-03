import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      shape:BoxShape.circle,
      color: _setColor(),
      border: _setBorder(),
      // borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case IconButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      case IconButtonPadding.PaddingAll22:
        return getPadding(
          all: 22,
        );
      case IconButtonPadding.PaddingAll1:
        return getPadding(
          all: 1,
        );
      case IconButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillWhiteA70014:
        return ColorConstant.whiteA70014;
      case IconButtonVariant.lightGrayBgIconButton:
        return ColorConstant.lightGray;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillBlue700:
        return ColorConstant.blue700;
      case IconButtonVariant.OutlineGray200:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillLightblue900:
        return ColorConstant.lightBlack;
      case IconButtonVariant.OutlineDeeporange40084:
        return ColorConstant.blue700;
      case IconButtonVariant.FillIndigoA200:
        return ColorConstant.indigoA200;
      case IconButtonVariant.FillPurple300:
        return ColorConstant.purple300;
      case IconButtonVariant.FillGreen50001:
        return ColorConstant.green50001;
      case IconButtonVariant.FillGray10001:
        return ColorConstant.gray10001;
      case IconButtonVariant.OutlineBlack9000c:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillGray60014:
        return ColorConstant.gray60014;
      case IconButtonVariant.OutlineGray20001: //OutlineGray200
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineWhiteA7004c:
        return null;
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray200:
        return Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineWhiteA7004c:
        return Border.all(
          color: ColorConstant.whiteA7004c,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineGray20001:
        return Border.all(
          color: ColorConstant.gray20001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillWhiteA70014:
      case IconButtonVariant.lightGrayBgIconButton:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillBlue700:
      case IconButtonVariant.FillLightblue900:
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.OutlineDeeporange40084:
      case IconButtonVariant.FillIndigoA200:
      case IconButtonVariant.FillPurple300:
      case IconButtonVariant.FillGreen50001:
      case IconButtonVariant.FillGray10001:
      case IconButtonVariant.OutlineBlack9000c:
      case IconButtonVariant.FillGray60014:
        return null;
      default:
        return null;
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.OutlineWhiteA7004c:
        return LinearGradient(
          begin: Alignment(
            0.88,
            0.04,
          ),
          end: Alignment(
            0.19,
            1,
          ),
          colors: [
            ColorConstant.lightBlack,
            ColorConstant.lightBlack,
          ],
        );
      case IconButtonVariant.FillWhiteA70014:
      case IconButtonVariant.lightGrayBgIconButton:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillBlue700:
      case IconButtonVariant.OutlineGray200:
      case IconButtonVariant.FillLightblue900:
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.OutlineDeeporange40084:
      case IconButtonVariant.FillIndigoA200:
      case IconButtonVariant.FillPurple300:
      case IconButtonVariant.FillGreen50001:
      case IconButtonVariant.FillGray10001:
      case IconButtonVariant.OutlineBlack9000c:
      case IconButtonVariant.FillGray60014:
      case IconButtonVariant.OutlineGray20001:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineDeeporange40084:
        return [
          BoxShadow(
            color: ColorConstant.blue700.withOpacity(0.52),
            spreadRadius: getHorizontalSize(
              -8,
            ),
            blurRadius: getHorizontalSize(
              24.00,
            ),
            offset: Offset(
              0,
              16,
            ),
          )
        ];
      case IconButtonVariant.OutlineBlack9000c:
        return [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          )
        ];
      case IconButtonVariant.FillWhiteA70014:
      case IconButtonVariant.lightGrayBgIconButton:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillBlue700:
      case IconButtonVariant.OutlineGray200:
      case IconButtonVariant.FillLightblue900:
      case IconButtonVariant.OutlineWhiteA7004c:
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.FillIndigoA200:
      case IconButtonVariant.FillPurple300:
      case IconButtonVariant.FillGreen50001:
      case IconButtonVariant.FillGray10001:
      case IconButtonVariant.FillGray60014:
      case IconButtonVariant.OutlineGray20001:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder25,
  CircleBorder22,
  CircleBorder32,
  CircleBorder8,
  CircleBorder28,
  RoundedBorder12,
  CircleBorder18,
  RoundedBorder1,
  CircleBorder15,
  RoundedBorder8,
}

enum IconButtonPadding {
  PaddingAll13,
  PaddingAll10,
  PaddingAll16,
  PaddingAll22,
  PaddingAll1,
  PaddingAll5,
}

enum IconButtonVariant {
  FillWhiteA70014,
  lightGrayBgIconButton,
  FillWhiteA700,
  FillBlue700,
  OutlineGray200,
  FillLightblue900,
  OutlineWhiteA7004c,
  FillGray100,
  OutlineDeeporange40084,
  FillIndigoA200,
  FillPurple300,
  FillGreen50001,
  FillGray10001,
  OutlineBlack9000c,
  FillGray60014,
  OutlineGray20001,
}
//lightGray
