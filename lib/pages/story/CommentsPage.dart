import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/story/bloc/preload_bloc.dart';
import 'package:barinsatu/story/models/story.dart';
import 'package:barinsatu/story/repositories/story_repo.dart';
import 'package:barinsatu/utils/DateFormatter.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key? key, required this.story}) : super(key: key);

  final Story story;

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  DateFormatter dataFormatter = DateFormatter();

  List<StoryComment> comments = [];

  String commentValue = '';

  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    setState(() {
      comments = widget.story.story_comments;
    });

    super.initState();
  }

  void createComment() async {
    if (commentValue.isNotEmpty && commentValue != '') {
      StoryRepo storyRepo = StoryRepo();

      try {
        StoryComment comment =
            await storyRepo.createComments(widget.story.id, commentValue);

        setState(() {
          comments = [...comments, comment];
        });

        context.read<PreloadBloc>().add(
            PreloadEvent.commendAdd(story: widget.story.id, comment: comment));

        var snackBar = const SnackBar(content: Text('Успешно'));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        _controller.text = '';
        setState(() {
          commentValue = '';
        });
      } catch (e) {
        print(e);

        var snackBar = const SnackBar(content: Text('Ошибка'));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        _controller.text = '';
        setState(() {
          commentValue = '';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    DateFormatter dateFormatter = DateFormatter();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.black,
          title: Text('Коментарий (' + comments.length.toString() + ')'),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.only(
                  top: 15, left: 15, bottom: 15, right: 15),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, number) => const Divider(
                            indent: 5,
                          ),
                          shrinkWrap: true,
                          itemCount: comments.length,
                          itemBuilder: (context, index) {
                            StoryComment comment = comments[index];

                            Widget buildImage() {
                              if (comment.author.avatar != null) {
                                return ExtendedImage.network(
                                    comment.author.avatar!,
                                    fit: BoxFit.cover,
                                    cache: true);
                              }
                              return Image.asset(
                                'assets/no-image.jpeg',
                                fit: BoxFit.cover,
                              );
                            }

                            return Container(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: SizedBox(
                                        width: 48,
                                        height: 48,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(48),
                                          child: buildImage(),
                                        )),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              comment.author.email,
                                              style: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      96, 96, 96, 1),
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              dateFormatter
                                                  .getVerboseDateTimeRepresentation(
                                                      comment.created_at),
                                              style: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      96, 96, 96, 1),
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            comment.text,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
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
                      const SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        width: MediaQuery.of(context).size.width - 20,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: TextField(
                          controller: _controller,
                          onChanged: (value) => {commentValue = value},
                          decoration: InputDecoration(
                              labelText: 'Оставить коментарий',
                              suffixIcon: IconButton(
                                  icon: const Icon(Icons.send),
                                  onPressed: createComment)),
                        ),
                      )),
                ],
              )),
        ));
  }
}
