part of 'widgets.dart';

class UniversalForm extends StatelessWidget {
  // const UniversalForm({Key? key}) : super(key: key);
  final Object object;

  UniversalForm(this.object);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(" Nama ", style: blackFontStyle1,),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(" wallet ", style: blackFontStyle1,),
          )
        ],
      ),
    );

  }
}