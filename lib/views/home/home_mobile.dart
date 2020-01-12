part of home_view;

class _HomeMobile extends StatefulWidget {
  @override
  __HomeMobileState createState() => __HomeMobileState();
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);
}

class __HomeMobileState extends State<_HomeMobile>
    with TickerProviderStateMixin {
  KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: MainPageView(),
      items: [
        KFDrawerItem.initWithPage(
          text: Text('Home', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
          page: MainPageView(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Cart',
            style: TextStyle(color: Colors.white),
          ),
          icon: SvgPicture.asset('assets/images/bag.svg',height: 24,width: 24,color: Colors.white,),
          page: CartView(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Search',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.search, color: Colors.white),
          page: SettingsView(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Filter',
            style: TextStyle(color: Colors.white),
          ),
          icon: SvgPicture.asset('assets/images/setting.svg',height: 24,width: 24,color: Colors.white,),
          page: SettingsView(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Messages',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.message, color: Colors.white),
          page: SettingsView(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.person, color: Colors.white),
          page: SettingsView(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Help',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.help, color: Colors.white),
          page: SettingsView(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.settings, color: Colors.white),
          page: SettingsView(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: SvgPicture.network(
                'https://image.flaticon.com/icons/svg/145/145867.svg',
                height: 60,
                width: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Aditya Joshi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("aditya@imail.com")
                ],
              ),
            )
          ],
        ),
        footer: KFDrawerItem(
          text: Text(
            'Log out',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return CartView();
              },
            ));
          },
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Colors.black],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
