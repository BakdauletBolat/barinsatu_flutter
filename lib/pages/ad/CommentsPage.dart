import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/utils/DateFormatter.dart';
import 'package:flutter/material.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key? key, required this.comments}) : super(key: key);

  final List<Comment> comments;

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  DateFormatter dataFormatter = DateFormatter();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text('Коментарий (' + widget.comments.length.toString() + ')'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView.separated(
          separatorBuilder: (context, number) => const Divider(
            indent: 5,
          ),
          itemCount: widget.comments.length,
          itemBuilder: (context, index) {
            Comment comment = widget.comments[index];

            Widget buildImage() {
              if (comment.author.avatar != null) {
                return Image.network(
                  comment.author.avatar!,
                  fit: BoxFit.cover,
                );
              }
              return Image.asset(
                'assets/no-image.jpeg',
                fit: BoxFit.cover,
              );
            }

            return Container(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: SizedBox(
                        width: 48,
                        height: 48,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(48),
                          child: buildImage(),
                        )),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              comment.author.email,
                              style: const TextStyle(
                                  color: Color.fromRGBO(96, 96, 96, 1),
                                  fontSize: 12),
                            ),
                            Text(
                              dataFormatter.getVerboseDateTimeRepresentation(
                                  comment.created_at),
                              style: const TextStyle(
                                  color: Color.fromRGBO(96, 96, 96, 1),
                                  fontSize: 12),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            comment.text,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
