part of popular_tab_view;

class _PopularTabDesktop extends StatelessWidget {
  final PopularTabViewModel viewModel;

  _PopularTabDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('PopularTabDesktop')),
    );
  }
}