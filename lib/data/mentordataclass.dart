class Mentor {
  final String name;
  final String designation;
  final String url;
  final String exp;
  final String fee;
  final Map<String, dynamic> details;

  Mentor(
    {
      required this.name,
      required this.designation,
      required this.url,
      required this.exp,
      required this.fee,
      required this.details
    }
  );

  factory Mentor.fromJson(Map<String, dynamic> json) {
    return Mentor(
      name: json['name'],
      designation: json['designation'],
      url: json['url'],
      exp: json['exp'],
      fee: json['fee'],
      details: Map<String, dynamic>.from(json['details'])
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'name': name,
  //     'designation': designation,
  //     'url': url,
  //     'exp': exp,
  //     'fee': fee
  //   };
  // }

}