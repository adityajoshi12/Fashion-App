part of main_page_view;

class _MainPageTablet extends StatelessWidget {
  final MainPageViewModel viewModel;

  _MainPageTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('MainPageTablet')),
    );
  }
}