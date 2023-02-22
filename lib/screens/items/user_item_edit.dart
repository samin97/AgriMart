import 'package:agriculture_app/screens/items/user_item_details.dart';
import 'package:agriculture_app/screens/profile/user_listings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/components/checkbox_list_tile/gf_checkbox_list_tile.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'dart:io';
import '../../components&widgets/custom_text_field.dart';
import 'package:image_picker/image_picker.dart';
import '../../components&widgets/error_dialog.dart';
import '../../components&widgets/loading_dialog.dart';
import '../../components&widgets/button_widget.dart';
import '../home_screen.dart';
import '../profile/settings.dart';

class EditItems extends StatefulWidget {
  const EditItems({Key? key}) : super(key: key);

  @override
  State<EditItems> createState() => _EditItemsState();
}

class _EditItemsState extends State<EditItems> {
  final category = [
    'Fruits',
    'Animal Products',
    'Vegetables',
    'Pesticides',
    'Animal Medicines',
    'Dairy',
    'Meat',
    'Poultry',
    'Others'
  ];

  String? value;

  DropdownMenuItem<String> buildMenuItems(String leaveFor) => DropdownMenuItem(
        value: leaveFor,
        child: Text(leaveFor),
      );

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController detailController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController pickController = TextEditingController();
  TextEditingController dropController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  List<bool> isRetail = [true, false];

  bool deliveryRequired = false;

  String parcelImageUrl = "";
  String nameController = "";

  File? image;
  final ImagePicker _parcel = ImagePicker();
  Color retailColor = const Color(0xA1F88C3F);
  Color wholesaleColor = const Color(0xFFFFFFFF);

  Future<void> _getImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      this.image = imageTemporary;
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<void> validate() async {
    if (parcelImageUrl == null) {
      showDialog(
          context: context,
          builder: (c) {
            return const ErrorDialog(
              message: "Please Select an image.",
            );
          });
    } else {
      if (titleController.text.isNotEmpty &&
          detailController.text.isNotEmpty &&
          weightController.text.isNotEmpty &&
          phoneController.text.isNotEmpty &&
          pickController.text.isNotEmpty &&
          priceController.text.isNotEmpty) {
        showDialog(
            context: context,
            builder: (c) {
              return LoadingDialog(
                message: "Posting Items",
              );
            });
        //todo method to add products
        Navigator.pop(context);
        Route newRoute = MaterialPageRoute(builder: (c) => const HomeScreen());
        Navigator.pushReplacement(context, newRoute);
        //  });
      } else {
        showDialog(
            context: context,
            builder: (c) {
              return const ErrorDialog(
                message: "Please fill all the information.",
              );
            });
      }
    }
  }

  NepaliDateTime? selectedDate;

  String getText() {
    if (selectedDate == null) {
      return 'Available Date';
    } else {
      return NepaliDateFormat('MM/dd/yyyy').format(selectedDate!);
    }
  }

  Future pickDate(BuildContext context) async {
    NepaliDateTime? selectedDateTime = await showAdaptiveDatePicker(
      context: context,
      initialDate: selectedDate ?? NepaliDateTime.now(),
      firstDate: NepaliDateTime(2079, 1, 1),
      lastDate: NepaliDateTime(2099, 12, 12),
      dateOrder: DateOrder.dmy,
      language: NepaliUtils().language,
      initialDatePickerMode: DatePickerMode.day,
    );
    if (selectedDateTime == null) return;
    setState(() => selectedDate = selectedDateTime);
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xA1F88C3F), Color(0xFFD9D9D9)],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Route newRoute =
                MaterialPageRoute(builder: (_) => const UserListings());
                Navigator.pushReplacement(context, newRoute);
              },
            ),
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            IconButton(
                onPressed: () {
                  Route newRoute =
                  MaterialPageRoute(builder: (_) => const SettingsScreen());
                  Navigator.pushReplacement(context, newRoute);
                },
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFE5E5E5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  _getImage();
                },
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Product image',
                      style: TextStyle(fontSize: 22, color: Colors.black54),
                    ),
                    Container(
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: image != null
                            ? Image.file(
                          image!,
                          width: 160,
                          height: 160,
                          fit: BoxFit.cover,
                        )
                            : Icon(
                          Icons.add_photo_alternate,
                          size: MediaQuery.of(context).size.width * 0.20,
                          color: const Color(0xFFADADAD),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      data: Icons.title,
                      controller: titleController,
                      hintText: "Name",
                      isObsecre: false,
                    ),
                    CustomTextField(
                      data: Icons.details,
                      controller: detailController,
                      hintText: "Specification",
                      isObsecre: false,
                    ),
                    ToggleButtons(
                      isSelected: isRetail,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      selectedBorderColor: const Color(0xA1F88C3F),
                      selectedColor: Colors.black87,
                      fillColor: const Color(0xA1F88C3F),
                      color: Colors.black87,
                      constraints: const BoxConstraints(
                        minHeight: 40.0,
                        minWidth: 196.0,
                      ),
                      onPressed: (int index) {
                        setState(() {
                          // The button that is tapped is set to true, and the others to false.
                          for (int i = 0; i < isRetail.length; i++) {
                            isRetail[i] = i == index;
                          }
                          if (isRetail[0] == true) {
                            retailColor = const Color(0xA1F88C3F);
                            wholesaleColor = const Color(0xFFFFFFFF);
                          } else if (isRetail[1] == true) {
                            retailColor = const Color(0xFFFFFFFF);
                            wholesaleColor = const Color(0xA1F88C3F);
                          }
                        });
                      },
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 196,
                          alignment: Alignment.center,
                          color: retailColor,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'For Retail',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 196,
                          alignment: Alignment.center,
                          color: wholesaleColor,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'For Wholesale',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                    ButtonHeaderWidget(
                      title: 'Available Date',
                      text: getText(),
                      onClicked: () => pickDate(context),
                    ),
                    CustomTextField(
                      data: Icons.calendar_month,
                      controller: titleController,
                      hintText: "Available duration",
                      isObsecre: false,
                    ),
                    CustomTextField(
                      data: Icons.all_inbox,
                      controller: weightController,
                      hintText: "Quantity Available in kg",
                      isObsecre: false,
                    ),
                    CustomTextField(
                      data: Icons.phone,
                      controller: phoneController,
                      hintText: "Phone number",
                      isObsecre: false,
                    ),
                    CustomTextField(
                      data: Icons.attach_money_outlined,
                      controller: priceController,
                      hintText: "Price",
                      isObsecre: false,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.all(10),
                      child: GFCheckboxListTile(
                        avatar:
                        const Icon(Icons.delivery_dining, color: Colors.blue),
                        titleText: 'Delivery Required?',
                        subTitleText: 'Do you require delivery service',
                        size: 26,
                        activeBgColor: Colors.green,
                        type: GFCheckboxType.circle,
                        activeIcon: const Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        ),
                        onChanged: (value) {
                          setState(() {
                            deliveryRequired = value;
                          });
                        },
                        value: deliveryRequired,
                        inactiveIcon: null,
                      ),
                    ),
                    CustomTextField(
                      data: Icons.location_on,
                      controller: pickController,
                      hintText: "Pickup",
                      isObsecre: false,
                      enabled: true,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.fromLTRB(30.0, 8.0, 8.0, 8.0),
                margin: const EdgeInsets.all(10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: value,
                    icon: const Icon(
                      Icons.category_rounded,
                      color: Colors.blue,
                    ),
                    hint: const Text("Category"),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    items: category.map(buildMenuItems).toList(),
                    onChanged: (value) => setState(
                          () {
                        this.value = value;
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xA1F88C3F),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Route newRoute =
                  MaterialPageRoute(builder: (context) => const UserListings());
                  Navigator.pushReplacement(context, newRoute);
                },
                child: const Text(
                  "Save Changes",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      )
    );
  }
}
