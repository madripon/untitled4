void main(){
  // ==========================================
// Problem 1: Book Class & Discount Calculation
// ==========================================
  class Book {
  String title;
  String author;
  double price;

  // Constructor to initialize values
  Book({
  required this.title,
  required this.author,
  required this.price,
  });

  // Method to calculate discounted price
  double discountedPrice(double discountPercent) {
  return price - (price * (discountPercent / 100));
  }

  // Method to display book details
  void displayBookDetails(double discountPercent) {
  print("Title: $title");
  print("Author: $author");
  print("Original Price: \$${price.toStringAsFixed(2)}");
  print("Discounted Price (${discountPercent.toInt()}% off): \$${discountedPrice(discountPercent).toStringAsFixed(2)}");
  print("-----------------------------------");
  }
  }

// ==========================================
// Problem 2: Inheritance (Employee, Manager, Developer)
// ==========================================
  class Employee {
  String name;
  double salary;

  Employee({required this.name, required this.salary});
  }

// Subclass Manager
  class Manager extends Employee {
  String department;

  Manager({
  required String name,
  required double salary,
  required this.department,
  }) : super(name: name, salary: salary);

  void displayInfo() {
  print("Manager Details:");
  print("Name: $name");
  print("Salary: \$${salary.toStringAsFixed(2)}");
  print("Department: $department");
  print("-----------------------------------");
  }
  }

// Subclass Developer
  class Developer extends Employee {
  String programmingLanguage;

  Developer({
  required String name,
  required double salary,
  required this.programmingLanguage,
  }) : super(name: name, salary: salary);

  void displayInfo() {
  print("Developer Details:");
  print("Name: $name");
  print("Salary: \$${salary.toStringAsFixed(2)}");
  print("Programming Language: $programmingLanguage");
  print("-----------------------------------");
  }

  // ==========================================
// Problem 3: Abstraction (Appliance, Fan, Light)
// ==========================================
  abstract class Appliance {
  void turnOn();
  void turnOff();
  }

// Subclass Fan
  class Fan extends Appliance {
  @override
  void turnOn() {
  print("Fan is now running.");
  }

  @override
  void turnOff() {
  print("Fan has been turned off.");
  }
  }

// Subclass Light
  class Light extends Appliance {
  @override
  void turnOn() {
  print("Light is switched on.");
  }

  @override
  void turnOff() {
  print("Light is switched off.");

  // ==========================================
// Main Function
// ==========================================
  void main() {
  print("===== PROBLEM 1: BOOK CLASS =====");
  Book book1 = Book(title: "Dart Programming", author: "John Doe", price: 50.0);
  Book book2 = Book(title: "Flutter Development", author: "Jane Smith", price: 80.0);

  book1.displayBookDetails(10); // 10% discount
  book2.displayBookDetails(15); // 15% discount

  print("\n===== PROBLEM 2: INHERITANCE =====");
  Manager manager = Manager(name: "Rahim", salary: 75000, department: "IT & Software");
  Developer developer = Developer(name: "Karim", salary: 60000, programmingLanguage: "Dart / Flutter");

  manager.displayInfo();
  developer.displayInfo();

  print("\n===== PROBLEM 3: ABSTRACTION =====");
  Fan ceilingFan = Fan();
  Light roomLight = Light();

  print("[Fan Operations]");
  ceilingFan.turnOn();
  ceilingFan.turnOff();

  print("\n[Light Operations]");
  roomLight.turnOn();
  roomLight.turnOff();
  }
  }