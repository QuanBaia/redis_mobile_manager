import 'package:redis_mobile_manager/common/utils/date_time_utils.dart';
import 'package:redis_mobile_manager/generated/json/base/json_field.dart';
import 'package:redis_mobile_manager/generated/json/redis_vo_entity.g.dart';
import 'dart:convert';
export 'package:redis_mobile_manager/generated/json/redis_vo_entity.g.dart';

@JsonSerializable()
class RedisVoEntity {
	String? id;
	String? host;
	String? hostName;
	int? port;
	String? auth;
	String? userName;
	String? connectionName;
	DateTime? insertTime;
	DateTime? lastConnectTime;



	RedisVoEntity();

	factory RedisVoEntity.fromJson(Map<String, dynamic> json) => $RedisVoEntityFromJson(json);

	Map<String, dynamic> toJson() => $RedisVoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this,toEncodable: DateTimeUtils.dateTimeEncode);
	}
}
