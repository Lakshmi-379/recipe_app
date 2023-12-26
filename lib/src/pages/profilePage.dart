import 'package:flutter/material.dart';
import 'package:recipe_app/src/core/images/pictures.dart';

import '../core/colors/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEdit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.theme,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Profile',
                    style: TextStyle(
                        color: AppColors.greenColor, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () {
                    setState(() {
                      isEdit = !isEdit;
                    });
                  }, icon: Icon(
                    Icons.edit,
                    color: isEdit ? AppColors.greenColor : Colors.white,
                  )),
                ],
              ),
              SizedBox(height: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(Pictures.profile),
                  ),
                  SizedBox(height: 30,),
                  ListTile(
                    title: Text(
                      'Lakshmi Ramesh',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('lakshmi.acube@gmail.com',style: TextStyle( color: Colors.white),),
                        Text('Phone: 8590026379',style: TextStyle( color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
