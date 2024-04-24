import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_little_wine_cellar/component/wine_card.dart';
import 'package:my_little_wine_cellar/model/wine.dart';
import '../db/drift_db.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 40.0,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Cellar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            _WineList(),
          ],
        ),
      ),
    );
  }
}


class _WineList extends StatelessWidget {
  const _WineList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: StreamBuilder<List<Wine>>(
          stream: GetIt.I<LocalDB>().watchAllWines(),
          builder: (context, snapshot) {
            if (!snapshot.hasData){
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasData && snapshot.data!.isEmpty){
              return Center(
                child: Text('No data.'),
              );
            }

            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final wineData = snapshot.data![index];

                return WineCard(
                  nameVintage: wineData.name + " " + wineData.vintage.toString(),
                  winery: wineData.winery,
                  rating: wineData.rating,
                  regionCountry: wineData.region + ", " + wineData.country,
                  comment: wineData.comment,
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 8.0);
              },
            );
          },
        ),
      )
    );
  }
}
