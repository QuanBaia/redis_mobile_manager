import 'package:get/get.dart';
import './content.dart';


class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "zh_CN" : {
      Content.homePageTitle : "主机",
      Content.homePageIsEmptyText : "请先添加 redis 连接",
      Content.homePageAddButtonHint : "添加一个连接",
      Content.homePageMenu: "打开菜单",

    },
    "zh_HK":{
      Content.homePageTitle : "主機",
      Content.homePageIsEmptyText : "請先新增 redis 連接",
      Content.homePageAddButtonHint : "新增一個連接",
      Content.homePageMenu: "開啟菜單",
    },
    "en_US":{
      Content.homePageTitle : "HOST",
      Content.homePageIsEmptyText : "Please add redis connection first",
      Content.homePageAddButtonHint : "Add a connection",
      Content.homePageMenu: "Open menu",
    },
    "ja_JP":{
      Content.homePageTitle : "ホスト",
      Content.homePageIsEmptyText : "まず、redis 接続を追加してください",
      Content.homePageAddButtonHint : "接続を追加",
      Content.homePageMenu: "メニューを開く",
    },

  };

}
