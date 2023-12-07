import 'package:forked_pub_version_plus/src/command/patch_command.dart';
import 'package:forked_pub_version_plus/src/command/version_commmand.dart';
import 'package:forked_pub_version_plus/src/util/enum.dart';
import 'package:test/test.dart';

import '../../util/pubspec.dart';

void main() {
  late VersionCommand command;
  const type = PubVersion.patch;

  setUp(() {
    command = PatchCommand(pubspecWithVersion);
  });

  test('#type should return $type', () {
    expect(command.type, type);
  });
  test('#description should return $type\'s description', () {
    expect(command.type.description, type.description);
  });
  test('#name should return $type\'s name', () {
    expect(command.name, type.name);
  });
}
