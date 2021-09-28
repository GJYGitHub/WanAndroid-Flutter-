import 'package:package_info/package_info.dart';

Future<PackageInfo> getPackageInfo() async{
  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  String appName = packageInfo.appName;
  String packageName = packageInfo.packageName;
  String version = packageInfo.version;
  String buildNumber = packageInfo.buildNumber;
  return packageInfo;
}
