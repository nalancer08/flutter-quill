import 'package:meta/meta.dart';

import 'clipboard/quill_clipboard_config.dart';

export 'clipboard/quill_clipboard_config.dart';

class QuillControllerConfig {
  const QuillControllerConfig({
    this.requireScriptFontFeatures = false,
    @experimental this.clipboardConfig,
    this.onNonEditableNodeTap,
  });

  @experimental
  final QuillClipboardConfig? clipboardConfig;

  final void Function(String text, int start, int length, String? variableId,
      String? variableName)? onNonEditableNodeTap;

  final bool requireScriptFontFeatures;
}
