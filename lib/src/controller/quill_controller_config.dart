export 'clipboard/quill_clipboard_config.dart';

/// Configuration for the [QuillController].
class QuillControllerConfig {
  const QuillControllerConfig({
    this.requireScriptFontFeatures = false,
    this.clipboardConfig = const QuillClipboardConfig(),
    this.onNonEditableNodeTap,
  });

  /// Configuration for clipboard operations.
  final QuillClipboardConfig clipboardConfig;

  /// Callback for when a non-editable node is tapped
  /// Parameters are: text content, start offset, length, variable ID, variable name
  final void Function(String text, int start, int length, String? variableId, String? variableName)? onNonEditableNodeTap;

  /// Render subscript and superscript text using Open Type FontFeatures
  ///
  /// Default is false to use built-in script rendering that is independent of font capabilities
  final bool requireScriptFontFeatures;
}
