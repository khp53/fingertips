import 'package:flutter/material.dart';

class OrgDetailsAppBar extends StatelessWidget {
  final String title;
  final String coverPhotoUrl;
  const OrgDetailsAppBar({
    this.title,
    this.coverPhotoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      elevation: 0,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        var top = constraints.biggest.height;
        return FlexibleSpaceBar(
          centerTitle: true,
          title: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: 1.0,
              child: Text(
                top > 71.0 && top < 91.0 ? title : '',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          background: Image.network(
            coverPhotoUrl,
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}
