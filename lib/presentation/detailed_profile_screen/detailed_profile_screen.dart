import 'controller/detailed_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:samuel_s_application3/core/app_export.dart';
import 'package:samuel_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:samuel_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:samuel_s_application3/widgets/app_bar/custom_app_bar.dart';

class DetailedProfileScreen extends GetWidget<DetailedProfileController> {
  const DetailedProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_profile".tr,
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 21.v),
                  Divider(),
                  SizedBox(height: 30.v),
                  SizedBox(
                      height: 126.v,
                      width: 124.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse14120x120,
                            height: 120.adaptSize,
                            width: 120.adaptSize,
                            radius: BorderRadius.circular(60.h),
                            alignment: Alignment.topLeft),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGroup9077,
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEdit,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          alignment: Alignment.center)
                                    ])))
                      ])),
                  SizedBox(height: 46.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildEmailRow(
                          emailLabel: "lbl_username".tr,
                          emailText: "lbl_rosalia".tr)),
                  SizedBox(height: 29.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildEmailRow(
                          emailLabel: "lbl_email".tr,
                          emailText: "lbl_xyz_gmail_com".tr)),
                  SizedBox(height: 28.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildEmailRow(
                          emailLabel: "lbl_phone".tr,
                          emailText: "msg_12_3456_789_000".tr)),
                  SizedBox(height: 37.v),
                  Divider(),
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildEmailRow(
                          emailLabel: "lbl_gender".tr,
                          emailText: "lbl_female".tr)),
                  SizedBox(height: 29.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildEmailRow(
                          emailLabel: "lbl_date_of_birth2".tr,
                          emailText: "lbl_21_08_1992".tr)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack();
            }),
        actions: [
          AppbarTitle(
              text: "lbl_done".tr,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 14.v))
        ]);
  }

  /// Common widget
  Widget _buildEmailRow({
    required String emailLabel,
    required String emailText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(emailLabel,
              style: CustomTextStyles.bodyLarge18
                  .copyWith(color: appTheme.blueGray400))),
      Text(emailText,
          style: CustomTextStyles.bodyLargeBlack90001
              .copyWith(color: appTheme.black90001))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }
}
