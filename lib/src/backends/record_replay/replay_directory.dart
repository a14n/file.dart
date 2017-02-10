// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:file/file.dart';

import 'replay_file_system.dart';
import 'replay_file_system_entity.dart';

/// [Directory] implementation that replays all invocation activity from a
/// prior recording.
class ReplayDirectory extends ReplayFileSystemEntity implements Directory {
  /// Creates a new `ReplayDirectory`.
  ReplayDirectory(ReplayFileSystemImpl fileSystem, String identifier)
      : super(fileSystem, identifier) {
    // TODO(tvolkert): fill in resurrectors
    methods.addAll(<Symbol, Converter<dynamic, dynamic>>{
      #create: null,
      #createSync: null,
      #createTemp: null,
      #createTempSync: null,
      #list: null,
      #listSync: null,
    });
  }
}
