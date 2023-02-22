import 'package:agriculture_app/models/category_model.dart';
import 'package:agriculture_app/models/item_model.dart';
import 'package:agriculture_app/models/user_requested_items.dart';
import 'package:flutter/material.dart';
import '../../components&widgets/display_card.dart';
import '../../components&widgets/category_card.dart';
import '../../components&widgets/user_requested_items.dart';

class Front extends StatefulWidget {
  const Front({Key? key}) : super(key: key);

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            margin: const EdgeInsets.all(0),
            color: const Color(0xFFE5E5E5),
            elevation: 0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 12.0),
                    child: Text(
                      "Featured & recommended",
                      style: TextStyle(
                        color: Color(0xC8000000),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 260,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8.0),
                      itemCount: ItemModel.itemsList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 12);
                      },
                      itemBuilder: (context, int index) {
                        return DisplayCard(
                          index: index,
                        );
                      },
                    ),
                  ),
                ]),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Color(0xFFC7C7C7),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            margin: const EdgeInsets.all(0),
            color: const Color(0xFFE5E5E5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 12.0),
                    child: Text(
                      "Special offers",
                      style: TextStyle(
                        color: Color(0xC8000000),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 260,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8.0),
                      itemCount: ItemModel.itemsList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 12);
                      },
                      itemBuilder: (context, int index) {
                        return DisplayCard(
                          index: index,
                        );
                      },
                    ),
                  ),
                ]),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Color(0xFFC7C7C7),
          ),

          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            margin: const EdgeInsets.all(0),
            color: const Color(0xFFE5E5E5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 12.0),
                    child: Text(
                      "Request by users",
                      style: TextStyle(
                        color: Color(0xC8000000),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8.0),
                      itemCount: RequestedItemModel.itemsList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 12);
                      },
                      itemBuilder: (context, int index) {
                        return UserRequestedItemsCard(
                          index: index,
                        );
                      },
                    ),
                  ),
                ]),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Color(0xFFC7C7C7),
          ),

          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            margin: const EdgeInsets.all(0),
            color: const Color(0xFFE5E5E5),
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Browse by Categories",
                  style: TextStyle(
                    color: Color(0xC8000000),
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),

              SizedBox(
                height: 194,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8.0),
                  itemCount: CategoryModel.categoryList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 12);
                  },
                  itemBuilder: (context, int index) {
                    return CategoryCard(
                      index: index,
                    );
                  },
                ),
              ),
            ]),
          ),

        ],
      ),
    );
  }
}
