import 'package:flutter/material.dart';
import 'package:flutter_wanandroid/app/provider/provider_widget.dart';
import 'package:flutter_wanandroid/app/router/routers.dart';
import 'package:flutter_wanandroid/model/tree_model.dart';
import 'package:loading_indicator_view/loading_indicator_view.dart';

///导航
class NavigatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigatePageState();
  }
}

class NavigatePageState extends State<NavigatePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProviderWidget<TreeViewModel>(
        initData: (model) {
          model.getNavi();
        },
        model: TreeViewModel(),
        builder: (BuildContext context, model, Widget child) {
          if (model.isLoading())
            return Center(
              child: LineScaleIndicator(
                lineColor: Colors.lightBlue,
              ),
            );
          return Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 0),
            child: ListView.builder(
              itemCount: model.naviList.length,
              itemBuilder: (_, index) {
                var naviList = model.naviList[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 10, left: 10),
                      child: Text(
                        naviList.name,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      children:
                          List.generate(naviList.articles.length, (index) {
                        return ActionChip(
                            label: Text(naviList.articles[index].title,
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff666666))),
                            onPressed: () {
                              Navigator.of(context).pushNamed(routers.WEB,
                                  arguments: naviList.articles[index].link);
                            });
                      }),
                    )
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
