// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseAdapter extends TypeAdapter<Course> {
  @override
  final int typeId = 2;

  @override
  Course read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Course(
      createdAt: fields[0] as DateTime?,
      name: fields[1] as String?,
      avatar: fields[2] as String?,
      about: fields[3] as String?,
      syllabus: (fields[4] as List?)?.cast<Syllabus>(),
      courseName: fields[5] as String?,
      courseDescription: fields[6] as String?,
      coursePoint: fields[7] as String?,
      courseImage: fields[8] as String?,
      id: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Course obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.createdAt)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.avatar)
      ..writeByte(3)
      ..write(obj.about)
      ..writeByte(4)
      ..write(obj.syllabus)
      ..writeByte(5)
      ..write(obj.courseName)
      ..writeByte(6)
      ..write(obj.courseDescription)
      ..writeByte(7)
      ..write(obj.coursePoint)
      ..writeByte(8)
      ..write(obj.courseImage)
      ..writeByte(9)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SyllabusAdapter extends TypeAdapter<Syllabus> {
  @override
  final int typeId = 3;

  @override
  Syllabus read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Syllabus(
      week1: (fields[0] as List?)?.cast<String>(),
      week2: (fields[1] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Syllabus obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.week1)
      ..writeByte(1)
      ..write(obj.week2);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyllabusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
