import 'package:explore/pages/the_list.dart';
import 'package:explore/utilities/const.dart';
import 'package:explore/widget/bottom_view.dart';
import 'package:explore/widget/header.dart';
import 'package:explore/widget/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Header(),
                    IconButton(
                      onPressed: (() {
                        setState(
                            () {}); //To change the background color of the app
                      }),
                      icon: const Icon(Icons.light_mode_outlined),
                    )
                  ],
                ),
                const Search(),
                const BottomView(),
              ],
            ),
          ),
          const TheList()
        ],
      ),
    );
  }
}
