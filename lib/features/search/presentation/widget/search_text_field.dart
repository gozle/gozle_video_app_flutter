import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.focusNode,
    required this.queryTC,
    required this.onSubmitted,
    required this.onChanged,
    required this.onSuffixIconPressed,
    required this.hintText,
    required this.autofocus,
    required this.onFocused,
  });
  final String hintText;
  final bool autofocus;
  final FocusNode focusNode;
  final TextEditingController queryTC;
  final Function(String? value) onSubmitted;
  final Function(String? value) onChanged;
  final Function() onSuffixIconPressed;
  final Function() onFocused;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus,
      controller: queryTC,
      focusNode: focusNode,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      keyboardType: TextInputType.text,
      cursorColor: Theme.of(context).iconTheme.color,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.search,
      style: Theme.of(context).textTheme.bodyMedium,
      onTap: onFocused,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 2,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 2,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          contentPadding: const EdgeInsets.only(left: 10),
          constraints: const BoxConstraints(maxHeight: 40),
          suffixIconConstraints: const BoxConstraints(maxHeight: 45),
          suffixIcon: IconButton(
            onPressed: onSuffixIconPressed,
            icon: Icon(
              Icons.close,
              color: Theme.of(context).iconTheme.color,
            ),
          )),
    );
  }
}
