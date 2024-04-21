import 'package:get/get.dart';
import './content.dart';


class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "zh_CN" : {
      // Home Page
      Content.homePageTitle : "主机",
      Content.homePageIsEmptyText : "请先添加 redis 连接",
      Content.homePageAddButtonHint : "添加一个连接",
      Content.homePageMenu: "打开菜单",

      //  Page Menu Drawer
      Content.drawerTitle : "RedisManager",
      Content.drawerSubTitle : "管理你的 redis 连接",
      Content.drawerItemHome : "主机",
      Content.drawerItemLog : "日志",
      Content.drawerItemAbout : "关于",
      Content.drawerItemSetting : "设置",

      // Add Page
      Content.addHostBarTitle : "添加",

    },
    "zh_HK":{
      // Home Page
      Content.homePageTitle : "主機",
      Content.homePageIsEmptyText : "請先新增 redis 連接",
      Content.homePageAddButtonHint : "新增一個連接",
      Content.homePageMenu: "開啟菜單",

      //  Page Menu Drawer
      Content.drawerTitle : "RedisManager",
      Content.drawerSubTitle : "管理你的 redis 連接",
      Content.drawerItemHome : "主機",
      Content.drawerItemLog : "日誌",
      Content.drawerItemAbout : "關於",
      Content.drawerItemSetting : "設置",

      // Add Page
      Content.addHostBarTitle : "新增",


    },
    "en_US":{
      // Home Page
      Content.homePageTitle : "HOST",
      Content.homePageIsEmptyText : "Please add redis connection first",
      Content.homePageAddButtonHint : "Add a connection",
      Content.homePageMenu: "Open menu",

      // Home Page Menu Drawer
      Content.drawerTitle : "RedisManager",
      Content.drawerSubTitle : "Manage your redis connections",
      Content.drawerItemHome : "Host",
      Content.drawerItemLog : "Logs",
      Content.drawerItemAbout : "About",
      Content.drawerItemSetting : "Setting",

      // Add Page
      Content.addHostBarTitle : "Add",
    },
    "ja_JP":{
      // Home Page
      Content.homePageTitle : "ホスト",
      Content.homePageIsEmptyText : "まず、redis 接続を追加してください",
      Content.homePageAddButtonHint : "接続を追加",
      Content.homePageMenu: "メニューを開く",

      //  Page Menu Drawer
      Content.drawerTitle : "RedisManager",
      Content.drawerSubTitle : "redis 接続を管理",
      Content.drawerItemHome : "ホスト",
      Content.drawerItemLog : "ログス",
      Content.drawerItemAbout : "について",
      Content.drawerItemSetting : "設定",

      // Add Page
      Content.addHostBarTitle : "追加",

    },

  };

}
