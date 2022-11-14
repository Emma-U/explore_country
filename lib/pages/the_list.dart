import 'package:explore/model/country_model.dart';
import 'package:explore/network/remote_file.dart';
import 'package:explore/pages/detail_page.dart';
import 'package:explore/utilities/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TheList extends StatefulWidget {
  const TheList({
    Key? key,
  }) : super(key: key);

  @override
  State<TheList> createState() => _TheListState();
}

class _TheListState extends State<TheList> {
  List<CountryModel> users = [];

  Future<void> fetchData() async {
    final response = await RemoteFile.fetchData();
    setState(() {
      users = response;
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: ((context, index) {
          final user = users[index];
          return Visibility(
            replacement: const SpinKitDoubleBounce(color: kRed),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const DetailPage();
                  }),
                );
              },
              child: ListTile(
                leading: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox(
                    height: 40,
                    width: 60,
                    child: Image(
                      image: NetworkImage(
                        user.dialing.toString(),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  user.name.toString(),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
