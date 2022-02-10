import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';

class DropdownButtonForm extends StatelessWidget {
  DropdownButtonForm({
    required this.currencies,
    required this.selectCurrencies,
    required this.onChanged,
    required this.onTap,
    required this.labelText,
  });
  List<String> currencies;
  String selectCurrencies;
  String labelText;
  Function onChanged;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return SizedBox(
          height: 59,
          child: InputDecorator(
            isEmpty: selectCurrencies == '',
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(color: ColorHex.colorFromHex("#2755A5")),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      BorderSide(color: ColorHex.colorFromHex("#2755A5"))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      BorderSide(color: ColorHex.colorFromHex("#2755A5"))),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                onTap: () {
                  onTap();
                },
               value: selectCurrencies == '' ? null : selectCurrencies,
                isExpanded: true,
                isDense: true,
                onChanged: (newValue) {
                  onChanged(newValue);
                  //selectCurrencies=newValue.toString();
                },
                items: currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      //style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
