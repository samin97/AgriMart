import 'package:flutter/material.dart';

import '../screens/items/user_item_details.dart';

class UserItemsCard extends StatefulWidget {
  final String index;

  const UserItemsCard({Key? key, required this.index}) : super(key: key);

  @override
  State<UserItemsCard> createState() => _UserItemsCardState();
}

class _UserItemsCardState extends State<UserItemsCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
              child: Image.network(
                //'https://i.guim.co.uk/img/media/51628ca333decf2e8fc6fc25bfba6a99dd0dc8f7/0_0_3744_5616/master/3744.jpg?width=700&quality=85&auto=format&fit=max&s=593e66cadcc4e638c57d5eb96374a032',
                 'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-2foodgroups_vegetables_detailfeature.jpg?sfvrsn=226f1bc7_6',
                width: 150,
                height: 100,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0,10.0,30.0,10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name ${widget.index}",
                        ),
                        const Icon(
                          Icons.edit,
                          color: Colors.black54,
                          size: 20,
                        )
                      ],
                    ),
                    const SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Patan, Lalitpur",
                        ),
                        Text(
                          'Price ${widget.index}',
                        ),
                      ],
                    ),
                    const SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Collection of different vegetables",
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Route newRoute = MaterialPageRoute(
            builder: (context) => UserItemDetails(
              index: widget.index,

            ));
        Navigator.pushReplacement(context, newRoute);

      },
    );
  }
}
