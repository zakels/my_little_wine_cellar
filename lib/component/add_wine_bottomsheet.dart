import 'package:flutter/material.dart';
import 'package:drift/drift.dart' show Value;
import 'package:get_it/get_it.dart';

class AddWineBottomSheet extends StatelessWidget {
  const AddWineBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 40.0,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add Wine",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

