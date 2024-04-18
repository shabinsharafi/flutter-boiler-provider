import 'package:flutter/material.dart';
import 'package:boiler_plate_app/styles/theme.dart';

class FormValidator extends StatelessWidget {
  FormFieldValidator? validator;
  Widget child;
  double margin;

  FormValidator({this.child = const SizedBox(), this.validator, this.margin=0});

  @override
  Widget build(BuildContext context) {
    return FormField(
        validator: validator,
        builder: (FormFieldState<dynamic> field) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              child,
              if (field.hasError)
                Padding(
                  padding:  EdgeInsets.only(top: 8.0,left: margin),
                  child: Text(
                    field.errorText ?? "",
                    style: errorStyle(context),
                  ),
                )
            ],
          );
        });
  }
}
