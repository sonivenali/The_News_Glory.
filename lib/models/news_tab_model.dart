class NewsTabModel {
  Response response;

  NewsTabModel({this.response});

  NewsTabModel.fromJson(Map<String, dynamic> json) {
    response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response.toJson();
    }
    return data;
  }
}

class Response {
  String status;
  String userTier;
  int total;
  int startIndex;
  int pageSize;
  int currentPage;
  int pages;
  Edition edition;
  Section section;
  List<Results> results;

  Response(
      {this.status,
      this.userTier,
      this.total,
      this.startIndex,
      this.pageSize,
      this.currentPage,
      this.pages,
      this.edition,
      this.section,
      this.results});

  Response.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    userTier = json['userTier'];
    total = json['total'];
    startIndex = json['startIndex'];
    pageSize = json['pageSize'];
    currentPage = json['currentPage'];
    pages = json['pages'];
    edition =
        json['edition'] != null ? new Edition.fromJson(json['edition']) : null;
    section =
        json['section'] != null ? new Section.fromJson(json['section']) : null;
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['userTier'] = this.userTier;
    data['total'] = this.total;
    data['startIndex'] = this.startIndex;
    data['pageSize'] = this.pageSize;
    data['currentPage'] = this.currentPage;
    data['pages'] = this.pages;
    if (this.edition != null) {
      data['edition'] = this.edition.toJson();
    }
    if (this.section != null) {
      data['section'] = this.section.toJson();
    }
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Edition {
  String id;
  String webTitle;
  String webUrl;
  String apiUrl;
  String code;

  Edition({this.id, this.webTitle, this.webUrl, this.apiUrl, this.code});

  Edition.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    webTitle = json['webTitle'];
    webUrl = json['webUrl'];
    apiUrl = json['apiUrl'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['webTitle'] = this.webTitle;
    data['webUrl'] = this.webUrl;
    data['apiUrl'] = this.apiUrl;
    data['code'] = this.code;
    return data;
  }
}

class Section {
  String id;
  String webTitle;
  String webUrl;
  String apiUrl;
  List<Edition> editions;

  Section({this.id, this.webTitle, this.webUrl, this.apiUrl, this.editions});

  Section.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    webTitle = json['webTitle'];
    webUrl = json['webUrl'];
    apiUrl = json['apiUrl'];
    if (json['editions'] != null) {
      editions = new List<Edition>();
      json['editions'].forEach((v) {
        editions.add(new Edition.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['webTitle'] = this.webTitle;
    data['webUrl'] = this.webUrl;
    data['apiUrl'] = this.apiUrl;
    if (this.editions != null) {
      data['editions'] = this.editions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String id;
  String type;
  String sectionId;
  String sectionName;
  String webPublicationDate;
  String webTitle;
  String webUrl;
  String apiUrl;
  bool isHosted;
  String pillarId;
  String pillarName;

  Results(
      {this.id,
      this.type,
      this.sectionId,
      this.sectionName,
      this.webPublicationDate,
      this.webTitle,
      this.webUrl,
      this.apiUrl,
      this.isHosted,
      this.pillarId,
      this.pillarName});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    sectionId = json['sectionId'];
    sectionName = json['sectionName'];
    webPublicationDate = json['webPublicationDate'];
    webTitle = json['webTitle'];
    webUrl = json['webUrl'];
    apiUrl = json['apiUrl'];
    isHosted = json['isHosted'];
    pillarId = json['pillarId'];
    pillarName = json['pillarName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['sectionId'] = this.sectionId;
    data['sectionName'] = this.sectionName;
    data['webPublicationDate'] = this.webPublicationDate;
    data['webTitle'] = this.webTitle;
    data['webUrl'] = this.webUrl;
    data['apiUrl'] = this.apiUrl;
    data['isHosted'] = this.isHosted;
    data['pillarId'] = this.pillarId;
    data['pillarName'] = this.pillarName;
    return data;
  }
}
