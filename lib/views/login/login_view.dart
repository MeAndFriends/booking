library login_view;

import 'package:booking/widgets/custom_button.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import '../../values/values.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../../widgets/custom_button.dart';
import '../../widgets/login_shape_clipper.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'login_view_model.dart';

part 'login_mobile.dart';
part 'login_tablet.dart';
part 'login_desktop.dart';
part 'widgets/form_widget.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginViewModel viewModel =
        LoginViewModel(navigatorService: Provider.of(context));
    return ViewModelProvider<LoginViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _LoginMobile(viewModel),
            desktop: _LoginDesktop(viewModel),
            tablet: _LoginTablet(viewModel),
          );
        });
  }
}
