import '../controller/messages_controller.dart';
import '../models/stories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samuel_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class StoriesItemWidget extends StatelessWidget {
  StoriesItemWidget(
    this.storiesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StoriesItemModel storiesItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            SizedBox(
              height: 54.v,
              width: 52.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: storiesItemModelObj.roy!.value,
                      height: 54.v,
                      width: 52.h,
                      radius: BorderRadius.circular(
                        27.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.green600,
                        borderRadius: BorderRadius.circular(
                          6.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.primary,
                          width: 2.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Obx(
              () => Text(
                storiesItemModelObj.roy1!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
