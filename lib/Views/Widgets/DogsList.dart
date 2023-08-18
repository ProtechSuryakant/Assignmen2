import 'dart:convert';

import 'package:assignment2/Data/dummyData.dart';
import 'package:assignment2/Views/Widgets/DogsCard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DogsList extends StatefulWidget {
  @override
  _DogsListState createState() => _DogsListState();
}

class _DogsListState extends State<DogsList> {
  late Future<List<DummyData>> fetchData;
  Future<List<DummyData>> getImgData() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products/'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      if (data != null && data.containsKey('products')) {
        List<DummyData> imgList = [];

        List<dynamic> productList = data['products'];

        for (Map<String, dynamic> item in productList) {
          String title = item['title'];
          String imageUrl = (item['images'] as List).isEmpty
              ? ''
              : item['images'][0].toString();
          String description = item['description'];

          DummyData imgData = DummyData(
            title: title,
            images: [imageUrl],
            description: description,
          );
          imgList.add(imgData);
        }

        return imgList;
      } else {
        throw Exception('Malformed response or missing "products" key');
      }
    } else {
      throw Exception('Failed to fetch');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData = getImgData();
  }

  Future<void> _refreshData() async {
    List<DummyData> fetchedData = await getImgData();
    setState(() {
      fetchData = Future.value(fetchedData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: FutureBuilder<List<DummyData>>(
        future: fetchData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error fetching data'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  snapshot.data!.length,
                  (index) {
                    return DogsCard(
                      image: snapshot.data![index].images[0],
                      title: snapshot.data![index].title,
                      desc: snapshot.data![index].description,
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
