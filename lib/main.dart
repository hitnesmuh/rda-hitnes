import 'package:flutter/material.dart';
import 'package:rda_hitnes/themes.dart';
import 'package:rda_hitnes/widget/header_card.dart';
import 'package:rda_hitnes/widget/menu_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Main Page',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      child: Text('Welcome'),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  'Add',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget cCard() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                child: HeaderCard(
                  title: 'C1',
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                ),
                child: HeaderCard(
                  title: 'C2',
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                ),
                child: HeaderCard(
                  title: 'C3',
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget menus() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: MenuCard(),
              ),
            ],
          ),
        ),
      );
    }

    Widget btnFloatingAction() {
      return Container();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          backgroundColor: whiteColor,
          body: SafeArea(
            child: ListView(
              children: [
                header(),
                cCard(),
                menus(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: greyColor,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
