part of 'widgets.dart';

class Prices extends StatelessWidget {
  // const Prices({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
    );
  }
}

class MyRadioListTilee<T> extends StatelessWidget {
 final T value;
 final T groupValue;
 final String leading;
//  final Widget? title;
final ValueChanged<T?> onChanged;

MyRadioListTilee({
  required this.value,
  required this.groupValue,
  required this.onChanged,
  required this.leading,
});

  @override
  Widget build(BuildContext context) {
    // final Title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 50,//margin bottom
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            _customRadioButton,
            SizedBox(width: 5,),///margin right
            //if(title != null) title,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    width: 80,
    decoration: BoxDecoration(
      color: isSelected ? mainColor : null,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: isSelected ? mainColor : mainColor,
        width: 3
      ),
    ),
    child: Text(
      leading,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: isSelected ? secondaryColor : mainColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );

  }

}