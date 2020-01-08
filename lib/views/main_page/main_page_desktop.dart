part of main_page_view;

class _MainPageDesktop extends StatelessWidget {
  final MainPageViewModel viewModel;

  _MainPageDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('MainPageDesktop')),
    );
  }
}