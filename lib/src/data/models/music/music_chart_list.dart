class MusicChartList {
  List<Countries>? _countries;
  Global? _global;

  MusicChartList({List<Countries>? countries, Global? global}) {
    if (countries != null) {
      this._countries = countries;
    }
    if (global != null) {
      this._global = global;
    }
  }

  List<Countries>? get countries => _countries;
  set countries(List<Countries>? countries) => _countries = countries;
  Global? get global => _global;
  set global(Global? global) => _global = global;

  MusicChartList.fromJson(Map<String, dynamic> json) {
    if (json['countries'] != null) {
      _countries = <Countries>[];
      json['countries'].forEach((v) {
        _countries!.add(new Countries.fromJson(v));
      });
    }
    _global =
        json['global'] != null ? new Global.fromJson(json['global']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._countries != null) {
      data['countries'] = this._countries!.map((v) => v.toJson()).toList();
    }
    if (this._global != null) {
      data['global'] = this._global!.toJson();
    }
    return data;
  }
}

class Countries {
  String? _id;
  String? _listid;
  String? _momentumListid;
  String? _name;
  List<Cities>? _cities;
  List<Genres>? _genres;

  Countries(
      {String? id,
      String? listid,
      String? momentumListid,
      String? name,
      List<Cities>? cities,
      List<Genres>? genres}) {
    if (id != null) {
      this._id = id;
    }
    if (listid != null) {
      this._listid = listid;
    }
    if (momentumListid != null) {
      this._momentumListid = momentumListid;
    }
    if (name != null) {
      this._name = name;
    }
    if (cities != null) {
      this._cities = cities;
    }
    if (genres != null) {
      this._genres = genres;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get listid => _listid;
  set listid(String? listid) => _listid = listid;
  String? get momentumListid => _momentumListid;
  set momentumListid(String? momentumListid) =>
      _momentumListid = momentumListid;
  String? get name => _name;
  set name(String? name) => _name = name;
  List<Cities>? get cities => _cities;
  set cities(List<Cities>? cities) => _cities = cities;
  List<Genres>? get genres => _genres;
  set genres(List<Genres>? genres) => _genres = genres;

  Countries.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _listid = json['listid'];
    _momentumListid = json['momentum_listid'];
    _name = json['name'];
    if (json['cities'] != null) {
      _cities = <Cities>[];
      json['cities'].forEach((v) {
        _cities!.add(new Cities.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      _genres = <Genres>[];
      json['genres'].forEach((v) {
        _genres!.add(new Genres.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['listid'] = this._listid;
    data['momentum_listid'] = this._momentumListid;
    data['name'] = this._name;
    if (this._cities != null) {
      data['cities'] = this._cities!.map((v) => v.toJson()).toList();
    }
    if (this._genres != null) {
      data['genres'] = this._genres!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cities {
  String? _id;
  String? _name;
  String? _countryid;
  String? _listid;

  Cities({String? id, String? name, String? countryid, String? listid}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (countryid != null) {
      this._countryid = countryid;
    }
    if (listid != null) {
      this._listid = listid;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get countryid => _countryid;
  set countryid(String? countryid) => _countryid = countryid;
  String? get listid => _listid;
  set listid(String? listid) => _listid = listid;

  Cities.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _countryid = json['countryid'];
    _listid = json['listid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['countryid'] = this._countryid;
    data['listid'] = this._listid;
    return data;
  }
}

class Genres {
  String? _id;
  String? _countryid;
  String? _listid;
  String? _name;
  String? _urlPath;
  int? _count;

  Genres(
      {String? id,
      String? countryid,
      String? listid,
      String? name,
      String? urlPath,
      int? count}) {
    if (id != null) {
      this._id = id;
    }
    if (countryid != null) {
      this._countryid = countryid;
    }
    if (listid != null) {
      this._listid = listid;
    }
    if (name != null) {
      this._name = name;
    }
    if (urlPath != null) {
      this._urlPath = urlPath;
    }
    if (count != null) {
      this._count = count;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get countryid => _countryid;
  set countryid(String? countryid) => _countryid = countryid;
  String? get listid => _listid;
  set listid(String? listid) => _listid = listid;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get urlPath => _urlPath;
  set urlPath(String? urlPath) => _urlPath = urlPath;
  int? get count => _count;
  set count(int? count) => _count = count;

  Genres.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _countryid = json['countryid'];
    _listid = json['listid'];
    _name = json['name'];
    _urlPath = json['urlPath'];
    _count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['countryid'] = this._countryid;
    data['listid'] = this._listid;
    data['name'] = this._name;
    data['urlPath'] = this._urlPath;
    data['count'] = this._count;
    return data;
  }
}

class Global {
  List<Genres>? _genres;

  Global({List<Genres>? genres}) {
    if (genres != null) {
      this._genres = genres;
    }
  }

  List<Genres>? get genres => _genres;
  set genres(List<Genres>? genres) => _genres = genres;

  Global.fromJson(Map<String, dynamic> json) {
    if (json['genres'] != null) {
      _genres = <Genres>[];
      json['genres'].forEach((v) {
        _genres!.add(new Genres.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._genres != null) {
      data['genres'] = this._genres!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
