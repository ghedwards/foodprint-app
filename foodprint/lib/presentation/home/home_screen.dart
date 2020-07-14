import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodprint/application/foodprint/foodprint_bloc.dart';
import 'package:foodprint/application/photos/photo_actions_bloc.dart';
import 'package:foodprint/domain/auth/jwt_model.dart';
import 'package:foodprint/injection.dart';
import 'package:foodprint/presentation/home/home_page.dart';
import 'package:foodprint/presentation/home/loading_page.dart';
import 'package:foodprint/presentation/inherited_widgets/inherited_user.dart';
import 'package:foodprint/presentation/login_page/login_page.dart';

class HomeScreen extends StatelessWidget {
  final JWT token;
  const HomeScreen({Key key, @required this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<FoodprintBloc>(
              create: (context) => getIt<FoodprintBloc>()
                ..add(FoodprintEvent.foodprintRequested(token: token))),
          BlocProvider<PhotoActionsBloc>(
            create: (context) => getIt<PhotoActionsBloc>(),
          ),
        ],
        child: BlocBuilder<FoodprintBloc, FoodprintState>(
          builder: (context, state) {
            if (state is FetchFoodprintFailure) {
              return const LoginPage();
            }
            if (state is FoodprintUpdated) {
              return InheritedUser(
                foodprint: state.foodprint,
                token: token,
                child: const HomePage(),
              );
            }
            if (state is FetchFoodprintSuccess) {
              return InheritedUser(
                foodprint: state.foodprint,
                token: token,
                child: const HomePage(),
              );
            }
            return LoadingPage();
          },
        ),
      ),
    );
  }
}
