import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedService extends GetxService {
  final Future<SharedPreferences> _preferences = SharedPreferences.getInstance();

  get sharedPreferences => _preferences;

  void addListValueOrUpdate(String key, dynamic value) {
    _preferences.then((preferences) {
      // 先获取集合
      var list = preferences.getStringList(key);
      // 判断集合是否为空
      list ??= [];
      // 向集合中添加新值 如果 有相同的值 则不添加则更新
      var exist = false;
      for (var i = 0; i < list.length; i++) {
        var item = list[i];
        if (jsonDecode(item)['id'] == value['id']) {
          list[i] = jsonEncode(value);
          exist = true;
          return;
        }
      }
      if (!exist) {
        list.add(jsonEncode(value));
      }
      // 保存到SharedPreferences
      preferences.setStringList(key, list);
    });
  }

  void removeListValue (String key,int id) {
    _preferences.then((preferences) {
      // 先获取集合
      var list = preferences.getStringList(key);
      // 判断集合是否为空
      if (list == null) {
        return;
      }
      // 遍历集合，移除指定元素
      list.removeWhere((element) => jsonDecode(element)['id'] == id);
      // 保存到SharedPreferences
      preferences.setStringList(key, list);
    });
  }

  Future<Map<String, dynamic>> getListValue (String key,int id) async {

    final preferences = await _preferences;
    var list = preferences.getStringList(key);
    if (list == null) {
      return {};
    }

    for (var element in list) {
      var json = jsonDecode(element);
      if (json['id'] == id) {
        return json;
      }
    }

    return {};
  }

  Future<List<Map<String, dynamic>>> getListValues(String key) async {
    List<Map<String, dynamic>> list = [];
    final preferences = await _preferences;

    var listString = preferences.getStringList(key);
    if (listString == null) {
      return list;
    }

    for (var element in listString) {
      list.add(jsonDecode(element));
    }

    return list;
  }
}
