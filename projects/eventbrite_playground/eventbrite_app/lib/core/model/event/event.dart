import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'event.g.dart';

@JsonSerializable()
class Event with EquatableMixin {
  String? name;
  String? image;
  bool? isFavorite;
  String? startTime;
  String? price;
  bool? isOnline;
  String? organization;
  String? desc;
  String? organizationImage;
  String? location;
  String? id;

  Event({
    this.name,
    this.image,
    this.isFavorite,
    this.startTime,
    this.price,
    this.isOnline,
    this.organization,
    this.desc,
    this.organizationImage,
    this.location,
    this.id,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  List<Object?> get props => [
        name,
        image,
        isFavorite,
        startTime,
        price,
        isOnline,
        organization,
        desc,
        organizationImage,
        location,
        id
      ];

  Event copyWith({
    String? name,
    String? image,
    bool? isFavorite,
    String? startTime,
    String? price,
    bool? isOnline,
    String? organization,
    String? desc,
    String? organizationImage,
    String? location,
    String? id,
  }) {
    return Event(
      name: name ?? this.name,
      image: image ?? this.image,
      isFavorite: isFavorite ?? this.isFavorite,
      startTime: startTime ?? this.startTime,
      price: price ?? this.price,
      isOnline: isOnline ?? this.isOnline,
      organization: organization ?? this.organization,
      desc: desc ?? this.desc,
      organizationImage: organizationImage ?? this.organizationImage,
      location: location ?? this.location,
      id: id ?? this.id,
    );
  }
}
