class CustomerModel {
  final String name;
  final bool gender;
  final int age;
  final String address;
  final String phone;
  final String diagnosis;

  const CustomerModel(
      {this.name = "",
      this.gender = false,
      this.age = 0,
      this.address = "",
      this.phone = "",
      this.diagnosis = ""});
  static const List<CustomerModel> customerModels = [
    CustomerModel(
        name: "John Doe",
        gender: true,
        age: 25,
        address: "123 Main Street",
        phone: "555-1234",
        diagnosis: "Common cold"),
    CustomerModel(
        name: "Jane Smith",
        gender: false,
        age: 30,
        address: "456 Elm Street",
        phone: "555-5678",
        diagnosis: "Flu"),
    CustomerModel(
        name: "David Johnson",
        gender: true,
        age: 40,
        address: "789 Oak Avenue",
        phone: "555-9012",
        diagnosis: "Allergies"),
    CustomerModel(
        name: "Emily Brown",
        gender: false,
        age: 35,
        address: "321 Pine Lane",
        phone: "555-3456",
        diagnosis: "Sinus infection"),
    CustomerModel(
        name: "Michael Wilson",
        gender: true,
        age: 50,
        address: "654 Cedar Road",
        phone: "555-7890",
        diagnosis: "Strep throat"),
    CustomerModel(
        name: "Olivia Taylor",
        gender: false,
        age: 28,
        address: "987 Maple Drive",
        phone: "555-2345",
        diagnosis: "Common cold"),
    CustomerModel(
        name: "James Anderson",
        gender: true,
        age: 45,
        address: "234 Birch Court",
        phone: "555-6789",
        diagnosis: "Flu"),
    CustomerModel(
        name: "Emma Martinez",
        gender: false,
        age: 32,
        address: "567 Willow Avenue",
        phone: "555-0123",
        diagnosis: "Allergies"),
    CustomerModel(
        name: "Daniel Thomas",
        gender: true,
        age: 37,
        address: "890 Ash Street",
        phone: "555-4567",
        diagnosis: "Sinus infection"),
    CustomerModel(
        name: "Sophia Clark",
        gender: false,
        age: 29,
        address: "432 Oak Lane",
        phone: "555-8901",
        diagnosis: "Strep throat"),
    CustomerModel(
        name: "Matthew Rodriguez",
        gender: true,
        age: 55,
        address: "765 Pine Road",
        phone: "555-2345",
        diagnosis: "Common cold"),
    CustomerModel(
        name: "Ava Lewis",
        gender: false,
        age: 33,
        address: "098 Cedar Drive",
        phone: "555-6789",
        diagnosis: "Flu"),
    CustomerModel(
        name: "Andrew Lee",
        gender: true,
        age: 42,
        address: "321 Birch Court",
        phone: "555-0123",
        diagnosis: "Allergies"),
    CustomerModel(
        name: "Mia Hall",
        gender: false,
        age: 31,
        address: "654 Willow Avenue",
        phone: "555-4567",
        diagnosis: "Sinus infection"),
    CustomerModel(
        name: "Joseph Young",
        gender: true,
        age: 39,
        address: "987 Ash Street",
        phone: "555-8901",
        diagnosis: "Strep throat"),
    CustomerModel(
        name: "Abigail Turner",
        gender: false,
        age: 27,
        address: "123 Oak Lane",
        phone: "555-2345",
        diagnosis: "Common cold"),
    CustomerModel(
        name: "Alexander Scott",
        gender: true,
        age: 47,
        address: "456 Pine Road",
        phone: "555-6789",
        diagnosis: "Flu"),
    CustomerModel(
        name: "Charlotte Green",
        gender: false,
        age: 36,
        address: "789 Cedar Drive",
        phone: "555-0123",
        diagnosis: "Allergies"),
    CustomerModel(
        name: "William Adams",
        gender: true,
        age: 34,
        address: "321 Birch Court",
        phone: "555-4567",
        diagnosis: "Sinus infection"),
    CustomerModel(
        name: "Sofia Walker",
        gender: false,
        age: 26,
        address: "654 Willow Avenue",
        phone: "555-8901",
        diagnosis: "Strep throat")
  ];
}
