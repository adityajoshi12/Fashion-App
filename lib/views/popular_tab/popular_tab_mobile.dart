part of popular_tab_view;

class _PopularTabMobile extends StatelessWidget {
  final PopularTabViewModel viewModel;

  _PopularTabMobile(this.viewModel);

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
                            image: NetworkImage(products[index].imageUrl))),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 4),
                  child: Text(
                    products[index].productName,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.0, left: 4),
                    child: Text(
                      "\$${products[index].price}",
                      style: TextStyle(color: Colors.black26),
                    ),
                  ))
            ],
          );
        },
      ),
    );
  }
}
