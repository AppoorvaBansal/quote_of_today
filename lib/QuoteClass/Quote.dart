
import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  @override
  QuoteList createState() => QuoteList();
}

class QuoteList extends State<Quote> {

List quotesList=["Had women not been there, life would have never been so beautiful and blessed…. Wishing a very Happy Women’s Day to one such woman who makes life so wonderful for me!!!!",
"Everything that I know is all because of you….. You are the mother every kid wishes to have….. With all my heart, wish you Happy International Women’s Day mom.",
"Being a woman itself is a superpower. Happy Women's Day to the superhero in my life!",
"Our world would mean nothing without women. Their courage that exists in perfect harmony with amazing tenderness saves our world every day. Happy Women's Day!",
"Happy Women's Day to strong, intelligent, talented and simply wonderful women! Don't ever forget that you are loved and appreciated.",
"Only a woman can almost die and give birth at the same time. Be proud to be a woman. Happy Women’s Day!",
"Equal rights are not special rights. Happy International Women’s Day."
];

var i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Quote of the day",),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(30.0),
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color:Colors.blueGrey,
                  borderRadius: BorderRadius.circular(25.0)
                ),

                child: Center(child: Text(quotesList[i%quotesList.length],style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                  color: Colors.white
                )))),

            Divider(thickness: 2.5,color: Colors.teal,),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: ElevatedButton.icon(
                  onPressed: showQuote,
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Change the Widget",style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w100,
                    fontSize: 10.5,

                  ),),

            )
            )
          ],
        ),

      )
    );
  }

  showQuote() {
setState(() {
  i=i+1;
});

  }
}
