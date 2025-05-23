# Quill Extensable

A rich text editor for Flutter with support for non-editable nodes, variable IDs, and custom callbacks. An extensible fork of flutter_quill.

## Features

* All features from the original flutter_quill package
* Support for non-editable text nodes
* Variable ID and name attributes for nodes
* Custom callbacks for node interactions
* Methods to delete nodes by ID or position

## Getting Started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  quill_extensable: ^1.0.0
```

## Usage

### Creating non-editable nodes with variables

```dart
final controller = QuillController(
  document: Document(),
  selection: TextSelection.collapsed(offset: 0),
  config: QuillControllerConfig(
    onNonEditableNodeTap: (text, start, length, variableId, variableName) {
      print('Clicked on variable: $variableName');
      print('Variable ID: $variableId');
      print('Text content: $text');
    },
  ),
);

// Create a non-editable node with ID and variable name
controller.formatTextStyle(
  index, 
  length, 
  Style().merge(Style().putAll([
    Attribute.editable.withValue(false),
    Attribute.variableId.withValue('123456'),
    Attribute.variableName.withValue('userName'),
    Attribute.bold,
    Attribute.color.withValue('blue'),
  ]))
);
```

### Deleting nodes

```dart
// Delete by position
controller.deleteNonEditableNode(offset);

// Delete by ID
controller.deleteNonEditableNodeById('123456');
```

### Delta format example

```json
{
  "insert": "Variable de usuario",
  "attributes": {
    "editable": false,
    "_id": "123456",
    "variableName": "userName",
    "bold": true,
    "color": "blue"
  }
}
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

This package is a fork of [flutter_quill](https://github.com/singerdmx/flutter-quill) with additional functionality.
