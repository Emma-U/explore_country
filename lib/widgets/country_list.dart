import 'package:explore/model/country.dart';
import 'package:explore/pages/detail_page.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  const CountryList({super.key, required this.countries});
  final List<Country> countries;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var country in countries)
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return CountryDetailsPage(country: country);
                }),
              );
            },
            leading: SizedBox(
              height: 40,
              width: 60,
              child: ClipRect(
                child: Image(
                  image: NetworkImage(
                    country.flag,
                  ),
                ),
              ),
            ),
            title: Text(
              country.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(country.firstCapital),
          ),
      ],
    );
  }
}
