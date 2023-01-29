import 'package:assignment/dropdownMenu.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Register"), // placed in the appbar just after the title
          // To have the popup menu on the app bar we use the keyword "actions"
          // The items are positioned in the desired order
          // this is just a sample as no item on the menu links to another page
          actions: [
            PopupMenuButton<int>(
              // the item builder builds the popup menu with it's items
              itemBuilder: (context) => [
                // First item
                const PopupMenuItem(
                  child: Text("Home"),
                ),

                // Second item
                const PopupMenuItem(
                  child: Text("About"),
                ),

                // Third item
                const PopupMenuItem(
                  child: Text("Contact"),
                ),
              ],
            ),
          ]),

      // Drawer for the side menu with a listview to contain the list tile items
      drawer: Drawer(
        child: ListView(
          // Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Center(
                child: Row(
                  children: const [
                    // fitted box to contain the Profile icon
                    FittedBox(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Wahala Forms',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Title that is centered

          Center(
              child: Padding(
            padding: EdgeInsets.only(left: 10, top: 26),
            child: Text(
              "Registration",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
          )),

          //Text box with the first name

          Padding(
            padding: EdgeInsets.only(left: 10, top: 36),
            child: Text(
              "First Name",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 26),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: UnderlineInputBorder(),
                //labelText: 'First Name',
              ),
            ),
          ),

          //Text box with the last name

          Padding(
            padding: EdgeInsets.only(left: 10, top: 26),
            child: Text(
              "Last Name",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 26),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: UnderlineInputBorder(),
                //labelText: 'Last Name',
              ),
            ),
          ),

          //Text box with the email

          const Padding(
            padding: EdgeInsets.only(left: 10, top: 26),
            child: Text(
              "Email",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 26),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: UnderlineInputBorder(),
                //labelText: 'Email',
              ),
            ),
          ),

          //calling the drop-down menu class as a widget

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 36),
            child: DropdownMenuClass(),
          ),
          // This text button is to display a "submit" command to save information
          // None of this info is sent online or to a database
          // This is a sample of what the form would look like
          Center(
            //Constrained box in order to set a maximum width
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 80),
              child: ElevatedButton(
                // When the button is pressed a message pops up
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    // the text that appears when the submit button is clicked,
                    content: const Text('Yay!!! Welcome to Wahala School'),

                    // actions is the part that shows what happens when the button is pressed
                    actions: <Widget>[
                      // an "ok" option appears to close the box when it is pressed
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                // the text that appears on the button
                child: const Text('Submit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
