import 'package:forked_pub_version_plus/src/command/build_command.dart';
import 'package:forked_pub_version_plus/src/util/enum.dart';

import '../../util/pubspec.dart';
import '../../util/version_command_test_util.dart';

void main() {
  VersionCommandTestUtil.runTests<BuildCommand>(
    initializer: () => BuildCommand(pubspecWithVersion),
    type: PubVersion.build,
  );
}
