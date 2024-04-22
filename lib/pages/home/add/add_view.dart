import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:redis_mobile_manager/common/bindings/redis_connects_controller.dart';
import 'package:uuid/v4.dart';

import 'index.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    final RedisConnectsController redisConnectsController = Get.find();

    final AddStyle addStyle = AddStyle();
    RedisVoEntity redisVo = Get.arguments;
    //如果没有id 或者 insertTime 则是新增
    if (redisVo.id == null || redisVo.insertTime == null) {
      redisVo = RedisVoEntity();
      redisVo.id = const UuidV4().generate();
    }

    Widget buildSaveButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text(Content.addHostSaveButton.tr),
            onPressed: () {
              formKey.currentState?.save();
              if (formKey.currentState?.validate() == true) {
                redisVo.insertTime ??= DateTime.now();
                redisConnectsController.addOrUpdateRedisVo(redisVo);
                Navigator.pop(context, redisVo.toJson());
              }
            },
          ),
          ElevatedButton(
            child: Text(Content.addHostCancelButton.tr),
            onPressed: () {
              Navigator.pop(context, 1);
            },
          ),
        ],
      );
    }

    Widget buildFormFields() {
      return FormBuilder(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            children: [
              FormBuilderTextField(
                name: 'connectionName',
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: Content.addHostFromFieldConnectionName.tr,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                      errorText: Content.addHostFromFieldConnectionName.tr +
                          Content.requiredField.tr),
                ]),
                onSaved: (value) => redisVo.connectionName = value,
              ),
              const Divider(height: 20),
              FormBuilderTextField(
                name: 'hostName',
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: Content.addHostFromFieldHostName.tr,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                      errorText: Content.addHostFromFieldHostName.tr +
                          Content.requiredField.tr),
                ]),
                onSubmitted: (value) {},
                onSaved: (value) => redisVo.hostName = value,
              ),
              const Divider(height: 20),
              FormBuilderTextField(
                name: 'port',
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: Content.addHostFromFieldPort.tr,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                      errorText: Content.addHostFromFieldPort.tr +
                          Content.requiredField.tr),
                ]),
                // 只允许输入数字
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                initialValue: "6379",
                onSubmitted: (value) {},
                onSaved: (value) => redisVo.port = int.parse(value ?? "6379"),
              ),
              const Divider(height: 20),
              FormBuilderTextField(
                name: 'host',
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: Content.addHostFromFieldHost.tr,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                      errorText: Content.addHostFromFieldHost.tr +
                          Content.requiredField.tr),
                  FormBuilderValidators.ip(errorText: Content.isIp.tr),
                ]),
                keyboardType: TextInputType.number,
                onSubmitted: (value) {},
                onSaved: (value) => redisVo.host = value,
              ),
              const Divider(height: 20),
              FormBuilderTextField(
                name: 'auth',
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: Content.addHostFromFieldAuth.tr,
                ),
                obscureText: true,
                validator: FormBuilderValidators.compose([]),
                onSubmitted: (value) {},
                onSaved: (value) => redisVo.auth = value,
              ),
              const Divider(height: 20),
              FormBuilderTextField(
                name: 'userName',
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: Content.addHostFromFieldUserName.tr,
                ),
                validator: FormBuilderValidators.compose([]),
                onSubmitted: (value) {},
                onSaved: (value) => redisVo.userName = value,
              ),
              const SizedBox(height: 70),
              buildSaveButton(),
            ],
          ),
        ),
      );
    }

    Widget buildAddHostBody() {
      return Container(
        height: double.infinity,
        width: double.infinity,
        padding: addStyle.padding,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: buildFormFields(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(Content.addHostBarTitle.tr),
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (Widget child, Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation) {
          return FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: buildAddHostBody(),
      ),
    );
  }
}
