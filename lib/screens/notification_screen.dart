import 'package:fashions_app/controllers/notification_screen_controller.dart';
import 'package:fashions_app/screens/screen_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends GetView<NotificationScreenController>{
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kBlackColor,
            ),
            child: Icon(
              Icons.arrow_back,
              color: kWhiteColor,
              size: 20,
            ),
          ),
        ),
        leadingWidth: 50,
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kWhiteColor
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.more_vert,
                color: kBlackColor,
              ),
            ),
          )
        ],
        actionsPadding: EdgeInsets.only(right: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22
                  ),
                ),
              ),
          
              _section(
                'Kristine Jones',
                'It is a long established fact that reader will be distracted by the readable content of a page',
                '2 hours ago'
              ),
              _divider(),
          
              _section(
                  'Cheryl Moretti',
                  'There are many variations of passages of Lorem Ipsum available',
                  '2 hours ago'
              ),
              _divider(),
          
              _section(
                  'Cheryl Moretti',
                  'There are many variations of passages of Lorem Ipsum available',
                  '2 hours ago'
              ),
              _divider(),
          
              _section(
                  'Kristine jones',
                  'There are many variations of passages of Lorem Ipsum available',
                  '2 hours ago'
              ),
              _divider(),

              _section(
                  'Kay Hicks',
                  'There are many variations of passages of Lorem Ipsum available',
                  '2 hours ago'
              ),
              _divider(),

              _section(
                  'Cheryl Moretti',
                  'There are many variations of passages of Lorem Ipsum available',
                  '2 hours ago'
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _section(String senderName, String message, String timeSent){
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Icon(
            Icons.person,
            size: 40,
            color: kBlackColor,
          ),
        ),
      ),
      title: Text.rich(
        TextSpan(
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: senderName,
              style: TextStyle(
                color: kBlackColor,
                fontWeight: FontWeight.w900,
                fontSize: 13,
              )
            ),
            TextSpan(
              text: ' $message'
            )
          ]
        )
      ),
      subtitle: Text(
        timeSent,
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 13
        ),
      ),
    );
  }

  Widget _divider(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}