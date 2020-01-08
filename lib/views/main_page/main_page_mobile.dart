part of main_page_view;

class _MainPageMobile extends StatefulWidget {
  @override
  __MainPageMobileState createState() => __MainPageMobileState();

  final MainPageViewModel viewModel;
  final Function onMenuPressed;
  _MainPageMobile(
    this.viewModel,
    this.onMenuPressed,
  );
}

class __MainPageMobileState extends State<_MainPageMobile>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[CartCountWidget()],
          leading: IconButton(
            icon: SvgPicture.asset(
              "assets/images/menu.svg",
              height: 24,
              width: 24,
            ),
            onPressed: widget.onMenuPressed,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Discover",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.search),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              "assets/images/setting.svg",
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: CircleTabIndicator(color: Colors.black, radius: 4),
                  isScrollable: true,
                  labelColor: Colors.black,
                  tabs: <Widget>[
                    Tab(text: 'Recommended'),
                    Tab(text: 'Popular'),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            RecommandedTabView(),
            PopularTabView(),
          ],
        ));
  }
}
