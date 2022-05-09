import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studyarchive/Data/Model/rootApp.dart';
import 'package:studyarchive/Presentation/common_blocs/favorite/bloc/favourite_bloc.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //  name: 'name-here',
  // options: defaultFirebaseAppName.currentPlatform,
  // );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => FavouriteBloc()
            ..add(
              LoadFavouriteModuleList(),
            ),
        ),
      ],
      child: MaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: RootApp(),
      ),
    );
  }
}
