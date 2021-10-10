

import 'dart:ui';

class FromPrevious {
  FromPrevious({
      Color? color,
    Color? monthColor,
      String? month, 
      String? date, 
      String? title, 
      String? subtitle,}){
    _color = color;
    _monthColor = monthColor;
    _month = month;
    _date = date;
    _title = title;
    _subtitle = subtitle;
}

  FromPrevious.fromJson(dynamic json) {
    _color = json['color'];
    _monthColor = json['monthColor'];
    _month = json['month'];
    _date = json['date'];
    _title = json['title'];
    _subtitle = json['subtitle'];
  }
  Color? _color;
  Color? _monthColor;
  String? _month;
  String? _date;
  String? _title;
  String? _subtitle;

  Color? get color => _color;
  Color? get monthColor => _monthColor;
  String? get month => _month;
  String? get date => _date;
  String? get title => _title;
  String? get subtitle => _subtitle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['color'] = _color;
    map['color'] = _monthColor;
    map['month'] = _month;
    map['date'] = _date;
    map['title'] = _title;
    map['subtitle'] = _subtitle;
    return map;
  }

}