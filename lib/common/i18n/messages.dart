import 'package:get/get.dart';
import './content.dart';


class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "zh_CN" : {
      Content.homePageTitle : "主机",
      Content.homePageIsEmptyText : "请先添加 redis 连接",
    },
    "zh_HK":{
      Content.homePageTitle : "主機",
      Content.homePageIsEmptyText : "請先新增 redis 連接",
    },
    "en_US":{
      Content.homePageTitle : "HOST",
      Content.homePageIsEmptyText : "Please add redis connection first",
    },
    "ja_JP":{
      Content.homePageTitle : "ホスト",
      Content.homePageIsEmptyText : "まず、redis 接続を追加してください",
    },

  };

}
