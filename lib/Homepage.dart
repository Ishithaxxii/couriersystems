import 'dart:io';

import 'package:couriersystems/Details_page.dart';
import 'package:flutter/material.dart';
import 'package:couriersystems/UsersCargo.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), // Instantiate the HomePage widget here
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //to hold response
  late UsersCargo usersCargo;
  //data is loaded flag
  bool isDataLoaded = false;
  //error msg
  String errorMsg = '';

  //API Call
  Future<UsersCargo> getDataFromAPI() async {
    Uri url = Uri.parse(
        'https://charannagisetti.github.io/users12_cargo.json/users12_cargo.json');
    var response = await http.get(url);
    if (response.statusCode == HttpStatus.ok) {
      //ok
      UsersCargo userCargo = usersCargoFromJson(response.body);
      return userCargo;
    } else {
      errorMsg = '${response.statusCode}: ${response.body} ';
      return UsersCargo(data: []);
    }
  }

  assignData() async {
    usersCargo = await getDataFromAPI();
    setState(() {
      isDataLoaded = true;
    });
  }

  @override
  void initState() {
    // call method
    assignData();
    super.initState();
  }

  bool showInfo = false; // Variable to track whether to show information or not

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: Text('Express Courier Systems'),
        ),
        body: !isDataLoaded
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : errorMsg.isNotEmpty
                ? Center(child: Text(errorMsg))
                : usersCargo.data.isEmpty
                    ? const Center(child: Text('No Data'))
                    : ListView.builder(
                        itemCount: usersCargo.data.length,
                        itemBuilder: ((context, index) => getMyRow(index))));
  }

  Widget getMyRow(int index) {
    return Card(
      child: ListTile(
        onTap: () {
          //Navigate to next Details
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Details_page(userCargo: usersCargo.data[index])));
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(usersCargo.data[index].orderImage),
        ),
        trailing: Icon(usersCargo.data[index].isDelivered
            ? Icons.done_all
            : Icons.done_all),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              usersCargo.data[index].userName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('OrderType: ${usersCargo.data[index].orderType}')
          ],
        ),
      ),
    );
  }
}
