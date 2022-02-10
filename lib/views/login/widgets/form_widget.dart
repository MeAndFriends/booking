part of login_view;

Widget buildIntroText(BuildContext context, LoginViewModel viewModel) {
  var textTheme = Theme.of(context).textTheme;
  var heightOfScreen =
      MediaQuery.of(context).size.height - Constants.heightOfAppBar;

  return ListBody(
    children: <Widget>[
      BorderedText(
          strokeWidth: 5.0,
          strokeColor: AppColors.borderTitleColor,
          child: Text(
            "WELCOME",
            style: textTheme.headline4.copyWith(
              color: AppColors.textColor,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          )),
      const SizedBox(height: 4.0),
      SizedBox(height: heightOfScreen * 0.075),
      Text(
        "SIGN IN",
        style: textTheme.headline6.copyWith(
          color: AppColors.textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

Widget buildForm(BuildContext context, LoginViewModel viewModel) {
  var textTheme = Theme.of(context).textTheme;
  var iconTheme = Theme.of(context).iconTheme;

  return Column(
    children: <Widget>[
      CustomTextFormField(
        hasPrefixIcon: true,
        textInputType: TextInputType.emailAddress,
        hintText: "EMAIL ADDRESS",
        title: viewModel.username,
        prefixIcon: Icon(
          FeatherIcons.mail,
          color: iconTheme.color,
          size: 20,
        ),
        onChanged: (str) => {viewModel.username = str},
      ),
      const SizedBox(height: 20.0),
      CustomTextFormField(
        hasPrefixIcon: true,
        textInputType: TextInputType.text,
        hintText: "PASSWORD",
        obscured: true,
        prefixIcon: Icon(
          FeatherIcons.key,
          color: iconTheme.color,
          size: 20,
        ),
        onChanged: (str) => {viewModel.password = str},
      ),
      const SizedBox(height: 24.0),
      CustomButton(
        title: "SIGN ME IN",
        textStyle: textTheme.button.copyWith(
          color: AppColors.buttonTextColor,
        ),
        onPressed: () {
          viewModel.login();
        },
      ),
      const SizedBox(height: 20.0),
    ],
  );
}
