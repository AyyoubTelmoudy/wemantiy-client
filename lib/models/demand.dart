class Demand {
  String firstName;
  String lastName;
  String email;
  String phone;
  String companyName;
  List<String> formations;

  Demand({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.formations,
    required this.companyName
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'formations':formations,
      'companyName':companyName
    };
  }
}