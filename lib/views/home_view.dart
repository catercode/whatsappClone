import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // final titleFont =Theme.of(context)
  //                       .textTheme
  //                       .bodyText2!
  //                       .copyWith(fontWeight: FontWeight.w600),
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(1, 168, 132, 1),
            title: const Text(
              'WhatsApp',
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              )
            ],
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ]),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_bike),
              buildChatCard(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              children: const [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    "assets/images/profile_img.jpg",
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 12,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Color.fromRGBO(1, 168, 132, 1),
                                      radius: 10,
                                      backgroundImage: AssetImage(
                                        "assets/images/add.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "My status",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0),
                                  // TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Tap to add status update",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          fontSize: 14.0, color: Colors.grey),
                                  // TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Recent updates",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: buildStatuscard(context),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: FloatingActionButton(
                            backgroundColor:
                                const Color.fromRGBO(233, 238, 238, 1),
                            onPressed: () {},
                            child: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton(
                          backgroundColor: const Color.fromRGBO(1, 168, 132, 1),
                          onPressed: () {},
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }

  buildChatCard() {
    return ListView.builder(
        itemCount: 10,
        //separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    "assets/images/profile_img.jpg",
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Ordery",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Hey how are doing'),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Yesterday",
                        style: TextStyle(
                            color: Color.fromRGBO(37, 211, 102, 1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // fontSize: 11,fontWeight:FontWeight.bold
                      SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromRGBO(37, 211, 102, 1),
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  Card buildStatuscard(BuildContext context) {
    return Card(
      elevation: 0,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(
                "assets/images/profile_img.jpg",
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "YoungCater",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Text("2 minutes ago"),
            ],
          )
        ],
      ),
    );
  }

  buildWhatupCard() {
    return ListView.builder(
        itemCount: 10,
        //separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
              elevation: 0.0,
              child: ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/profile_img.jpg",
                    ),
                  ),
                  title: const Text(
                    "Ordery",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('Hey how are doing'),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Yesterday",
                        style: TextStyle(
                            color: Color.fromRGBO(37, 211, 102, 1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // fontSize: 11,fontWeight:FontWeight.bold
                      SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromRGBO(37, 211, 102, 1),
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  )));
        });
  }
}
