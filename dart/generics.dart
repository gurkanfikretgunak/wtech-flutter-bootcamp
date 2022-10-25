void main(List<String> args) {
  AdminSupport adminSupport = AdminSupport('Support', 20, 1);
  AdminModerator adminModerator = AdminModerator('Moderator', 30, 2);
  User user = User('User', 12);

  // Success
  Process p1 = Process(adminSupport);
  p1.writeAdminName();

  // Success
  Process p2 = Process(adminModerator);
  p2.writeAdminName();

  // Fail
  //Process p3 = Process(user);
}

class Process<T extends Admin> {
  final T admin;

  Process(this.admin);

  void writeAdminName() {
    print(admin.name);
  }
}

class User {
  final String name;
  final int age;

  User(this.name, this.age);
}

class Admin extends User {
  final int role;

  Admin(super.name, super.age, this.role);
}

class AdminSupport extends Admin {
  AdminSupport(super.name, super.age, super.role);

  void support() {
    print('Suppoprt');
  }
}

class AdminModerator extends Admin {
  AdminModerator(super.name, super.age, super.role);

  void moderator() {
    print('Moderator');
  }
}
