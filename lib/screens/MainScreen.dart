import 'package:flutter/material.dart';
import 'package:searchbar/datas/data.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          'Search for foods...',
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.all(8.0),
            onPressed: () {
              showSearch(
                context: context,
                delegate: FoodItemsSearch(),
              );
            },
            icon: Icon(Icons.search_rounded),
          )
        ],
      ),
    );
  }
}

class FoodItemsSearch extends SearchDelegate<FoodItem> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        padding: EdgeInsets.all(8.0),
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.all(8.0),
        onPressed: () {
          close(context, FoodItem(category: "", title: ""));
        },
        icon: Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty
        ? loadFoodItem()
        : loadFoodItem().where((food) => food.title.startsWith(query)).toList();
    return myList.isEmpty
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'No ResultS Found...',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                CircularProgressIndicator()
              ],
            ),
          )
        : ListView.builder(
            itemCount: myList.length,
            itemBuilder: (context, index) {
              final FoodItem listItem = myList[index];
              return ListTile(
                onTap: () {
                  showResults(context);
                },
                title: Text(
                  listItem.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listItem.category,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Divider()
                  ],
                ),
              );
            });
  }
}
