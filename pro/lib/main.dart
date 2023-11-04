import 'package:flutter/material.dart';
import 'package:pro/global/constants/colors.dart';
import 'package:pro/presentation/screens/Rootpage/rootscreen.dart';
import 'package:pro/presentation/screens/explore/screens/books/insidebooklist/inside_book_list.dart';
import 'package:pro/presentation/screens/explore/screens/creative/screens/insidecreative/insidecreative.dart';
import 'package:pro/presentation/screens/explore/screens/newskills/insideskill/inside_skill.dart';
import 'package:pro/presentation/screens/explore/screens/newskills/newskills.dart';
import 'package:pro/presentation/screens/explore/screens/topics/insidetopic/inside_topic.dart';
import 'package:pro/presentation/screens/home/screens/calendar/calendar.dart';
import 'package:pro/presentation/screens/home/screens/profile/profile.dart';
import 'package:pro/presentation/screens/home/screens/timedashboard/time_dashboard_widget.dart';
import 'package:pro/presentation/screens/introduction%20screen/introduction_screen_1.dart';
import 'package:pro/presentation/screens/introduction%20screen/introduction_screen_2.dart';
import 'package:pro/presentation/screens/introduction%20screen/introduction_screen_3.dart';
import 'package:pro/presentation/screens/introduction%20screen/introduction_screen_4.dart';
import 'package:pro/presentation/screens/login/loginscreen.dart';
import 'package:pro/presentation/screens/login/selectionscreen.dart';
import 'package:pro/presentation/screens/login/signupscreen.dart';
import 'package:pro/presentation/screens/work/screens/work_inside_screen/work_inside_screen.dart';
import 'package:pro/presentation/screens/workout/screens/workoutinsidescreen/workout_inside_screen.dart';
import 'presentation/screens/explore/screens/books/books.dart';
import 'presentation/screens/explore/screens/creative/creative.dart';
import 'presentation/screens/explore/screens/others/insideother/inside_other.dart';
import 'presentation/screens/explore/screens/others/others.dart';
import 'presentation/screens/explore/screens/topics/topics.dart';
import 'presentation/screens/introduction screen/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: GlobalColors.primaryColor),
      home: const LoadingScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/introductionscreen1": (context) => const IntroductionScreen1(),
        "/introductionscreen2": (context) => const IntroductionScreen2(),
        "/introductionscreen3": (context) => const IntroductionScreen3(),
        "/introductionscreen4": (context) => const IntroductionScreen4(),
        "/selectionscreen": (context) => const SelectionScreen(),
        "/loginscreen": (context) => const LoginScreen(),
        "/signupscreen": (context) => const SignupScreen(),
        "/rootscreen": (context) => const RootScreen(),
        "/profilescreen": (context) => const ProfileScreen(),
        "/calendarscreen": (context) => const CalendarScreen(),
        "/timedashboardscreen": (context) => const TimeDashBoardScreen(),
        "/workinsidescreen": (context) => const WorkInsideScreen(),
        "/workoutinsidescreen": (context) => const WorkoutInsideScreen(),
        "/newskillsscreen": (context) => const NewSkillsScreen(),
        "/insideskill": (context) => const InsideSkill(),
        "/booksscreen": (context) => const BooksScreen(),
        "/insidebookslist": (context) => const InsideBooksList(),
        "/topics": (context) => const Topics(),
        "/insidetopic": (context) => const InsideTopic(),
        "/creative": (context) => const Creative(),
        "/insidecreative": (context) => const InsideCreative(),
        "/others": (context) => const Others(),
        "/insideother": (context) => const InsideOther(),
      },
    );
  }
}
