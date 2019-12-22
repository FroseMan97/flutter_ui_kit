import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_image_listview/theme.dart';

class WidgetRow extends StatelessWidget {
  final String title;
  final List<Widget> body;

  WidgetRow({
    @required this.title,
    @required this.body,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title?.toUpperCase() ?? '',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.overline
        ),
        SizedBox(height: 30),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: body?.length ?? 1,
          itemBuilder: (context, i) {
            return body[i];
          },
          separatorBuilder: (context, i) {
            return SizedBox(height: 20);
          },
        ),
      ],
    );
  }
}

class AppBarNoIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetRow(
      title: 'app bar / no icon',
      body: [
        AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Headline 6',
          ),
        ),
      ],
    );
  }
}

class AppBarIconLeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WidgetRow(
          title: 'app bar / icon leading',
          body: [
            AppBar(
              automaticallyImplyLeading: false,
              leading: Icon(Icons.arrow_back),
              title: Text(
                'Headline 6',
              ),
            ),
            AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: Icon(Icons.arrow_back),
              iconTheme: Theme.of(context).appBarTheme.iconTheme.copyWith(
                    color: Hexcolor('#354350'),
                  ),
              title: Text(
                'Headline 6',
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: Hexcolor('#354350')),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class AppBarIconTrailing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetRow(
      title: 'app bar / icon trailing',
      body: [
        AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Headline 6',
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.add_circle_outline),
            )
          ],
        ),
      ],
    );
  }
}

class AppBarMeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetRow(
      title: 'app bar / meta',
      body: [
        AppBar(
          leading: Icon(Icons.arrow_back),
          automaticallyImplyLeading: false,
          title: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Subtitle 1 bold',
              style: Theme.of(context).textTheme.title.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            subtitle: Text(
              'Body 2',
              style: Theme.of(context).textTheme.body2,
            ),
          ),
        ),
      ],
    );
  }
}

class AppBarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetRow(
      title: 'app bar / image',
      body: [
        AppBar(
          leading: Icon(Icons.arrow_back),
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.6),
          title: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.network(
                'https://www.mercedes-benz.com/wp-content/uploads/sites/3/' +
                    '2018/02/mercedes-benz-passenger-cars-2018-a-class-w-177-amg-' +
                    'line-digital-white-pearl-2560x1440-2560x1440.jpg',
                    fit: BoxFit.fitHeight,
                  
                    height: 40,
                    width: 40,
              ),
            ),
            title: Text(
              'Subtitle 1 bold',
              style: Theme.of(context).textTheme.title.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
