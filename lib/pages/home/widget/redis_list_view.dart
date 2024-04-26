import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/i18n/content.dart';
import 'package:redis_mobile_manager/common/vo/redis_vo_entity.dart';

class RedisListView extends StatelessWidget {
  const RedisListView({super.key, required this.redisVoEntity});

  final RedisVoEntity redisVoEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(redisVoEntity.connectionName ?? ''),
          subtitle: Text("${Content.addHostFromFieldHost.tr} : ${redisVoEntity.host ?? ''} ${Content.addHostFromFieldPort.tr} : ${redisVoEntity.port ?? ''}"),
          onTap: () {
            print("redisVoEntity : ${redisVoEntity.toJson()}");
          },
          trailing: const Icon(
            Icons.keyboard_arrow_right,
          ),
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }
}
