import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/assets_url.dart';
import 'package:redis_mobile_manager/common/i18n/content.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  // 主体内容
  Widget _buildEmptyView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon
          SvgPicture.asset(
            fit: BoxFit.contain,
            height: Get.height * 0.4,
            width: Get.height * 0.4,
            AssetsUrl.homePageIsEmpty,
          ),


          // message
          _buildEmptyMessage(),
        ],
      ),
    );
  }

  // 如果没有数据，提示的信息
  Widget _buildEmptyMessage() {
    return Text(
      Content.homePageIsEmptyText.tr,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildEmptyView();
  }
}
