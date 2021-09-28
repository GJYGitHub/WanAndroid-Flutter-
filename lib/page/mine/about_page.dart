import 'package:flutter/material.dart';
import 'package:flutter_wanandroid/utils/common_utils.dart';
import 'package:flutter_wanandroid/widget/app_bar_white.dart';
import 'package:flutter_wanandroid/app/ext/ext_widget.dart';

///关于作者
class AboutPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AboutPage> {
  ValueNotifier<String> appVersion;

  @override
  void initState() {
    appVersion = ValueNotifier('v1.0.0');
    getPackageInfo().then((value) => appVersion.value = value.version);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite('关于作者'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 80,
          ).setMargin(EdgeInsets.only(top: 40, bottom: 20)),
          ValueListenableBuilder(
              valueListenable: appVersion,
              builder: (context, value, child) {
                return Text('当前版本:$value').setMargin(EdgeInsets.only(bottom: 20));
              }),
          ListTile(
            onTap: (){},
            tileColor: Colors.white,
            title: Text('掘金地址'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ).setMargin(EdgeInsets.only(bottom: 2)),
          ListTile(
            onTap: (){},
            tileColor: Colors.white,
            title: Text('简书地址'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ).setMargin(EdgeInsets.only(bottom: 2)),
          ListTile(
            onTap: (){},
            tileColor: Colors.white,
            title: Text('GitHub地址'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ).setMargin(EdgeInsets.only(bottom: 2)),
        ],
      ),
    );
  }
}
