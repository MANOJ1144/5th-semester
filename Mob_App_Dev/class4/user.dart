class Admin {
  void view() {
    print("Viewing all records");
  }

  void edit() {
    print("Editing record");
  }

  void delete() {
    print("Deleting a record");
  }
}

class User {
  void view() {
    print("Viewing my records.");
  }
  
  void edit() {
    print("Editing my records.");
  }
}

class Reception {
  void view() {
    print("Viewing guest records.");
  }
}

void main() {
  Admin admin = Admin();
  User user = User();
  Reception reception = Reception();
  
  admin.view(); // Output: Viewing all records.
  admin.edit(); // Output: Editing a record.
  admin.delete(); // Output: Deleting a record.
  
  user.view(); // Output: Viewing my records.
  user.edit(); // Output: Editing my records.
  
  reception.view(); // Output: Viewing guest records.
}

