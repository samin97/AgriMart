class ItemModel {
  final String name;
  final double price;
  final String imageURL;
  final String address;

  const ItemModel({
    required this.name,
    required this.price,
    required this.imageURL,
    required this.address,
  });

  static const List<ItemModel> itemsList = [
    ItemModel(
        name: 'Pine Apple',
        price: 200,
        imageURL:
            'https://img.freepik.com/premium-photo/fresh-pineapple-coconut-tropical-landscape_431724-2861.jpg?w=2000',
        address: 'Patan, Lalitpur'),
    ItemModel(
        name: 'Potato',
        price: 100,
        imageURL:
            'https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cheight=650%2Cmetadata=none%2Conerror=redirect%2Cq=70%2Csharpen=1%2Cwidth=956/wp-content/uploads/potato-day.jpg',
        address: 'Thamel, Kathmandu'),
    ItemModel(
        name: 'Pork chops',
        price: 500,
        imageURL:
            'https://www.provisioneronline.com/ext/resources/images/Responsive-Default-Images/meat-science-review.jpg?height=635&t=1607975249&width=1200',
        address: 'Patan, Lalitpur'),
    ItemModel(
        name: 'Raisins',
        price: 350,
        imageURL:
            'https://upload.wikimedia.org/wikipedia/commons/7/7d/Raisins_01.jpg',
        address: 'Patan, Lalitpur'),
    ItemModel(
        name: 'Pomegranate',
        price: 200,
        imageURL:
            'https://images.healthshots.com/healthshots/en/uploads/2021/09/27184641/pomegranate-1600x900.jpg',
        address: 'Patan, Lalitpur'),
    ItemModel(
        name: 'Sour Cream',
        price: 200,
        imageURL:
            'https://www.realsimple.com/thmb/WIQw_c6ePyPKkXAGrFVB5hvMN_A=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/make-sour-cream-2000-513d49b3aaba4708a67b19380cc32de6.jpg',
        address: 'Patan, Lalitpur'),
    ItemModel(
        name: 'Animal Fodder',
        price: 200,
        imageURL:
            'https://epashupalan.com/wp-content/uploads/2020/10/cow-eating-straw.jpeg',
        address: 'Patan, Lalitpur'),
    ItemModel(
        name: 'Bitter Gourd',
        price: 200,
        imageURL:
            'https://visitokinawajapan.com/wp-content/uploads/2021/11/di133_kv_okinawan-island-vegetables.jpg',
        address: 'Patan, Lalitpur'),
    ItemModel(
        name: 'Bitter Gourd',
        price: 200,
        imageURL:
            'https://visitokinawajapan.com/wp-content/uploads/2021/11/di133_kv_okinawan-island-vegetables.jpg',
        address: 'Patan, Lalitpur'),
  ];
}
