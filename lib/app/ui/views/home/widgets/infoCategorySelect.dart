import 'package:app_delivery_restaurant/app/ui/views/home/widgets/listProducts.dart';
import 'package:app_delivery_restaurant/app/ui/views/home/widgets/listProducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//en esta ventas ya se a seleccionado la categoria a elegir
//

class ShowModalSelectImageView extends StatelessWidget {
  const ShowModalSelectImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: double.infinity,
        height: 190,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(28)),
          child: Image.asset(
            "assets/images/noodles_ramen.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      onTap: () {
        showModalBottomSheet<void>(
          isScrollControlled: true,
          // isDismissible: true,
          elevation: 100,
          context: context,
          builder: (BuildContext context) {
            //editar el nuevo frame
            return SizedBox(
              height: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 330.0,
                    child: Image.asset(
                      "assets/images/noodles_ramen.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                  ),

                  Container(
                      margin: const EdgeInsets.only(top: 298),
                      padding: const EdgeInsets.only(
                          top: 30, left: 25.0, right: 25.0, bottom: 5.0),

                      // padding: const EdgeInsets.symmetric(
                      //     horizontal: 25.0, vertical: 30),
                      height: 170.0,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors
                              .white, // poner en otro color para dar una mejor visibilidad
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(35.0),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          deliberyRowContent("Noodles y Ramen", "",
                              fontSizeEntrada: 22.0,
                              fontWeightEntrada: FontWeight.bold),
                          deliberyRowContent(
                            "812 Avenue, 153673",
                            "",
                          ),
                          const SizedBox(),
                          deliberyRowContent(
                            "Delivery Time",
                            "30-45 minutes",
                          ),
                          deliberyRowContent("Delivery Cost", "\$ 5-10"),
                        ],
                      )
                      // ),

                      ),

                  /// aca es donde damos inicio para que se ejecurte

                  GridProductoView(),

                  Center(
                    heightFactor: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      color: Colors.white.withOpacity(0.5),
                      width: double.infinity,
                      height: 75,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_back,
                            size: 30.0,
                          ),
                          Text(
                            "Noodle y Ramen",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.more_horiz,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
//
                ],
              ),
            );
          },
        );
      },
    );
  }

  Row deliberyRowContent(String letterL, String letterR,
      {double? fontSizeEntrada, FontWeight? fontWeightEntrada}) {
    fontSizeEntrada ?? (fontSizeEntrada = 16.0);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          letterL,
          style: TextStyle(
              color: Colors.black,
              fontSize: fontSizeEntrada,
              fontWeight: fontWeightEntrada),
        ),
        Text(
          letterR,
          style: TextStyle(color: Colors.black, fontSize: fontSizeEntrada),
        ),
      ],
    );
  }
}
