class OrderItem {
  String _imageSrc;

  orderItem({String imageSrc}) {
    this._imageSrc = imageSrc;
  }

  String get imageSrc => _imageSrc;
  set imageSrc(String imageSrc) => _imageSrc = imageSrc;

  OrderItem.fromJson(Map<String, dynamic> json) {
    _imageSrc = json['imageSrc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageSrc'] = this._imageSrc;
    return data;
  }
}