import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';

class Search with ChangeNotifier {
  Future<void> search(BuildContext context) async {
    await showSearch(
      context: context,
      delegate: SearchBar(),
    );
  }
}

class SearchBar extends SearchDelegate {
  @override
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Constants().Button,
      elevation: 0,
      title: const Text(
        "Search",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      actions: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = "",
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
    );
  }
}
