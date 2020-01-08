part of cart_view;

class _CartMobile extends StatefulWidget {
  @override
  __CartMobileState createState() => __CartMobileState();
  final CartViewModel viewModel;
  Function onMenuPressed;
  _CartMobile(this.viewModel, this.onMenuPressed);
}

class __CartMobileState extends State<_CartMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Material(
          child: IconButton(
            onPressed: widget.onMenuPressed,
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(child: Text('CartMobile')),
    );
  }
}
