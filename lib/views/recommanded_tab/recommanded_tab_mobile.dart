part of recommanded_tab_view;

class _RecommandedTabMobile extends StatelessWidget {
  final RecommandedTabViewModel viewModel;

  _RecommandedTabMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: new GridView.builder(
        itemCount: products.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            childAspectRatio: 0.75,
            crossAxisSpacing: 1),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                //viewModel.nav(products[index]);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsView(products[index])));
              },
              child: Hero(
                  tag:products[index].position,
                  child: GridItem(products[index])));
        },
      ),
    );
  }
}

class GridItem extends StatefulWidget {
  Product product;
  GridItem(Product product) {
    this.product = product;
  }

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 4, left: 4),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.product.imageUrl))),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 4),
            child: Text(
              widget.product.productName,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 4),
              child: Text(
                "\$${widget.product.price}",
                style: TextStyle(color: Colors.black26),
              ),
            ))
      ],
    );
  }
}
