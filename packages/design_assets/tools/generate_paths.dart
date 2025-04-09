// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  final projectRoot = Directory.current.path;
  final iconsPath = '$projectRoot/packages/design_assets/assets/icons/';
  final imagePath = '$projectRoot/packages/design_assets/assets/images/';

  final iconDir = Directory(iconsPath);
  final imageDir = Directory(imagePath);
  final buffer = StringBuffer(
      'const _basePath = \'packages/design_assets/assets\';\n\n class AssetsPath {\n  // === ICONS PATH ===\n');

  if (!iconDir.existsSync() || !imageDir.existsSync()) {
    print('❌ Folder not found $iconsPath or $imagePath');
    return;
  }

  for (var file in iconDir.listSync()) {
    if (file is File) {
      final fileName = file.uri.pathSegments.last;
      final name = fileName.split('.').first;
      buffer.writeln(
        "  static const String ${_toCamelCase(name)} = '\$_basePath/icons/$fileName';",
      );
    }
  }
  buffer.writeln("\n  // === IMAGES PATH === ");

  for (var file in imageDir.listSync()) {
    if (file is File) {
      final fileName = file.uri.pathSegments.last;
      final name = fileName.split('.').first;
      buffer.writeln(
        "  static const String ${_toCamelCase(name)} = '\$_basePath/images/$fileName';",
      );
    }
  }

  buffer.writeln('}');

  final outputPath =
      '$projectRoot/packages/design_assets/lib/utils/assets_path.dart';
  File(outputPath).writeAsStringSync(buffer.toString());

  print('✅ Generated: $outputPath');
}

String _toCamelCase(String input) {
  final parts = input
      .toLowerCase()
      .replaceAll(RegExp(r'[-_\s]+'), ' ') // thay - _ bằng khoảng trắng
      .split(' ');

  if (parts.isEmpty) return '';

  // Chữ đầu giữ nguyên, các chữ sau viết hoa chữ cái đầu
  return parts.first +
      parts
          .skip(1)
          .map((word) => word[0].toUpperCase() + word.substring(1))
          .join();
}
