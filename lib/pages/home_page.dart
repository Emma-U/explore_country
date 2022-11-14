import 'package:explore/model/country.dart';
import 'package:explore/services/country_service.dart';
import 'package:explore/utilities/constants.dart';
import 'package:explore/widgets/country_list.dart';
import 'package:explore/widgets/header.dart';
import 'package:explore/widgets/search_field.dart';
import 'package:flutter/material.dart';

import '../widgets/file_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CountryService countryService = CountryService();

  String _searchText = '';
  bool isLoading = true;

  List<Country> _countries = [];
  List<Country> get _filteredCountries => _searchText.isEmpty
      ? _countries
      : _countries
          .where((country) =>
              country.name.toLowerCase().contains(_searchText.toLowerCase()))
          .toList();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _getCountries();
    });
  }

  Future<void> _getCountries() async {
    _countries = await CountryService().fetchData();

    // Sort the countries by name
    _countries.sort((a, b) => a.name.compareTo(b.name));

    // Set loading state to false
    setState(() {
      isLoading = false;
    });
  }

  void onSearch(String value) {
    setState(() {
      _searchText = value.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Header(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.light_mode_outlined),
                    )
                  ],
                ),
                SearchField(onChanged: onSearch),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FileDetail(),
                )
              ],
            ),
            Expanded(
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : CountryList(countries: _filteredCountries),
            ),
          ],
        ),
      ),
    );
  }
}
