import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/button.dart';
import 'package:medi_ui/widgets/clinicals.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.close,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  // color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Color.fromRGBO(124, 58, 237, 1.0),
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You are subscribed to  Xxxxx',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('To manage your notifications, simple toggle on/off '),
              Text('the topics  you wish to receive notifications to'),
              Container(
                width: 470,
                height: 470,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SwitchContainer(
                        text: 'Clinical Trials',
                        hintText: 'Get notified of the latest clinical trial',
                        title: 'updates',
                        switchValue: true,
                        onChanged: (bool value) {},
                      ),
                    ),
                    SwitchContainer(
                      text: 'New medicines',
                      hintText: 'Stay updated for the new medicines',
                      title: 'updates',
                      switchValue: true,
                      onChanged: (bool value) {},
                    ),
                    SwitchContainer(
                      text: 'Clinical Trials',
                      hintText: 'Get notified of the latest clinical trial',
                      title: 'updates',
                      switchValue: true,
                      onChanged: (bool value) {},
                    ),
                    SwitchContainer(
                      text: 'Clinical Trials',
                      hintText: 'Get notified of the latest clinical trial',
                      title: 'updates',
                      switchValue: true,
                      onChanged: (bool value) {},
                    ),
                    MediButton(
                      icon: Icons.notifications_off_sharp,
                      text: 'unsubscribe',
                      color: Color.fromRGBO(124, 58, 237, 1.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
