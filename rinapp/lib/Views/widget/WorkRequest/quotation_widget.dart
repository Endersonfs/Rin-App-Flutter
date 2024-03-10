import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rinapp/Models/Empleyee.dart';
import 'package:rinapp/Views/Screen/detailPage.dart';
import 'package:rinapp/constants.dart';

class QuotationWidget extends StatelessWidget {
  const QuotationWidget({
    Key? key, required this.index, required this.employeeList,
  }) : super(key: key);

  final int index;
  final List<Employee> employeeList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailPageService(
                  employeeId: employeeList[index].employeeId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Constant.primaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80.0,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Constant.primaryColor.withOpacity(.8),
                    shape: BoxShape.circle,
                  ),
                ),
                Positioned(
                  top: 3,
                  bottom: 5,
                  left: 0,
                  right: 0,                  
                  child: SizedBox(
                    height: 90.0,                    
                    child:
                    Image.asset(employeeList[index].imagePerfile),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(employeeList[index].category),
                      Text(
                        employeeList[index].firstName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Constant.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                r'$' + employeeList[index].category.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Constant.primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}