class CollectEntity {
  int curPage;
  List<CollectDatas> datas;
  int offset;
  bool over;
  int pageCount;
  int size;
  int total;

  CollectEntity(
      {this.curPage,
        this.datas,
        this.offset,
        this.over,
        this.pageCount,
        this.size,
        this.total});

  CollectEntity.fromJson(Map<String, dynamic> json) {
    curPage = json['curPage'];
    if (json['datas'] != null) {
      datas = new List<CollectDatas>();
      json['datas'].forEach((v) {
        datas.add(new CollectDatas.fromJson(v));
      });
    }
    offset = json['offset'];
    over = json['over'];
    pageCount = json['pageCount'];
    size = json['size'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['curPage'] = this.curPage;
    if (this.datas != null) {
      data['datas'] = this.datas.map((v) => v.toJson()).toList();
    }
    data['offset'] = this.offset;
    data['over'] = this.over;
    data['pageCount'] = this.pageCount;
    data['size'] = this.size;
    data['total'] = this.total;
    return data;
  }
}

class CollectDatas {
  String author;
  int chapterId;
  String chapterName;
  int courseId;
  String desc;
  String envelopePic;
  int id;
  String link;
  String niceDate;
  String origin;
  int originId;
  int publishTime;
  String title;
  int userId;
  int visible;
  int zan;

  CollectDatas(
      {this.author,
        this.chapterId,
        this.chapterName,
        this.courseId,
        this.desc,
        this.envelopePic,
        this.id,
        this.link,
        this.niceDate,
        this.origin,
        this.originId,
        this.publishTime,
        this.title,
        this.userId,
        this.visible,
        this.zan});

  CollectDatas.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    chapterId = json['chapterId'];
    chapterName = json['chapterName'];
    courseId = json['courseId'];
    desc = json['desc'];
    envelopePic = json['envelopePic'];
    id = json['id'];
    link = json['link'];
    niceDate = json['niceDate'];
    origin = json['origin'];
    originId = json['originId'];
    publishTime = json['publishTime'];
    title = json['title'];
    userId = json['userId'];
    visible = json['visible'];
    zan = json['zan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['chapterId'] = this.chapterId;
    data['chapterName'] = this.chapterName;
    data['courseId'] = this.courseId;
    data['desc'] = this.desc;
    data['envelopePic'] = this.envelopePic;
    data['id'] = this.id;
    data['link'] = this.link;
    data['niceDate'] = this.niceDate;
    data['origin'] = this.origin;
    data['originId'] = this.originId;
    data['publishTime'] = this.publishTime;
    data['title'] = this.title;
    data['userId'] = this.userId;
    data['visible'] = this.visible;
    data['zan'] = this.zan;
    return data;
  }
}
