import 'package:flutter/material.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            elevation: 40.0,

            backgroundColor: Colors.transparent,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(bottom:2.0 ,left: 5.0),
              title: Text('Sliver app bar ',style: TextStyle(fontSize: 40,
                        fontWeight: FontWeight.bold)),
              background: Image.asset('assets/images/cool.jpg',fit: BoxFit.fill,),
            ),
          ),

          SliverList(
              delegate: SliverChildBuilderDelegate((context, index){
                  return Container(
                    width: double.infinity,
                    height: 60,
                    color: Colors.purple[100*(index%10)],
                    child: Text('$index',textAlign: TextAlign.center),
                  );
              },
              childCount: 20
            ),
          ),


        ],
      ),
    );
  }
}
