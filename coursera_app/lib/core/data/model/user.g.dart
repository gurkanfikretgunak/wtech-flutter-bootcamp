// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      name: fields[0] as String?,
      email: fields[1] as String?,
      password: fields[2] as String?,
      userCourse: (fields[3] as List?)?.cast<Course?>(),
      id: fields[4] as String?,
      surname: fields[5] as String?,
      country: fields[6] as String?,
      birthYear: fields[7] as String?,
      profileImage: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.userCourse)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.surname)
      ..writeByte(6)
      ..write(obj.country)
      ..writeByte(7)
      ..write(obj.birthYear)
      ..writeByte(8)
      ..write(obj.profileImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
