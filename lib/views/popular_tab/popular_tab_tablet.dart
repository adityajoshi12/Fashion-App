part of popular_tab_view;

class _PopularTabTablet extends StatelessWidget {
  final PopularTabViewModel viewModel;

  _PopularTabTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('PopularTabTablet')),
    );
  }
}