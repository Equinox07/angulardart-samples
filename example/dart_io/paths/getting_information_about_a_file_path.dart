/// Use the `basename()`, `dirname()`, `basenameWithoutExtension()`, and
/// `extension()` methods defined in the `path` Pub package when working with
/// a file path.

import 'package:path/path.dart' as path;

import 'dart:io';

void main() {
  // Create dir/ and dir/file.txt in the system temp directory.
  new File('${Directory.systemTemp.path}/dir/myFile.txt').create(recursive: true)
    // The created file is returned as a Future.
    .then((file) {
      print(path.basename(file.path)); // Prints 'file.txt'.
      print(path.dirname(file.path));  // Prints path ending with 'dir'.
      print(path.basenameWithoutExtension(file.path)); // Prints 'myFile'.
      print(path.extension(file.path)); // Prints '.txt'.
  });
}
