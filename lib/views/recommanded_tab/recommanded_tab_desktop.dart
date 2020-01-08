part of recommanded_tab_view;

class _RecommandedTabDesktop extends StatelessWidget {
  final RecommandedTabViewModel viewModel;

  _RecommandedTabDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('RecommandedTabDesktop')),
    );
  }
}