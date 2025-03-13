import 'package:boiler_plate_app/styles/styles.dart';
import 'package:boiler_plate_app/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrimaryInput extends StatelessWidget {
  final String placeholder;
  final String? errorText;
  final String? label;
  final String? initialValue;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final double? width; // add this
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? Function(String?)? onSaved;
  final bool readOnly;
  final bool showSuffixIcon;
  final bool border;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final Widget? suffixIcon;
  final AutovalidateMode? autovalidateMode;

  const PrimaryInput(this.placeholder,
      {this.onTap,
      this.width,
      this.label,
      this.maxLines,
      this.minLines,
      this.maxLength,
      this.autovalidateMode,
      this.onSubmitted,
      this.showSuffixIcon = false,
      this.suffixIcon = const Icon(Icons.chevron_right_sharp),
      this.textInputType= TextInputType.text,
      this.inputFormatters,
      this.controller,
      this.validator,
      this.errorText,
      this.onChanged,
      this.onSaved,
      this.initialValue,
      this.readOnly = false,
      this.border = true,
      Key? key})
      : super(key: key); // change this

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                label!,
                style: Styles.textStyle.smallTS.bold,
              ),
            ),
          TextFormField(
              controller: controller,
              validator: validator,
              inputFormatters: inputFormatters,
              keyboardType: textInputType,
              autovalidateMode: autovalidateMode,
              onChanged: onChanged,
              onTap: onTap,
              onFieldSubmitted: onSubmitted,
              maxLines: maxLines,
              minLines: minLines,
              maxLength: maxLength,
              onSaved: onSaved,
              readOnly: readOnly,
              initialValue: initialValue,
              decoration: InputDecoration(
                  suffixIcon: showSuffixIcon ? suffixIcon : null,
                  contentPadding: EdgeInsets.all(15.0),
                  filled: true,
                  fillColor: Styles.color.textFieldColor,
                  errorText: errorText,
                  errorMaxLines: 2,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  enabledBorder: !readOnly
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1,
                            color: Styles.color.textFieldBorderColor,
                          ))
                      : null,
                  focusedBorder: !readOnly
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1.5, color: Styles.color.primaryColor),
                        )
                      : null,
                  hintText: placeholder,
                  hintStyle: TextStyle(
                      fontSize: fontSizeSmall,
                      color: Color(fadedWhite),
                      fontFamily: fontFamilyRegular)),
              style: Styles.textStyle.normalTS),
        ],
      ),
    );
  }
}
