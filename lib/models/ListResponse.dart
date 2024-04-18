// To parse this JSON data, do
//
//     final addItemFilter = addItemFilterFromJson(jsonString);

import 'package:boiler_plate_app/api/api_response.dart';
import 'package:boiler_plate_app/models/baseModel.dart';

class ListResponse<T extends BaseModel> extends BaseModel{
  ListResponse({
     this.items,
    this.creator
  });
  ItemCreator<T>? creator;
  List<T>? items;

  @override
  fromJson(dynamic json) {
    T t=creator!();
    return ListResponse<T>(
      items: json == null ? [] : List<T>.from(json.map((x) => t.fromJson(x))),
    );
  }
}


