import 'package:flutter/material.dart';
import 'package:taskmanagementapp/utils/app_colors.dart';
import 'package:taskmanagementapp/widgets/textfied_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/addtask1.jpg"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                TextFieldWidget(
                    textController: nameController,
                    hintText: "Task name",
                    borderRadius: 30),
                SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  textController: detailController,
                  hintText: "Task detail",
                  borderRadius: 30,
                  maxLines: 5,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            )
          ],
        ),
      ),
    );
  }
}
