import 'package:classroom/application/course/course_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    CourseBloc.addEventWithoutContext(CourseEvent.getCourses());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CourseBloc, CourseState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.courses.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(state.courses[index].name ?? "<NO-NAME>"),
              );
            },
          );
        },
      ),
    );
  }
}
