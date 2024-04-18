import 'dart:convert';
import 'dart:math';

import 'package:boiler_plate_app/api/api_response.dart';
import 'package:boiler_plate_app/models/userModel.dart';
import 'package:boiler_plate_app/ui/authScreen/loginScreen.dart';
import 'package:boiler_plate_app/utils/NavigationService.dart';
import 'package:flutter/cupertino.dart';
import 'package:boiler_plate_app/api/remote_config_service.dart';
import 'package:boiler_plate_app/api/userApi.dart';

class UserProvider with ChangeNotifier {
  late ApiResponse userResponse;
  late UserModel user;
/*
  Future<ApiResponse> getProfile() async {
    ApiResponse dataResponse = await UserApi.getInstance().getProfile();
    userResponse = dataResponse;
    user = dataResponse.data;
    return dataResponse;
  }*/

/*void getPetColors() async {
    RemoteConfigService _remoteConfigService =
        await RemoteConfigService.getInstance();
    await _remoteConfigService.setupRemoteConfig();
     petColors = json.decode(_remoteConfigService.getPetColors);
  }*/
}
