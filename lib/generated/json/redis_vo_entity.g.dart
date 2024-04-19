import 'package:redis_mobile_manager/generated/json/base/json_convert_content.dart';
import 'package:redis_mobile_manager/common/vo/redis_vo_entity.dart';

RedisVoEntity $RedisVoEntityFromJson(Map<String, dynamic> json) {
  final RedisVoEntity redisVoEntity = RedisVoEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
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
  return redisVoEntity;
}

Map<String, dynamic> $RedisVoEntityToJson(RedisVoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['host'] = entity.host;
  data['hostName'] = entity.hostName;
  data['auth'] = entity.auth;
  data['userName'] = entity.userName;
  data['connectionName'] = entity.connectionName;
  return data;
}

extension RedisVoEntityExtension on RedisVoEntity {
  RedisVoEntity copyWith({
    int? id,
    String? host,
    String? hostName,
    String? auth,
    String? userName,
    String? connectionName,
  }) {
    return RedisVoEntity()
      ..id = id ?? this.id
      ..host = host ?? this.host
      ..hostName = hostName ?? this.hostName
      ..auth = auth ?? this.auth
      ..userName = userName ?? this.userName
      ..connectionName = connectionName ?? this.connectionName;
  }
}
