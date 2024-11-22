// ignore_for_file: prefer_typing_uninitialized_variables

library pretty_textfield;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrettyTextField extends StatefulWidget {
  const PrettyTextField({
    Key? key,
    this.borderColor = Colors.red,
    this.labelText,
    this.width,
    this.autocorrect = true,
    this.autofillHints,
    this.autofocus = false,
    this.buildCounter,
    this.clipBehavior = Clip.hardEdge,
    this.cursorColor,
    this.cursorHeight,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.dragStartBehavior = DragStartBehavior.start,
    this.enabled,
    this.enableIMEPersonalizedLearning = true,
    this.enableInteractiveSelection,
    this.enableSuggestions = true,
    this.expands = false,
    this.focusNode,
    this.inputFormatters,
    this.keyboardAppearance,
    this.keyboardType,
    this.maxLength,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.mouseCursor,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.onAppPrivateCommand,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.scrollPhysics,
    this.showCursor,
    this.strutStyle,
    this.style,
    this.textAlignVertical,
    this.textInputAction,
    this.textDirection,
    this.contextMenuBuilder,
    this.textAlign = TextAlign.start,
    this.controller,
  }) : super(key: key);

  final Color borderColor;
  final String? labelText;
  final double? width;
  final bool autocorrect;
  final Iterable<String>? autofillHints;
  final bool autofocus;
  final Widget? Function(BuildContext, {required int currentLength, required bool isFocused, required int? maxLength})? buildCounter;
  final Clip clipBehavior;
  final Color? cursorColor;
  final double? cursorHeight;
  final double cursorWidth;
  final Radius? cursorRadius;
  final DragStartBehavior dragStartBehavior;
  final bool? enabled;
  final bool enableIMEPersonalizedLearning;
  final bool? enableInteractiveSelection;
  final bool enableSuggestions;
  final bool expands;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final Brightness? keyboardAppearance;
  final TextInputType? keyboardType;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final MouseCursor? mouseCursor;
  final bool obscureText;
  final String obscuringCharacter;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final EdgeInsets scrollPadding;
  final ScrollPhysics? scrollPhysics;
  final bool? showCursor;
  final StrutStyle? strutStyle;
  final TextStyle? style;
  final TextAlignVertical? textAlignVertical;
  final TextInputAction? textInputAction;
  final TextDirection? textDirection;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final TextAlign textAlign;
  final TextEditingController? controller;

  @override
  State<PrettyTextField> createState() => _PrettyTextFieldState();
}

class _PrettyTextFieldState extends State<PrettyTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = widget.controller ?? TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
      width: widget.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.red)),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: widget.labelText,
        ),
        controller: controller,
        textAlign: widget.textAlign,
        autocorrect: widget.autocorrect,
        autofillHints: widget.autofillHints,
        autofocus: widget.autofocus,
        buildCounter: widget.buildCounter,
        clipBehavior: widget.clipBehavior,
        cursorColor: widget.cursorColor,
        cursorHeight: widget.cursorHeight,
        cursorWidth: widget.cursorWidth,
        cursorRadius: widget.cursorRadius,
        dragStartBehavior: widget.dragStartBehavior,
        enabled: widget.enabled,
        enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        enableSuggestions: widget.enableSuggestions,
        expands: widget.expands,
        focusNode: widget.focusNode,
        inputFormatters: widget.inputFormatters,
        keyboardAppearance: widget.keyboardAppearance,
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        maxLengthEnforcement: widget.maxLengthEnforcement,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        mouseCursor: widget.mouseCursor,
        obscureText: widget.obscureText,
        obscuringCharacter: widget.obscuringCharacter,
        onAppPrivateCommand: widget.onAppPrivateCommand,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        scrollPadding: widget.scrollPadding,
        scrollPhysics: widget.scrollPhysics,
        showCursor: widget.showCursor,
        strutStyle: widget.strutStyle,
        style: widget.style,
        textAlignVertical: widget.textAlignVertical,
        textInputAction: widget.textInputAction,
        textDirection: widget.textDirection,
        contextMenuBuilder: widget.contextMenuBuilder,
      ),
    );
  }
}

class ErrorTextField extends StatefulWidget {
  const ErrorTextField({
    Key? key,
    this.labelText,
    this.width,
    this.autocorrect = true,
    this.autofillHints,
    this.autofocus = false,
    this.buildCounter,
    this.clipBehavior = Clip.hardEdge,
    this.cursorColor,
    this.cursorHeight,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.dragStartBehavior = DragStartBehavior.start,
    this.enabled,
    this.enableIMEPersonalizedLearning = true,
    this.enableInteractiveSelection,
    this.enableSuggestions = true,
    this.expands = false,
    this.focusNode,
    this.inputFormatters,
    this.keyboardAppearance,
    this.keyboardType,
    this.maxLength,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.mouseCursor,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.onAppPrivateCommand,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.scrollPhysics,
    this.showCursor,
    this.strutStyle,
    this.style,
    this.textAlignVertical,
    this.textInputAction,
    this.textDirection,
    this.contextMenuBuilder,
    this.textAlign = TextAlign.start,
    this.controller,
  }) : super(key: key);

  final String? labelText;
  final double? width;
  final bool autocorrect;
  final Iterable<String>? autofillHints;
  final bool autofocus;
  final Widget? Function(BuildContext, {required int currentLength, required bool isFocused, required int? maxLength})? buildCounter;
  final Clip clipBehavior;
  final Color? cursorColor;
  final double? cursorHeight;
  final double cursorWidth;
  final Radius? cursorRadius;
  final DragStartBehavior dragStartBehavior;
  final bool? enabled;
  final bool enableIMEPersonalizedLearning;
  final bool? enableInteractiveSelection;
  final bool enableSuggestions;
  final bool expands;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final Brightness? keyboardAppearance;
  final TextInputType? keyboardType;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final MouseCursor? mouseCursor;
  final bool obscureText;
  final String obscuringCharacter;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final EdgeInsets scrollPadding;
  final ScrollPhysics? scrollPhysics;
  final bool? showCursor;
  final StrutStyle? strutStyle;
  final TextStyle? style;
  final TextAlignVertical? textAlignVertical;
  final TextInputAction? textInputAction;
  final TextDirection? textDirection;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final TextAlign textAlign;
  final TextEditingController? controller;

  @override
  State<ErrorTextField> createState() => _ErrorTextFieldState();
}

class _ErrorTextFieldState extends State<ErrorTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = widget.controller ?? TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.red,
      initialValue: 'Input text',
      maxLength: 20,
      decoration: const InputDecoration(
        icon: Icon(Icons.favorite),
        labelText: 'Label text',
        labelStyle: TextStyle(
          color: Color(0xFF6200EE),
        ),
        helperText: 'Helper text',
        suffixIcon: Icon(
          Icons.check_circle,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF6200EE)),
        ),
      ),
      controller: controller,
      textAlign: widget.textAlign,
      autocorrect: widget.autocorrect,
      autofillHints: widget.autofillHints,
      autofocus: widget.autofocus,
      buildCounter: widget.buildCounter,
      cursorHeight: widget.cursorHeight,
      cursorWidth: widget.cursorWidth,
      cursorRadius: widget.cursorRadius,
      enabled: widget.enabled,
      enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      enableSuggestions: widget.enableSuggestions,
      expands: widget.expands,
      focusNode: widget.focusNode,
      inputFormatters: widget.inputFormatters,
      keyboardAppearance: widget.keyboardAppearance,
      keyboardType: widget.keyboardType,
      maxLengthEnforcement: widget.maxLengthEnforcement,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      mouseCursor: widget.mouseCursor,
      obscureText: widget.obscureText,
      obscuringCharacter: widget.obscuringCharacter,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      onTap: widget.onTap,
      scrollPadding: widget.scrollPadding,
      scrollPhysics: widget.scrollPhysics,
      showCursor: widget.showCursor,
      strutStyle: widget.strutStyle,
      style: widget.style,
      textAlignVertical: widget.textAlignVertical,
      textInputAction: widget.textInputAction,
      textDirection: widget.textDirection,
      contextMenuBuilder: widget.contextMenuBuilder,
    );
  }
}
