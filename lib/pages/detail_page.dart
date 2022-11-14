import 'package:explore/model/country_model.dart';
import 'package:explore/network/remote_file.dart';
import 'package:explore/utilities/const.dart';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<CountryModel> users = [];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Country Name',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: kWhite,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Column());
  }
}

// Scaffold(
//       backgroundColor: kWhite,
//       appBar: AppBar(backgroundColor: kRed),
//       body: ListView.builder(
//         itemCount: users.length,
//         itemBuilder: (BuildContext context, int index) {
//           final user = users[index];
//           final imageUrl = user['flags']['png'];
//           final state = user['capital'];
//           final name = user['name']['common'];
//           return Column(
//             children: [
//               Container(
//                 color: kWhite,
//               )
//             ],
//           );
//         },
//       ),
//     );