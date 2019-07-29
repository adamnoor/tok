import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tok/stateless_widgets.dart';
import 'package:tok/tok_bloc.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _keyRed = GlobalKey();

  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();



  @override
  Widget build(BuildContext context) {
    final tokBloc = Provider.of<TokBloc>(context);

    return InnerDrawer(
        key: _innerDrawerKey,
        position: tokBloc.drawerPosition
            ? InnerDrawerPosition.start
            : InnerDrawerPosition.end,
        animationType: tokBloc.animationType,
        onTapClose: tokBloc.onTapToClose,
        offset: tokBloc.offset,
        swipe: tokBloc.swipe,
        scaffold: Scaffold(
          appBar: AppBar(
              leading: IconButton(
            icon: Icon(Icons.filter_list, color: Colors.white),
            onPressed: () => _innerDrawerKey.currentState.open(),
          ),
          title: Text(widget.title),
          centerTitle: true,),
          body: MainBodyUI(),
        ),
        child: _filterUI(context, tokBloc));
  }


  Widget _filterUI(context, bloc) {
    return Material(
        child: SafeArea(
            child: Container(
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(width: 1, color: Colors.grey[200]),
            right: BorderSide(width: 1, color: Colors.grey[200])),
      ),
      child: SingleChildScrollView(
        child: Stack(
          key: _keyRed,
          children: <Widget>[
            Column(
              children: <Widget>[
                FormBuilder(
                  key: _fbKey,
                  autovalidate: true,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FormBuilderCheckboxList(
                          decoration: InputDecoration(labelText: "Format"),
                          attribute: "format",
                          initialValue: ["Video", "Audio"],
                          options: [
                            FormBuilderFieldOption(value: "Video"),
                            FormBuilderFieldOption(value: "Audio"),
                          ],
                          validators: [FormBuilderValidators.required()],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Resources:"),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${bloc.filteredResources.length}",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("press to update"),
                              IconButton(
                                splashColor: Colors.white,
                                icon: Icon(Icons.update),
                                onPressed: () {
                                  _fbKey.currentState.save();
                                  if (_fbKey.currentState.validate()) {
                                    bloc.filterList(
                                        _fbKey.currentState.value['format'],
                                        _fbKey.currentState.value['topics']);
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FormBuilderCheckboxList(
                          decoration: InputDecoration(labelText: "Topics"),
                          attribute: "topics",
                          initialValue: bloc.createTopicsList(),
                          options: bloc.createTopicsFormList(),
                          validators: [FormBuilderValidators.required()],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
