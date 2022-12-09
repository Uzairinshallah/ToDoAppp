import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60.h,),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric( horizontal: 15.w),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus turpis felis, non molestie nunc tempor nec. Sed orci quam, condimentum non erat a, suscipit pharetra massa. Sed aliquam ex arcu, ac gravida metus fermentum non. Curabitur id volutpat arcu, quis rhoncus ex. Curabitur eget pulvinar odio. Nam suscipit nibh vitae sapien hendrerit placerat. Aliquam vel mauris varius dolor fermentum posuere quis quis nisl."
                  "Integer eu gravida metus. Aenean nec libero varius, lacinia leo eget, ultricies ex. Ut in maximus augue. Vivamus a lectus molestie, tempus leo a, finibus dui. Etiam mollis velit id viverra laoreet. Etiam ut quam augue. Phasellus sed justo sed mauris finibus molestie id id nibh. Praesent vitae libero turpis. Morbi pretium justo in congue lacinia."
                  "Vestibulum a eleifend dui. Fusce vel dapibus justo, id consectetur nisl. Quisque sit amet justo euismod, euismod lectus in, sodales tellus. Sed aliquet varius augue vel gravida. Donec pharetra at diam a consectetur. "
                  "\n  ●	In hac habitasse platea dictumst. Duis consequat, libero eget ullamcorper facilisis, turpis neque suscipit nisi, a consequat tellus nulla sed ligula. In sit amet purus felis. Sed placerat commodo lacus, vitae placerat felis molestie congue. "
                  "\n  ●	Curabitur eros erat, pharetra vitae felis eget, volutpat ultricies augue. Cras laoreet vel urna ac pretium. Mauris pretium facilisis velit eget egestas."
                  "Quisque sed vulputate urna. Morbi ultrices  metus vitae nibh convallis lobortis. Suspendisse placerat porta arcu, ac tristique elit tristique eu. Fusce lacus justo, auctor blandit consectetur et, iaculis et ligula. Sed ornare purus vitae velit egestas, nec interdum enim elementum. Nam semper laoreet commodo."
                      " \nCras ex neque, dapibus ac dui vitae, "
                      " \ngravida ultricies felis.  "
                      " \nAenean malesuada consequat metus eget ullamcorper.  ",
                  style: TextStyle(fontSize: 18.h),
              ),
            ),
          ),

          getButton(
            "List",
            () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>  const HomePage(),
                ),
              );
            },
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }

  Widget getButton(String txt, Function onTap) {
    return Center(
      child: InkWell(
        onTap: () async {
          onTap();
        },
        child: Container(
          height: 50.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                fontSize: 24.w,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
