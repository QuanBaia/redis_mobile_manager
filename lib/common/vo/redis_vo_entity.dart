import 'package:redis_mobile_manager/generated/json/base/json_field.dart';
import 'package:redis_mobile_manager/generated/json/redis_vo_entity.g.dart';
import 'dart:convert';
export 'package:redis_mobile_manager/generated/json/redis_vo_entity.g.dart';

@JsonSerializable()
class RedisVoEntity {
	int? id;
	String? host;
	String? hostName;
	String? auth;
	String? userName;
	String? connectionName;

	RedisVoEntity();

	factory RedisVoEntity.fromJson(Map<String, dynamic> json) => $RedisVoEntityFromJson(json);

	Map<String, dynamic> toJson() => $RedisVoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
