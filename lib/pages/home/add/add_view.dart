import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:uuid/v4.dart';

import '../index.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();
  final RedisConnectsController _redisConnectsController = Get.find();
  final RedisVoEntity _redisVo = Get.arguments ?? RedisVoEntity();

  Widget _buildFormFields(BuildContext context) {
    return FormBuilder(
      key: _formKey,
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
              onSaved: (value) => _redisVo.connectionName = value,
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
              onSaved: (value) => _redisVo.hostName = value,
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
              onSaved: (value) => _redisVo.port = int.parse(value ?? "6379"),
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
              onSaved: (value) => _redisVo.host = value,
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
              onSaved: (value) => _redisVo.auth = value,
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
              onSaved: (value) => _redisVo.userName = value,
            ),
            const SizedBox(height: 70),
            _buildSaveButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text(Content.addHostSaveButton.tr),
          onPressed: () {
            _formKey.currentState?.save();
            if (_formKey.currentState?.validate() == true) {
              _redisVo.insertTime ??= DateTime.now();
              _redisConnectsController.addOrUpdateRedisVo(_redisVo);
              Navigator.pop(context, _redisVo.toJson());
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

  Widget _buildAddHostBody(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: _buildFormFields(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //如果没有id 或者 insertTime 则是新增
    if (_redisVo.id == null || _redisVo.insertTime == null) {
      _redisVo.id = const UuidV4().generate();
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
        child: _buildAddHostBody(context),
      ),
    );
  }
}
