import 'package:flutter_guid/flutter_guid.dart';
import 'package:rinapp/Models/Empleyee.dart';
import 'package:rinapp/Models/WorkRequest/ValueObject/State.dart';

class WorkRequest
{
  final Guid workRequestId;
  final Guid customerId;
  final Guid employeeId;
  final double price;
  final String category;
  final String serviceName;
  final String urlImage;
  final DateTime fecha_Trabajo;
  final WorkRequestState state;
  final String description;

  WorkRequest
  (
    {
      required this.workRequestId,
      required this.customerId,
      required this.employeeId,
      required this.price,
      required this.category,
      required this.serviceName,
      required this.urlImage,
      required this.fecha_Trabajo,
      required this.state,
      required this.description
    }
  );

  static List<WorkRequest> workRequestList = 
  [
    WorkRequest
    (
      workRequestId: Guid('d1fba7bb-ef25-4671-b736-57198af4bb01'),
      customerId: Guid('4b855768-0ee2-4396-93f9-17a9ff541c2f'),
      employeeId:  Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be2'),
      price: 200,
      category: 'Limpieza',
      serviceName: 'Limpieza especializada',
      urlImage: 'assets/images/iconservice/delivery.png',
      fecha_Trabajo: DateTime.now(),
      state: WorkRequestState.quotations,
      description: 'Necesito una limpieza apra mi casa'
    ),
    WorkRequest
    (
      workRequestId: Guid('d1fba7bb-ef25-4671-b736-57198af4bb02'),      
      customerId: Guid('4b855768-0ee2-4396-93f9-17a9ff541c2f'),
      employeeId:  Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be3'),
      price: 200,
      category: 'Limpieza',
      serviceName: 'Limpieza especializada',
      urlImage: 'assets/images/iconservice/delivery.png',
      fecha_Trabajo: DateTime.now(),      
      state: WorkRequestState.quotations,
      description: 'Necesito una limpieza apra mi casa'
    ),
    WorkRequest
    (
      workRequestId: Guid('c81faa03-927c-40d4-ab48-1ff956f02cbf'),
      customerId: Guid('4b855768-0ee2-4396-93f9-17a9ff541c2f'),
      employeeId:  Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be4'),
      price: 200,
      category: 'Limpieza',
      serviceName: 'Limpieza especializada',
      urlImage: 'assets/images/iconservice/delivery.png',
      fecha_Trabajo: DateTime.now(),
      state: WorkRequestState.quotations,
      description: 'Necesito una limpieza apra mi casa'
    ),
    WorkRequest
    (
      workRequestId: Guid('d1fba7bb-ef25-4671-b736-57198af4bb04'),
      customerId: Guid('4b855768-0ee2-4396-93f9-17a9ff541c2f'),
      employeeId:  Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be5'),
      price: 200,
      category: 'Limpieza',
      serviceName: 'Limpieza especializada',
      urlImage: 'assets/images/iconservice/delivery.png',
      fecha_Trabajo: DateTime.now(),
      state: WorkRequestState.quotations,
      description: 'Necesito una limpieza apra mi casa'
    ),
    WorkRequest
    (
      workRequestId: Guid('d1fba7bb-ef25-4671-b736-57198af4bb05'),
      customerId: Guid('4b855768-0ee2-4396-93f9-17a9ff541c2f'),
      employeeId:  Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be2'),
      price: 200,
      category: 'Limpieza',
      serviceName: 'Limpieza especializada',
      urlImage: 'assets/images/iconservice/delivery.png',
      fecha_Trabajo: DateTime.now(),
      state: WorkRequestState.quotations,
      description: 'Necesito una limpieza apra mi casa'
    ),
    WorkRequest
    (
      workRequestId: Guid('d1fba7bb-ef25-4671-b736-57198af4bb01'),
      customerId: Guid('4b855768-0ee2-4396-93f9-17a9ff541c2f'),
      employeeId:  Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be2'),
      price: 200,
      category: 'Limpieza',
      serviceName: 'Limpieza especializada',
      urlImage: 'assets/images/iconservice/delivery.png',
      fecha_Trabajo: DateTime.now(),
      state: WorkRequestState.quotations,
      description: 'Necesito una limpieza apra mi casa'
    ),
    WorkRequest
    (
      workRequestId: Guid('d1fba7bb-ef25-4671-b736-57198af4bb02'),      
      customerId: Guid('4b855768-0ee2-4396-93f9-17a9ff541c2f'),
      employeeId:  Guid('c1f1a30c-9cff-4deb-a219-38ccab2e5be3'),
      price: 200,
      category: 'Limpieza',
      serviceName: 'Limpieza especializada',
      urlImage: 'assets/images/iconservice/delivery.png',
      fecha_Trabajo: DateTime.now(),      
      state: WorkRequestState.quotations,
      description: 'Necesito una limpieza apra mi casa'
    ),    
  ];

  static List<WorkRequest> getWorkRequestList()
  {
    List<WorkRequest> _workRequestList = WorkRequest.workRequestList;

    //filtro
    //return _workRequestList.where((element) => element.WorkRequest == true).toList();

    return _workRequestList.toList();
  }

  //Buscando listado de los WorkRequest por los clientes
  static List<WorkRequest> getWorkRequestByCustomerId(Guid customerIdParam)
  {
    List<WorkRequest> _workRequestList = WorkRequest.getWorkRequestList();
    return _workRequestList.where((element) => element.customerId == customerIdParam).toList();
  }

  //buscar todos los empleados que han realizado solicitud al custumer
  static List<Employee> getWorkRequestByQuotations(Guid customertIdParam)
  {
    var listEmp = <Employee>{};
    List<WorkRequest> _workRequestListPendingToWork = WorkRequest.getWorkRequestByCustomerId(customertIdParam);    

    for(var item in _workRequestListPendingToWork)
    {
      listEmp.add(Employee.getEmployeeById(item.employeeId).first);
    }
    return listEmp.toList();
  }
}