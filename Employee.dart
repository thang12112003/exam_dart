class Employee {
  int id;
  String fullName;
  DateTime birthday;
  String address;
  String phoneNumber;

  Employee({
    required this.id,
    required this.fullName,
    required this.birthday,
    required this.address,
    required this.phoneNumber,
  });
}

class Company {
  List<Employee> employees = [];

  void addNewEmployee(Employee newEmployee) {
    employees.add(newEmployee);
  }

  List<Employee> getAllEmployee() {
    return employees;
  }


  void updateEmployee(int id, Employee updatedEmployee) {
    for (int i = 0; i < employees.length; i++) {
      if (employees[i].id == id) {
        employees[i] = updatedEmployee;
        return;
      }
    }
  }


  void showAllEmployee() {
    for (Employee employee in employees) {
      print('Employee ID: ${employee.id}');
      print('Full Name: ${employee.fullName}');
      print('Birthday: ${employee.birthday}');
      print('Address: ${employee.address}');
      print('Phone Number: ${employee.phoneNumber}');
      print('--------------------------');
    }
  }
}

void main() {
  Company tascCompany = Company();

  tascCompany.addNewEmployee(Employee(
    id: 1,
    fullName: 'Nguyen Thang',
    birthday: DateTime(2003, 11, 12),
    address: 'Quang Ninh',
    phoneNumber: '012334456',
  ));

  tascCompany.addNewEmployee(Employee(
    id: 2,
    fullName: 'Le Huy',
    birthday: DateTime(2003, 8, 22),
    address: 'Bac Giang',
    phoneNumber: '0823566712',
  ));

    tascCompany.addNewEmployee(Employee(
    id: 3,
    fullName: 'Minh Quang',
    birthday: DateTime(2020, 2, 12),
    address: 'Ha Noi',
    phoneNumber: '08235312112',
  ));

  tascCompany.showAllEmployee();

  Employee updatedEmployee = Employee(
    id: 3,
    fullName: 'Quang dan',
    birthday: DateTime(1985, 8, 22),
    address: 'Soc Son, Ha Noi',
    phoneNumber: '000000000p',
  );
  tascCompany.updateEmployee(3, updatedEmployee);

  tascCompany.showAllEmployee();
}
//dart Employee.dart
