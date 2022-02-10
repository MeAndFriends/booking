part of hotel_list_view;

class _HotelListDesktop extends StatelessWidget {
  final HotelListViewModel viewModel;

  _HotelListDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('HotelListDesktop')),
    );
  }
}