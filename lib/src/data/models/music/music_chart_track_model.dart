class MusicChartTrackModel {
  List<Tracks>? tracks;

  MusicChartTrackModel({this.tracks});

  MusicChartTrackModel.fromJson(Map<String, dynamic> json) {
    if (json['tracks'] != null) {
      tracks = <Tracks>[];
      json['tracks'].forEach((v) {
        tracks!.add(new Tracks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tracks != null) {
      data['tracks'] = this.tracks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tracks {
  String? layout;
  String? type;
  String? key;
  String? title;
  String? subtitle;
  Share? share;
  Images? images;
  Hub? hub;
  List<Artists>? artists;
  String? url;
  Highlightsurls? highlightsurls;
  Properties? properties;

  Tracks(
      {this.layout,
      this.type,
      this.key,
      this.title,
      this.subtitle,
      this.share,
      this.images,
      this.hub,
      this.artists,
      this.url,
      this.highlightsurls,
      this.properties});

  Tracks.fromJson(Map<String, dynamic> json) {
    layout = json['layout'];
    type = json['type'];
    key = json['key'];
    title = json['title'];
    subtitle = json['subtitle'];
    share = json['share'] != null ? new Share.fromJson(json['share']) : null;
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    hub = json['hub'] != null ? new Hub.fromJson(json['hub']) : null;
    if (json['artists'] != null) {
      artists = <Artists>[];
      json['artists'].forEach((v) {
        artists!.add(new Artists.fromJson(v));
      });
    }
    url = json['url'];
    highlightsurls = json['highlightsurls'] != null
        ? new Highlightsurls.fromJson(json['highlightsurls'])
        : null;
    properties = json['properties'] != null
        ? new Properties.fromJson(json['properties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['layout'] = this.layout;
    data['type'] = this.type;
    data['key'] = this.key;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    if (this.share != null) {
      data['share'] = this.share!.toJson();
    }
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    if (this.hub != null) {
      data['hub'] = this.hub!.toJson();
    }
    if (this.artists != null) {
      data['artists'] = this.artists!.map((v) => v.toJson()).toList();
    }
    data['url'] = this.url;
    if (this.highlightsurls != null) {
      data['highlightsurls'] = this.highlightsurls!.toJson();
    }
    if (this.properties != null) {
      data['properties'] = this.properties!.toJson();
    }
    return data;
  }
}

class Share {
  String? subject;
  String? text;
  String? href;
  String? image;
  String? twitter;
  String? html;
  String? avatar;
  String? snapchat;

  Share(
      {this.subject,
      this.text,
      this.href,
      this.image,
      this.twitter,
      this.html,
      this.avatar,
      this.snapchat});

  Share.fromJson(Map<String, dynamic> json) {
    subject = json['subject'];
    text = json['text'];
    href = json['href'];
    image = json['image'];
    twitter = json['twitter'];
    html = json['html'];
    avatar = json['avatar'];
    snapchat = json['snapchat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subject'] = this.subject;
    data['text'] = this.text;
    data['href'] = this.href;
    data['image'] = this.image;
    data['twitter'] = this.twitter;
    data['html'] = this.html;
    data['avatar'] = this.avatar;
    data['snapchat'] = this.snapchat;
    return data;
  }
}

class Images {
  String? background;
  String? coverart;
  String? coverarthq;
  String? joecolor;

  Images({this.background, this.coverart, this.coverarthq, this.joecolor});

  Images.fromJson(Map<String, dynamic> json) {
    background = json['background'];
    coverart = json['coverart'];
    coverarthq = json['coverarthq'];
    joecolor = json['joecolor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['background'] = this.background;
    data['coverart'] = this.coverart;
    data['coverarthq'] = this.coverarthq;
    data['joecolor'] = this.joecolor;
    return data;
  }
}

class Hub {
  String? type;
  String? image;
  List<Actions>? actions;
  List<Options>? options;
  bool? explicit;
  String? displayname;

  Hub(
      {this.type,
      this.image,
      this.actions,
      this.options,
      this.explicit,
      this.displayname});

  Hub.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    image = json['image'];
    if (json['actions'] != null) {
      actions = <Actions>[];
      json['actions'].forEach((v) {
        actions!.add(new Actions.fromJson(v));
      });
    }
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options!.add(new Options.fromJson(v));
      });
    }
    explicit = json['explicit'];
    displayname = json['displayname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['image'] = this.image;
    if (this.actions != null) {
      data['actions'] = this.actions!.map((v) => v.toJson()).toList();
    }
    if (this.options != null) {
      data['options'] = this.options!.map((v) => v.toJson()).toList();
    }
    data['explicit'] = this.explicit;
    data['displayname'] = this.displayname;
    return data;
  }
}

class Actions {
  String? name;
  String? type;
  String? id;
  String? uri;

  Actions({this.name, this.type, this.id, this.uri});

  Actions.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    id = json['id'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['id'] = this.id;
    data['uri'] = this.uri;
    return data;
  }
}

class Options {
  String? caption;
  List<Actions>? actions;
  Beacondata? beacondata;
  String? image;
  String? type;
  String? listcaption;
  String? overflowimage;
  bool? colouroverflowimage;
  String? providername;

  Options(
      {this.caption,
      this.actions,
      this.beacondata,
      this.image,
      this.type,
      this.listcaption,
      this.overflowimage,
      this.colouroverflowimage,
      this.providername});

  Options.fromJson(Map<String, dynamic> json) {
    caption = json['caption'];
    if (json['actions'] != null) {
      actions = <Actions>[];
      json['actions'].forEach((v) {
        actions!.add(new Actions.fromJson(v));
      });
    }
    beacondata = json['beacondata'] != null
        ? new Beacondata.fromJson(json['beacondata'])
        : null;
    image = json['image'];
    type = json['type'];
    listcaption = json['listcaption'];
    overflowimage = json['overflowimage'];
    colouroverflowimage = json['colouroverflowimage'];
    providername = json['providername'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['caption'] = this.caption;
    if (this.actions != null) {
      data['actions'] = this.actions!.map((v) => v.toJson()).toList();
    }
    if (this.beacondata != null) {
      data['beacondata'] = this.beacondata!.toJson();
    }
    data['image'] = this.image;
    data['type'] = this.type;
    data['listcaption'] = this.listcaption;
    data['overflowimage'] = this.overflowimage;
    data['colouroverflowimage'] = this.colouroverflowimage;
    data['providername'] = this.providername;
    return data;
  }
}

class Beacondata {
  String? type;
  String? providername;

  Beacondata({this.type, this.providername});

  Beacondata.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    providername = json['providername'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['providername'] = this.providername;
    return data;
  }
}

class Artists {
  String? alias;
  String? id;
  String? adamid;

  Artists({this.alias, this.id, this.adamid});

  Artists.fromJson(Map<String, dynamic> json) {
    alias = json['alias'];
    id = json['id'];
    adamid = json['adamid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alias'] = this.alias;
    data['id'] = this.id;
    data['adamid'] = this.adamid;
    return data;
  }
}

class Highlightsurls {
  String? artisthighlightsurl;
  String? trackhighlighturl;

  Highlightsurls({this.artisthighlightsurl, this.trackhighlighturl});

  Highlightsurls.fromJson(Map<String, dynamic> json) {
    artisthighlightsurl = json['artisthighlightsurl'];
    trackhighlighturl = json['trackhighlighturl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artisthighlightsurl'] = this.artisthighlightsurl;
    data['trackhighlighturl'] = this.trackhighlighturl;
    return data;
  }
}

class Properties {
  Properties();

  Properties.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
