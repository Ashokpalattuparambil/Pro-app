import 'package:flutter/material.dart';
import 'package:pro/global/widgets/background_widget.dart';
import 'package:pro/global/widgets/texts/heading_text.dart';
import 'package:pro/presentation/screens/explore/screens/books/widgets/added_book_list_widget.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        child: ListView(
      children: [
        const HeadingTextWidget(
            text: "Books", right: 0, left: 0, top: 0, bottom: 0),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) {
            return const AddedBookList();
          }),
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 15,
            );
          },
          itemCount: 8,
        )
      ],
    ));
  }
}
