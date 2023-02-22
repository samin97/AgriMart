class CategoryModel {
  final String name;
  final String imageURL;

  const CategoryModel({
    required this.name,
    required this.imageURL,
  });

  static const List<CategoryModel> categoryList = [
    CategoryModel(
      name: 'Vegetables',
      imageURL:
          'https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg',
    ),
    CategoryModel(
      name: 'Dairy',
      imageURL: 'https://images8.alphacoders.com/368/368650.jpg',
    ),
    CategoryModel(
      name: 'Animal',
      imageURL:
          'https://www.timeforkids.com/wp-content/uploads/2020/08/animalVoting.jpg',
    ),
    CategoryModel(
      name: 'Medicine',
      imageURL: 'https://medlineplus.gov/images/Medicines_share.jpg',
    ),
  ];
}
