import 'dart:convert';

class FormModel {
  final String? name;
  final String? email;
  final String? phone;
  final String? subject;
  FormModel({
    this.name,
    this.email,
    this.phone,
    this.subject,
  });

  FormModel copyWith({
    String? name,
    String? email,
    String? phone,
    String? subject,
  }) {
    return FormModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      subject: subject ?? this.subject,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'subject': subject,
    };
  }

  factory FormModel.fromMap(Map<String, dynamic> map) {
    return FormModel(
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      subject: map['subject'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FormModel.fromJson(String source) =>
      FormModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FormModel(name: $name, email: $email, phone: $phone, subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FormModel &&
      other.name == name &&
      other.email == email &&
      other.phone == phone &&
      other.subject == subject;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      subject.hashCode;
  }
}
