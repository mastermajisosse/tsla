// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../blocs/auth/auth_bloc.dart';
// import '../blocs/comment/comment_bloc.dart';
// import '../blocs/echo/echo_bloc.dart';
// import '../blocs/language/language_bloc.dart';
// import '../blocs/login/login_bloc.dart';
// import '../blocs/map/map_bloc.dart';
// import '../blocs/password/password_bloc.dart';
// import '../blocs/post/post_bloc.dart';
// import '../blocs/profile/profile_bloc.dart';
// import '../blocs/register/register_bloc.dart';
// import '../blocs/spot/spot_bloc.dart';
// import '../data/services/user_service.dart';

// List<BlocProvider> blocProviders = [
//   BlocProvider<LanguageBloc>(
//     create: (context) => LanguageBloc()..add(LanguageLoadStarted()),
//   ),
//   BlocProvider<AuthBloc>(
//     create: (context) => AuthBloc(),
//   ),
//   BlocProvider<LoginBloc>(
//     create: (context) => LoginBloc(),
//   ),
//   BlocProvider<RegisterBloc>(
//     create: (context) => RegisterBloc(),
//   ),
//   BlocProvider<PasswordBloc>(
//     create: (context) => PasswordBloc(),
//   ),
//   BlocProvider<ProfileBloc>(
//     create: (context) => ProfileBloc(),
//   ),
//   BlocProvider<MapBloc>(
//     create: (context) => MapBloc(),
//   ),
//   BlocProvider<SpotBloc>(
//     create: (context) => SpotBloc(),
//   ),
//   BlocProvider<EchoBloc>(
//     create: (context) => EchoBloc(),
//   ),
//   BlocProvider<PostBloc>(
//     create: (context) => PostBloc(echoBloc: BlocProvider.of<EchoBloc>(context)),
//   ),
//   BlocProvider<CommentBloc>(
//     create: (context) =>
//         CommentBloc(echoBloc: BlocProvider.of<EchoBloc>(context)),
//   ),
// ];

// List<RepositoryProvider> repositoryProviders = [
//   RepositoryProvider<UserService>(
//     create: (context) => UserService(),
//   ),
// ];
