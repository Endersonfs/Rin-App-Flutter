import 'package:flutter_guid/flutter_guid.dart';

class Employee 
{
  final Guid employeeId;
  final String firstName;
  final String lastName;
  final String category;
  final String imagePerfile;
  final double rating;

  Employee
  (
    {
      required this.employeeId,
      required this.firstName,
      required this.lastName,
      required this.category,
      required this.imagePerfile,
      required this.rating
    }
  );

  static List<Employee> employeeList = 
  [
    Employee(
      employeeId: Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be1'),
      firstName:'Enderson', 
      lastName: 'Florian', 
      category: 'Tecnico', 
      imagePerfile: 'assets/images/erikv1.png', 
      rating: 5.0
      ),
      Employee(
      employeeId: Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be2'),
      firstName:'Victoria', 
      lastName: 'Solano', 
      category: 'Legales', 
      imagePerfile: 'assets/images/viki.png', 
      rating: 5.0
      ),
      Employee(
      employeeId: Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be3'),
      firstName:'Erikson', 
      lastName: 'Florian', 
      category: 'Bienestar', 
      imagePerfile: 'assets/images/erikv1.png', 
      rating: 5.0
      ),
      Employee(
      employeeId: Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be4'),
      firstName:'Victoria', 
      lastName: 'Solano', 
      category: 'Legales', 
      imagePerfile: 'assets/images/viki.png', 
      rating: 5.0
      ),
      Employee(
      employeeId: Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be5'),
      firstName:'Paul', 
      lastName: 'Andres', 
      category: 'Mascotas', 
      imagePerfile: 'assets/images/erikv1.png', 
      rating: 5.0
      )
  ];

  static List<Employee> getEmployeeById(Guid empId)
  {
    List<Employee> _employeeList = Employee.employeeList;
    return _employeeList.where((element) => element.employeeId == empId).toList();
  }
}