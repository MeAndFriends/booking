part of hotel_list_view;

class _HotelListMobile extends StatelessWidget {
  final HotelListViewModel viewModel;

  _HotelListMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    var heightOfScreen =
        MediaQuery.of(context).size.height - Constants.heightOfAppBar;
    return Scaffold(
      body: Column(children: [
        Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper:
                    LoginShapeClipper(turningRadius: 0.7, heightPercentage: 1),
                child: Container(
                  height: Constants.heightOfAppBar,
                  decoration: const BoxDecoration(
                      color: AppColors.boxDecorationGrayColor),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper:
                    LoginShapeClipper(turningRadius: 0.5, heightPercentage: 1),
                child: Container(
                  height: Constants.heightOfAppBar,
                  decoration: const BoxDecoration(
                      color: AppColors.boxDecorationBlueColor),
                ),
              ),
            ),
            Container(
                height: Constants.heightOfAppBar,
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                )),
          ],
        ),
        Expanded(
          child: getListHotels(viewModel),
        )
      ]),
    );
  }
}
