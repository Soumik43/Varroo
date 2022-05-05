import 'package:flutter/material.dart';
import '../widgets/badge_widget.dart';
import '../widgets/item_column.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int itemcount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Material(
          color: Colors.black,
          child: ListView(
            children: [
              const ListTile(
                title: Text(
                  "Varroo.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () => Navigator.pop(context),
                hoverColor: Colors.orange,
                title: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              ExpansionTile(
                title: Row(
                  children: [
                    Icon(Icons.category, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Categories',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                children: [
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    title: Text(
                      'Satyanarayan Kit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    title: Text(
                      'Ganpati Kit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    title: Text(
                      'Satyarayan Kit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    title: Text(
                      'Rudra Abhishek Kit',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              ListTile(
                onTap: () => Navigator.pop(context),
                hoverColor: Colors.orange,
                title: Row(
                  children: [
                    Icon(
                      Icons.family_restroom,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'About us',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Varroo.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            actions: [
              makeIconWithBadge(itemcount.toString(), () {}),
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/profile.png",
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.black,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/27fa50e2-e2cf-4de2-90eb-fadfdf1882cb.jpg'),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Offerings for all your\nsoulful prayers.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        color: Colors.white,
                                        letterSpacing: 0.8,
                                      ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "All your fuzz to collect items for\npooja is on us.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Colors.white,
                                          letterSpacing: 0.8),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.orange,
                              Colors.red,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "For",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Pundits",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Help Devotee",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/images/vector-graphic-illustration-indian-pandit-260nw-1803129433-removebg-preview.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Carts for use.",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FinalItemColumn(
                            name: "Satyarayan",
                            imageurl: 'assets/images/satyanarayna.png',
                            price: '1220',
                            onpressed: () {
                              setState(() {
                                itemcount++;
                              });
                            },
                          ),
                          SizedBox(width: 5),
                          FinalItemColumn(
                            name: "Maha Rudra Abhishek",
                            imageurl: 'assets/images/rudra1 1.png',
                            price: '1220',
                            onpressed: () {
                              setState(() {
                                itemcount++;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
