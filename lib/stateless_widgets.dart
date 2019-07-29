import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:tok/sound_player.dart';
import 'package:tok/tok_bloc.dart';
import 'package:youtube_player/youtube_player.dart';

class MainBodyUI extends StatelessWidget {
  MainBodyUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tokBloc = Provider.of<TokBloc>(context);

    return Center(
        child: Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: ListTile(
            leading: Container(height: 0, width: 0),

            title: Text(
              tokBloc.currentResource.title,
              style: TextStyle(fontSize: 14.5),
              textAlign: TextAlign.center,
            ),

            trailing: IconButton(
                onPressed: () => Share.share(
                    'This is the link to a great Theory of Knowledge reference from ${tokBloc.currentResource.source}:\n ${tokBloc.currentResource.link}',
                    sharePositionOrigin: null),
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                )),
          ),
        ),
        Flexible(
          flex: 4,
          child: tokBloc.currentResource.type == "Video"
              ? VideoPlayer()
              : SoundPlayer(
                  key: UniqueKey(),
                ),
        ),
        Flexible(
          flex: 5,
          child: ListView.builder(
              itemCount: tokBloc.filteredResources.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0.8,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(64, 75, 96, .9)),
                        child: ListTile(
                          onTap: () => tokBloc.setCurrentResource(
                              tokBloc.filteredResources[index]),
                          //tapResources(resource), //updates the provider.resource
                          leading: Container(
                              padding: EdgeInsets.only(right: 7.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          width: 1.0, color: Colors.white24))),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: tokBloc.filteredResources[index].type ==
                                        "Video"
                                    ? Icon(Icons.local_movies)
                                    : Icon(Icons.headset),
                              )),
                          title: Text(
                            tokBloc.filteredResources[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Container(
                              width: MediaQuery.of(context).size.width * .4,
                              child: Text(
                                  tokBloc.filteredResources[index].topic,
                                  style: TextStyle(color: Colors.white))),
                          //trailing: Icon(Icons.video_library, color: Colors.white),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(64, 75, 96, .9)),
                        child: ExpansionTile(
                          title: Center(
                              child: Text("Read More",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14))),
                          //trailing: Icon(null),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                tokBloc.filteredResources[index].more,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                            Container(height: 10),
                            Text(
                              "Source: ${tokBloc.filteredResources[index].source}",
                            ),
                            Container(height: 10)
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    ));
  }
}

class VideoPlayer extends StatelessWidget {
  VideoPlayer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tokBloc = Provider.of<TokBloc>(context);

    return YoutubePlayer(
      context: context,
      source: tokBloc.currentResource.url,
      quality: YoutubeQuality.HD,
      autoPlay: false,
      hideShareButton: true,
      callbackController: (controller) {
        tokBloc.setController(controller);
      },
    );
  }
}
