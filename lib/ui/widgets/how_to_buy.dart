part of 'widgets.dart';

class HowToBuy extends StatelessWidget {
  // const HowToBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: "023263".toColor(),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: defaultMargin),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/Image 23.png')),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(defaultMargin, 2, defaultMargin, 40),
                    child: Text(
                     'Tersedia beberapa pilihan seperti Token Listrik, Pulsa All Operator, Top-Up game.',
                    style: blackFontStyle4,
                    textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/Image 24.png')),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(defaultMargin, 2, defaultMargin, 40),
                    child: Text(
                     'Pilih nominal top up yang kamu pilih yang tersedia pada form order web.',
                    style: blackFontStyle4,
                    textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/Image 25.png')),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(defaultMargin, 2, defaultMargin, 40),
                    child: Text(
                     'Lakukan pembayaran dengan menggunakan SLP kamu untuk dikirimkan ke alamat ronin yang tersedia. Ingat, nominal SLP yang kamu kirim harus sesuai dengan yang terterta di layar ya...',
                    style: blackFontStyle4,
                    textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/Image 26.png')),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(defaultMargin, 2, defaultMargin, 40),
                    child: Text(
                     ' Topup akan diproses segera jika pembayaran sudah dilakukan dengan benar.',
                    style: blackFontStyle4,
                    textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}