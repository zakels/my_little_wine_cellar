import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime(2021);
    String Name;
    String Winery;
    String Region;
    String Country;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0,),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close),
                      iconSize: 30,
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      "Add Wine",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 120,),
                TextButton(
                    onPressed: (){
                      // db add here
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff971C23),
                      ),
                    )
                )
              ],
            ),
            _Winery(),
            _Name(),
            _Vintage(
              selectedDate: dateTime,
            ),
            _Region(),
            _Country(),
          ],
        ),
      ),
    );
  }
}

class _Winery extends StatelessWidget {
  const _Winery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Winery"),
        TextField(

        ),
        Text("Required"),
      ],
    );
  }
}

class _Name extends StatelessWidget {
  const _Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name"),
        TextField(

        ),
        Text("Required"),
      ],
    );
  }
}

class _Vintage extends StatelessWidget {
  final DateTime selectedDate;

  const _Vintage({
    required this.selectedDate,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Vintage"),
        Row(
          children: [
            Text(selectedDate.year.toString()),
            TextButton(
                onPressed: (){
                  _pickYear(context);
                },
                child: Text("Select year")
            )
          ],
        ),
      ],
    );
  }

  void _pickYear(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Year"),
          content: Container( // Need to use container to add size constraint.
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(DateTime.now().year - 100, 1),
              lastDate: DateTime(DateTime.now().year + 100, 1),
              initialDate: DateTime.now(),
              // save the selected date to _selectedDate DateTime variable.
              // It's used to set the previous selected date when
              // re-showing the dialog.
              selectedDate: selectedDate,
              onChanged: (DateTime dateTime) {
                // close the dialog when year is selected.
                Navigator.pop(context);

                // Do something with the dateTime selected.
                // Remember that you need to use dateTime.year to get the year
              },
            ),
          ),
        );
      },
    );
  }
}

class _Region extends StatelessWidget {
  const _Region({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Region"),
        TextField(

        ),
      ],
    );
  }
}

enum CountryLabel {
  argentina('Argentina'),
  australia('Australia'),
  chile('Chile'),
  france('France'),
  italy('Italy'),
  newzealand('NewZealand'),
  portugal('Portugal'),
  spain('Spain'),
  usa('United States');

  const CountryLabel(this.label);
  final String label;
}

class _Country extends StatelessWidget {
  const _Country({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Country"),

      ],
    );
  }
}



