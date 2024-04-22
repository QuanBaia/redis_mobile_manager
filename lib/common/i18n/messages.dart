import 'package:get/get.dart';
import './content.dart';


class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "zh_CN" : {
      // Home Page
      Content.homePageTitle : "连接",
      Content.homePageIsEmptyText : "请先添加 redis 连接",
      Content.homePageAddButtonHint : "添加一个连接",
      Content.homePageMenu: "打开菜单",

      //  Page Menu Drawer
      Content.drawerTitle : "RedisManager",
      Content.drawerSubTitle : "管理你的 redis 连接",
      Content.drawerItemHome : "连接",
      Content.drawerItemLog : "日志",
      Content.drawerItemAbout : "关于",
      Content.drawerItemSetting : "设置",

      // Add Page
      Content.addHostBarTitle : "添加",
      // Add Page Form
      Content.addHostFromFieldHost : "主机",
      Content.addHostFromFieldHostName : "主机名",
      Content.addHostFromFieldPort : "端口",
      Content.addHostFromFieldAuth : "认证",
      Content.addHostFromFieldUserName : "用户名 ACL in Redis > 6.0 ",
      Content.addHostFromFieldConnectionName : "连接名",
      Content.addHostSaveButton : "保存",
      Content.addHostCancelButton : "取消",


      // validataion message
      Content.requiredField : " 不能为空",
      Content.isIp : "请输入正确的 IP 地址",



    },
    "zh_HK":{
      // Home Page
      Content.homePageTitle : "連接",
      Content.homePageIsEmptyText : "請先新增 redis 連接",
      Content.homePageAddButtonHint : "新增一個連接",
      Content.homePageMenu: "開啟菜單",

      //  Page Menu Drawer
      Content.drawerTitle : "RedisManager",
      Content.drawerSubTitle : "管理你的 redis 連接",
      Content.drawerItemHome : "連接",
      Content.drawerItemLog : "日誌",
      Content.drawerItemAbout : "關於",
      Content.drawerItemSetting : "設置",

      // Add Page
      Content.addHostBarTitle : "新增",
      // Add Page Form
      Content.addHostFromFieldHost : "主機",
      Content.addHostFromFieldHostName : "主機名",
      Content.addHostFromFieldPort : "端口",
      Content.addHostFromFieldAuth : "認證",
      Content.addHostFromFieldUserName : "用戶名 ACL in Redis > 6.0",
      Content.addHostFromFieldConnectionName : "連接名",
      Content.addHostSaveButton : "儲存",
      Content.addHostCancelButton : "取消",

      // validataion message
      Content.requiredField : " 不能為空",
      Content.isIp : "請輸入正確的 IP 位址",



    },
    "en_US":{
      // Home Page
      Content.homePageTitle : "Connections",
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
      Content.addHostBarTitle : "New Connection",
      // Add Page Form
      Content.addHostFromFieldHost : "Host",
      Content.addHostFromFieldHostName : "Host Name",
      Content.addHostFromFieldPort : "Port",
      Content.addHostFromFieldAuth : "Auth",
      Content.addHostFromFieldUserName : "User Name ACL in Redis > 6.0",
      Content.addHostFromFieldConnectionName : "Connection Name",
      Content.addHostSaveButton : "Save",
      Content.addHostCancelButton : "Cancel",

      // validataion message
      Content.requiredField : " is required",
      Content.isIp : "Please enter a valid IP address",
    },
    "ja_JP":{
      // Home Page
      Content.homePageTitle : "接続",
      Content.homePageIsEmptyText : "まず、redis 接続を追加してください",
      Content.homePageAddButtonHint : "接続を追加",
      Content.homePageMenu: "メニューを開く",

      //  Page Menu Drawer
      Content.drawerTitle : "RedisManager",
      Content.drawerSubTitle : "redis 接続を管理",
      Content.drawerItemHome : "接続",
      Content.drawerItemLog : "ログス",
      Content.drawerItemAbout : "について",
      Content.drawerItemSetting : "設定",

      // Add Page
      Content.addHostBarTitle : "接続の追加",
      // Add Page Form
      Content.addHostFromFieldHost : "ホスト",
      Content.addHostFromFieldHostName : "ホスト名",
      Content.addHostFromFieldPort : "ポート",
      Content.addHostFromFieldAuth : "認証",
      Content.addHostFromFieldUserName : "ユーザー名 ACL in Redis > 6.0",
      Content.addHostFromFieldConnectionName : "接続名",
      Content.addHostSaveButton : "保存",
      Content.addHostCancelButton : "キャンセル",

      // validataion message
      Content.requiredField : " は必須です",
      Content.isIp : "正しい IP アドレスを入力してください",


    },

  };

}
