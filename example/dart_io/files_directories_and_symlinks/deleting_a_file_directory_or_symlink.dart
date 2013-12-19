/// Use the `delete()` method to delete a file, directory or symlink. This
/// method is defined in `FileSystemEntity` and inherited by `File`,
/// `Directory`, and `Link`.
///
/// The example here shows how to delete a directory.

import 'dart:io';

void main() {
  // Create a temporary directory.
  Directory.systemTemp.createTemp('my_temp_dir')
    .then((directory) {
      // Confirm it exists.
      directory.exists().then(print); // Prints 'true'.
      // Delete the directory.
      return directory.delete();
    })
    .then((directory) {
      // Confirm it no longer exists.
      directory.exists().then(print); // Prints 'false'
    });
}
