import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.uuId,
    this.createdAt,
    this.name,
    this.surname,
    required this.email,
    required this.password,
    this.birthdate,
    this.address,
    this.avatar,
    this.promoCode,
    required this.phone,
    this.cashBudget,
    this.recentPayments,
    this.monthlyOutgoings,
    this.cards,
    this.favorites,
    this.id,
  });

  String? uuId;
  DateTime? createdAt;
  String? name;
  String? surname;
  String email;
  String password;
  DateTime? birthdate;
  String? address;
  String? avatar;
  List<dynamic>? promoCode;
  String phone;
  int? cashBudget;
  List<RecentPayment>? recentPayments;
  List<MonthlyOutgoing>? monthlyOutgoings;
  List<Card>? cards;
  List<Favorite>? favorites;
  String? id;

  factory User.fromJson(Map<String, dynamic> json) => User(
        uuId: json["uuID"],
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        surname: json["surname"],
        email: json["email"],
        password: json["password"],
        birthdate: DateTime.parse(json["birthdate"]),
        address: json["address"],
        avatar: json["avatar"],
        promoCode: List<dynamic>.from(json["promoCode"].map((x) => x)),
        phone: json["phone"],
        cashBudget: json["cashBudget"],
        monthlyOutgoings: List<MonthlyOutgoing>.from(
            json["monthlyOutgoings"].map((x) => MonthlyOutgoing.fromJson(x))),
        recentPayments: List<RecentPayment>.from(
            json["recentPayments"].map((x) => RecentPayment.fromJson(x))),
        cards: List<Card>.from(json["cards"].map((x) => Card.fromJson(x))),
        favorites: List<Favorite>.from(
            json["favorites"].map((x) => Favorite.fromJson(x))),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        //"uuID": uuId,
        //"createdAt": createdAt,
        "name": name,
        "surname": surname,
        "email": email,
        "password": password,
        //"birthdate": birthdate,
        "address": address,
        //"avatar": avatar,
        "promoCode": List<dynamic>.from(promoCode!.map((x) => x)),
        "phone": phone,
        "cashBudget": cashBudget,
        "monthlyOutgoings":
            List<dynamic>.from(monthlyOutgoings!.map((x) => x.toJson())),
        "recentPayments":
            List<dynamic>.from(recentPayments!.map((x) => x.toJson())),
        "cards": List<dynamic>.from(cards!.map((x) => x.toJson())),
        "favorites": List<dynamic>.from(favorites!.map((x) => x.toJson())),
      };
}

class Card {
  Card({
    this.cardId,
    required this.cvv,
    required this.cardNick,
    required this.cardNumber,
    required this.cardDate,
    required this.holderName,
    required this.createdAt,
  });

  int? cardId;
  int cvv;
  String cardNick;
  String cardNumber;
  String cardDate;
  String holderName;
  DateTime createdAt;

  factory Card.fromJson(Map<String, dynamic> json) => Card(
        cardId: json["cardId"],
        cvv: json["cvv"],
        cardNick: json["cardNick"],
        cardNumber: json["cardNumber"],
        cardDate: json["cardDate"],
        holderName: json["holderName"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "cardId": cardId,
        "cvv": cvv,
        "cardNick": cardNick,
        "cardNumber": cardNumber,
        "cardDate": cardDate,
        "holderName": holderName,
        "createdAt": createdAt.toIso8601String(),
      };
}

class Favorite {
  Favorite({
    required this.rewardsCategoryName,
    required this.rewardItemId,
    this.timeStamp,
  });

  int rewardsCategoryName;
  int rewardItemId;
  String? timeStamp;

  factory Favorite.fromJson(Map<String, dynamic> json) => Favorite(
        rewardsCategoryName: json["rewardsCategoryName"],
        rewardItemId: json["rewardItemId"],
        timeStamp: json["timeStamp"],
      );

  Map<String, dynamic> toJson() => {
        "rewardsCategoryName": rewardsCategoryName,
        "rewardItemId": rewardItemId,
        "timeStamp": timeStamp,
      };
}

class RecentPayment {
  RecentPayment({
    this.id,
    this.timeStamp,
    required this.paymentReceiver,
    required this.description,
  });

  int? id;
  String? timeStamp;
  String paymentReceiver;
  String description;

  factory RecentPayment.fromJson(Map<String, dynamic> json) => RecentPayment(
        id: json["id"],
        timeStamp: json["timeStamp"],
        paymentReceiver: json["paymentReceiver"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "timeStamp": timeStamp,
        "paymentReceiver": paymentReceiver,
        "description": description,
      };
}

class MonthlyOutgoing {
  int? monthIndex;
  String? timeStamp;
  double? outgoingAvg;
  double? cashbackPerent;
  double? totalSpending;
  double? cashbackTotal;
  List<Outgoings>? outgoings;

  MonthlyOutgoing(
      {this.monthIndex,
      this.timeStamp,
      this.outgoingAvg,
      this.cashbackPerent,
      this.totalSpending,
      this.cashbackTotal,
      this.outgoings});

  MonthlyOutgoing.fromJson(Map<String, dynamic> json) {
    monthIndex = json['monthIndex'];
    timeStamp = json['timeStamp'];
    outgoingAvg = json['outgoingAvg'].toDouble();
    cashbackPerent = json['cashbackPerent'].toDouble();
    totalSpending = json['totalSpending'].toDouble();
    cashbackTotal = json['cashbackTotal'].toDouble();
    if (json['outgoings'] != null) {
      outgoings = <Outgoings>[];
      json['outgoings'].forEach((v) {
        outgoings!.add(Outgoings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['monthIndex'] = monthIndex;
    data['timeStamp'] = timeStamp;
    data['outgoingAvg'] = outgoingAvg;
    data['cashbackPerent'] = cashbackPerent;
    data['totalSpending'] = totalSpending;
    data['cashbackTotal'] = cashbackTotal;
    if (outgoings != null) {
      data['outgoings'] = outgoings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Outgoings {
  String? timeStamp;
  int? amount;
  int? cashback;
  String? description;

  Outgoings({this.timeStamp, this.amount, this.cashback, this.description});

  Outgoings.fromJson(Map<String, dynamic> json) {
    timeStamp = json['timeStamp'];
    amount = json['amount'];
    cashback = json['cashback'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timeStamp'] = timeStamp;
    data['amount'] = amount;
    data['cashback'] = cashback;
    data['description'] = description;
    return data;
  }
}
