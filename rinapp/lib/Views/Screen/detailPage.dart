import 'package:flutter/material.dart';
import 'package:flutter_guid/flutter_guid.dart';
import 'package:rinapp/Models/service.dart';
import 'package:rinapp/Models/workrequest.dart';
import 'package:rinapp/constants.dart';


class DetailPageService extends StatefulWidget {
  final Guid employeeId;
  const DetailPageService({Key? key, required this.employeeId}) : super(key: key);

  @override
  State<DetailPageService> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPageService> {
  //Toggle Favorite button
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }

  //Toggle add remove from cart
  bool toggleIsSelected(bool isSelected) {
    return !isSelected;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // List<Plant> _serviceList = Plant.plantList;

    List<WorkRequest> _serviceList = WorkRequest.workRequestList;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constant.primaryColor.withOpacity(.15),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Constant.primaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('favorite');
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constant.primaryColor.withOpacity(.15),
                    ),
                    // child: IconButton(
                    //     onPressed: () {
                    //       // setState(() {
                    //       //   bool isFavorited = toggleIsFavorated(
                    //       //       _serviceList[widget.employeeId].isFavorated);
                    //       //   _serviceList[widget.employeeId].isFavorated =
                    //       //       isFavorited;
                    //       // });
                    //     },
                    //     icon: Icon(
                    //       _serviceList[widget.employeeId].isFavorated == true
                    //           ? Icons.favorite
                    //           : Icons.favorite_border,
                    //       color: Constant.primaryColor,
                    //     )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Container(
              width: size.width * .8,
              height: size.height * .8,
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 0,
                    child: SizedBox(
                      height: 350,
                      child: Image.asset(_serviceList[0].urlImage),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 0,
                    child: SizedBox(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PlantFeature(
                            title: 'Size',
                            plantFeature: _serviceList[0].category,
                          ),
                          PlantFeature(
                            title: 'Humidity',
                            plantFeature:
                                _serviceList[0].state.toString(),
                          ),
                          // PlantFeature(
                          //   title: 'Temperature',
                          //   plantFeature:
                          //       _serviceList[widget.employeeId].temperature,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
              height: size.height * .5,
              width: size.width,
              decoration: BoxDecoration(
                color: Constant.primaryColor.withOpacity(.4),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _serviceList[0].serviceName,
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            r'$' + _serviceList[0].price.toString(),
                            style: TextStyle(
                              color: Constant.blackColor,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            _serviceList[0].state.toString(),
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Constant.primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            size: 30.0,
                            color: Constant.primaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Expanded(
                    child: Text(
                      _serviceList[0].description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 18,
                        color: Constant.blackColor.withOpacity(.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 50,
        child: Row(
          children: [
            // Container(
            //   height: 50,
            //   width: 50,
            //   child: IconButton(onPressed: (){
            //     setState(() {
            //       bool isSelected = toggleIsSelected(_serviceList[widget.employeeId].isSelected);

            //       // _serviceList[widget.employeeId].isSelected = isSelected;
            //     });
            //   }, icon: Icon(
            //     Icons.shopping_cart,
            //     color: _serviceList[widget.employeeId].isSelected == true ? Colors.white : Constant.primaryColor,
            //   )),
            //   decoration: BoxDecoration(
            //       color: _serviceList[widget.employeeId].isSelected == true ? Constant.primaryColor.withOpacity(.5) : Colors.white,
            //       borderRadius: BorderRadius.circular(50),
            //       boxShadow: [
            //         BoxShadow(
            //           offset: const Offset(0, 1),
            //           blurRadius: 5,
            //           color: Constant.primaryColor.withOpacity(.3),
            //         ),
            //       ]),
            // ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Constant.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: Constant.primaryColor.withOpacity(.3),
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantFeature extends StatelessWidget {
  final String plantFeature;
  final String title;
  const PlantFeature({
    Key? key,
    required this.plantFeature,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Constant.blackColor,
          ),
        ),
        Text(
          plantFeature,
          style: TextStyle(
            color: Constant.primaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
