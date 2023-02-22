class RequestedItemModel {
  final String name;
  final double price;
  final String address;

  const RequestedItemModel({
    required this.name,
    required this.price,
    required this.address,
  });

  static const List<RequestedItemModel> itemsList = [
    RequestedItemModel(
        name: 'Bitter Gourd', price: 200, address: 'Patan, Lalitpur'),
    RequestedItemModel(
        name: 'Potato', price: 100, address: 'Thamel, Kathmandu'),
    RequestedItemModel(
        name: 'Pork chops', price: 500, address: 'Patan, Lalitpur'),
  ];
}
