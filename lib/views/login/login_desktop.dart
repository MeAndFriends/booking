part of login_view;

class _LoginDesktop extends StatelessWidget {
  final LoginViewModel viewModel;
  _LoginDesktop(this.viewModel);
  @override
  Widget build(BuildContext context) {
    var heightOfScreen =
        MediaQuery.of(context).size.height - Constants.heightOfAppBar;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appBackgroundColor,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: LoginShapeClipper(),
                child: Container(
                  height: heightOfScreen,
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
                clipper: LoginShapeClipper(turningRadius: 0.6),
                child: Container(
                  height: heightOfScreen,
                  decoration: const BoxDecoration(
                      color: AppColors.boxDecorationBlueColor),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: <Widget>[
                  //10% of the height of screen
                  SizedBox(height: heightOfScreen * 0.075),
                  buildIntroText(context, viewModel),
                  const SizedBox(height: 8.0),
                  buildForm(context, viewModel),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
