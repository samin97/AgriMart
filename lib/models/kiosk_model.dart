import 'dart:convert';

KioskModel kioskModelFromJson(String str) =>
    KioskModel.fromJson(json.decode(str));

String kioskModelToJson(KioskModel data) => json.encode(data.toJson());

class KioskModel {
  KioskModel({
    required this.name,
    required this.image,
    required this.details,
    required this.weight,
    required this.phone,
    required this.price,
    required this.category,
  });

  String name;
  String image;
  String details;
  String weight;
  String phone;
  String price;
  String category;

  factory KioskModel.fromJson(Map<String, dynamic> json) => KioskModel(
        name: json["Name"],
        image: json["Image"],
        details: json["Details"],
        weight: json["Weight"],
        phone: json["Phone"],
        price: json["Price"],
        category: json["Category"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "Image": image,
        "Details": details,
        "Weight": weight,
        "Phone": phone,
        "Price": price,
        "Category": category,
      };

  static List<KioskModel> kioskList = [
    KioskModel(
        name: "Biscuit",
        image:
            "https://static-01.daraz.com.np/p/d7c25288dd3b37d26199db071d112eb8.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Apple",
        image:
            "https://cdn.britannica.com/22/187222-050-07B17FB6/apples-on-a-tree-branch.jpg",
        details: "Biscuit",
        weight: "1 Kg",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Dog Food",
        image:
            "https://static-01.daraz.com.np/p/c9b015ce0ef50b5d451d0da6affb40ef.jpg",
        details: "Biscuit",
        weight: "500 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Tea",
        image:
            "https://www.verywellhealth.com/thmb/wOpYMxG1V_VxYcp4iJRmxRO4lZc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-693893647-588d21e413dd411cb1f2b0a0ea3e02da.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Knife",
        image:
            "https://www.seriouseats.com/thmb/7pkr3w1eLjCgh7dgu_cNc9mI6Mk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__images__2015__09__20150921-misen-knife-review-1-a4f5f8aa45db4e509f82494679cb61fa.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Fur Brush",
        image:
            "https://m.media-amazon.com/images/I/71nKnMxKuWL.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Mirror",
        image:
            "https://ii1.pepperfry.com/media/catalog/product/b/r/800x880/browns-wood--decorative---handcrafted-wall-mirror-by-the-urban-store-browns-wood--decorative---handc-q5yo8q.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Biscuit",
        image:
        "https://static-01.daraz.com.np/p/d7c25288dd3b37d26199db071d112eb8.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Apple",
        image:
        "https://cdn.britannica.com/22/187222-050-07B17FB6/apples-on-a-tree-branch.jpg",
        details: "Biscuit",
        weight: "1 Kg",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Dog Food",
        image:
        "https://static-01.daraz.com.np/p/c9b015ce0ef50b5d451d0da6affb40ef.jpg",
        details: "Biscuit",
        weight: "500 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Tea",
        image:
        "https://www.verywellhealth.com/thmb/wOpYMxG1V_VxYcp4iJRmxRO4lZc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-693893647-588d21e413dd411cb1f2b0a0ea3e02da.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Knife",
        image:
        "https://www.seriouseats.com/thmb/7pkr3w1eLjCgh7dgu_cNc9mI6Mk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__images__2015__09__20150921-misen-knife-review-1-a4f5f8aa45db4e509f82494679cb61fa.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Fur Brush",
        image:
        "https://m.media-amazon.com/images/I/71nKnMxKuWL.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Mirror",
        image:
        "https://ii1.pepperfry.com/media/catalog/product/b/r/800x880/browns-wood--decorative---handcrafted-wall-mirror-by-the-urban-store-browns-wood--decorative---handc-q5yo8q.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Biscuit",
        image:
        "https://static-01.daraz.com.np/p/d7c25288dd3b37d26199db071d112eb8.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Apple",
        image:
        "https://cdn.britannica.com/22/187222-050-07B17FB6/apples-on-a-tree-branch.jpg",
        details: "Biscuit",
        weight: "1 Kg",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Dog Food",
        image:
        "https://static-01.daraz.com.np/p/c9b015ce0ef50b5d451d0da6affb40ef.jpg",
        details: "Biscuit",
        weight: "500 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Tea",
        image:
        "https://www.verywellhealth.com/thmb/wOpYMxG1V_VxYcp4iJRmxRO4lZc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-693893647-588d21e413dd411cb1f2b0a0ea3e02da.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Knife",
        image:
        "https://www.seriouseats.com/thmb/7pkr3w1eLjCgh7dgu_cNc9mI6Mk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__images__2015__09__20150921-misen-knife-review-1-a4f5f8aa45db4e509f82494679cb61fa.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Fur Brush",
        image:
        "https://m.media-amazon.com/images/I/71nKnMxKuWL.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Mirror",
        image:
        "https://ii1.pepperfry.com/media/catalog/product/b/r/800x880/browns-wood--decorative---handcrafted-wall-mirror-by-the-urban-store-browns-wood--decorative---handc-q5yo8q.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Biscuit",
        image:
        "https://static-01.daraz.com.np/p/d7c25288dd3b37d26199db071d112eb8.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Apple",
        image:
        "https://cdn.britannica.com/22/187222-050-07B17FB6/apples-on-a-tree-branch.jpg",
        details: "Biscuit",
        weight: "1 Kg",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Dog Food",
        image:
        "https://static-01.daraz.com.np/p/c9b015ce0ef50b5d451d0da6affb40ef.jpg",
        details: "Biscuit",
        weight: "500 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Tea",
        image:
        "https://www.verywellhealth.com/thmb/wOpYMxG1V_VxYcp4iJRmxRO4lZc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-693893647-588d21e413dd411cb1f2b0a0ea3e02da.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Knife",
        image:
        "https://www.seriouseats.com/thmb/7pkr3w1eLjCgh7dgu_cNc9mI6Mk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__images__2015__09__20150921-misen-knife-review-1-a4f5f8aa45db4e509f82494679cb61fa.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Fur Brush",
        image:
        "https://m.media-amazon.com/images/I/71nKnMxKuWL.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    KioskModel(
        name: "Mirror",
        image:
        "https://ii1.pepperfry.com/media/catalog/product/b/r/800x880/browns-wood--decorative---handcrafted-wall-mirror-by-the-urban-store-browns-wood--decorative---handc-q5yo8q.jpg",
        details: "Biscuit",
        weight: "200 gm",
        phone: "9886665504",
        price: "300",
        category: "food"),
    // KioskModel(
    //     name: "Biscuit",
    //     image:
    //         "",
    //     details: "Biscuit",
    //     weight: "200 gm",
    //     phone: "9886665504",
    //     price: "300",
    //     category: "food"),

  ];
}
