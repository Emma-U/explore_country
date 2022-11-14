import 'package:explore/model/country.dart';
import 'package:explore/utilities/constants.dart';
import 'package:explore/widgets/details_row.dart';
import 'package:flutter/material.dart';

class CountryDetailsPage extends StatelessWidget {
  const CountryDetailsPage({super.key, required this.country});
  final Country country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: kBlack,
          size: 30,
        ),
        elevation: 0,
        title: Text(
          country.name,
          style: const TextStyle(
            color: kBlack,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: PageView(
                    children: [
                      ClipRect(
                        child: Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            country.flag,
                          ),
                        ),
                      ),
                      ClipRect(
                        child: Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            country.coatOfArm,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  left: 20,
                  bottom: 100,
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: kGreyColor,
                    size: 30,
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 100,
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white.withOpacity(0.5),
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DetailsRow(
              title: 'Population: ',
              details: country.population.toString(),
            ),
            const SizedBox(height: 10),
            DetailsRow(
              title: 'Region: ',
              details: country.region,
            ),
            const SizedBox(height: 10),
            DetailsRow(
              title: 'Capital: ',
              details: country.capital.first,
            ),
            const SizedBox(height: 10),
            DetailsRow(
              title: 'Language: ',
              details: country.language,
            ),
            const SizedBox(height: 10),
            DetailsRow(
              title: 'Independence: ',
              details: country.independent.toString(),
            ),
            const SizedBox(height: 10),
            DetailsRow(
              title: 'Area: ',
              details: country.area.toString(),
            ),
            const SizedBox(height: 10),
            DetailsRow(
              title: 'Timezones: ',
              details: country.timeZone,
            ),
            const SizedBox(height: 10),
            DetailsRow(
              title: 'Dialing Code: ',
              details: country.dialing,
            ),
          ],
        ),
      ),
    );
  }
}
