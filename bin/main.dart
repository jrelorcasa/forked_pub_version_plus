import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:args/command_runner.dart';
import 'package:forked_pub_version_plus/forked_pub_version_plus.dart';
import 'package:io/ansi.dart';
import 'package:io/io.dart';

Future main(List<String> args) async {
  try {
    exitCode = await run(args) ?? -1;
  } on UsageException catch (e) {
    print(red.wrap(e.message));
    print(' ');
    print(e.usage);
    exitCode = ExitCode.usage.code;
  } on FileSystemException catch (e) {
    print(red.wrap(
        'forked_pub_version_plus could not run in the current directory.'));
    print(e.message);
    if (e.path != null) {
      print('  ${e.path}');
    }
    exitCode = ExitCode.config.code;
  } on IsolateSpawnException catch (e) {
    print(red
        .wrap('forked_pub_version_plus failed with an unexpected exception.'));
    print(e.message);
    exitCode = ExitCode.software.code;
  }
}
