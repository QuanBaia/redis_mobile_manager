import 'package:redis_mobile_manager/generated/json/base/json_convert_content.dart';
import 'package:redis_mobile_manager/common/vo/redis_vo_entity.dart';

RedisVoEntity $RedisVoEntityFromJson(Map<String, dynamic> json) {
  final RedisVoEntity redisVoEntity = RedisVoEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    redisVoEntity.id = id;
  }
  final String? host = jsonConvert.convert<String>(json['host']);
  if (host != null) {
    redisVoEntity.host = host;
  }
  final String? hostName = jsonConvert.convert<String>(json['hostName']);
  if (hostName != null) {
    redisVoEntity.hostName = hostName;
  }
  final int? port = jsonConvert.convert<int>(json['port']);
  if (port != null) {
    redisVoEntity.port = port;
  }
  final String? auth = jsonConvert.convert<String>(json['auth']);
  if (auth != null) {
    redisVoEntity.auth = auth;
  }
  final String? userName = jsonConvert.convert<String>(json['userName']);
  if (userName != null) {
    redisVoEntity.userName = userName;
  }
  final String? connectionName = jsonConvert.convert<String>(
      json['connectionName']);
  if (connectionName != null) {
    redisVoEntity.connectionName = connectionName;
  }
  final DateTime? insertTime = jsonConvert.convert<DateTime>(json['insertTime']);
  if(insertTime!= null){
    redisVoEntity.insertTime = insertTime;
  }
  final DateTime? lastConnectTime = jsonConvert.convert<DateTime>(json['lastConnectTime']);
  if(lastConnectTime!= null){
    redisVoEntity.lastConnectTime = lastConnectTime;
  }
  return redisVoEntity;
}

Map<String, dynamic> $RedisVoEntityToJson(RedisVoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['host'] = entity.host;
  data['hostName'] = entity.hostName;
  data['port'] = entity.port;
  data['auth'] = entity.auth;
  data['userName'] = entity.userName;
  data['connectionName'] = entity.connectionName;
  data['insertTime'] = entity.insertTime?.toIso8601String();
  data['lastConnectTime'] = entity.lastConnectTime?.toIso8601String();
  return data;
}

extension RedisVoEntityExtension on RedisVoEntity {
  RedisVoEntity copyWith({
    String? id,
    String? host,
    String? hostName,
    int? port,
    String? auth,
    String? userName,
    String? connectionName,
    DateTime? insertTime,
    DateTime? lastConnectTime,
  }) {
    return RedisVoEntity()
      ..id = id ?? this.id
      ..host = host ?? this.host
      ..hostName = hostName ?? this.hostName
      ..port = port ?? this.port
      ..auth = auth ?? this.auth
      ..userName = userName ?? this.userName
      ..connectionName = connectionName ?? this.connectionName
      ..insertTime = insertTime ?? this.insertTime
      ..lastConnectTime = lastConnectTime ?? this.lastConnectTime;
  }
}
