// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Use the `FileSystemEntity.type()` method to get the type of a file system
/// object. This method is inherited by File, Directory, and Link.

import 'dart:io';

void main() {
  // List the contents of the system temp directory.
  Directory.systemTemp.list(recursive: true, followLinks: false)
    .listen((FileSystemEntity entity) {
      // Get the type of the FileSystemEntity, apply the appropiate label, and
      // print the entity path.
      FileSystemEntity.type(entity.path)
        .then((FileSystemEntityType type) {
          String label;
          switch (type) {
            case FileSystemEntityType.DIRECTORY:
              label = 'D';
              break;
            case FileSystemEntityType.FILE:
              label = 'F';
              break;
            case FileSystemEntityType.LINK:
              label = 'L';
              break;
            default:
              label = 'UNKNOWN';
          }
          print('$label: ${entity.path}');
      });
    });
}