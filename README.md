# Dart OOP Complete Example

This project is a practice project created to understand and implement the major Object-Oriented Programming (OOP) concepts in Dart.

## 📚 OOP Concepts Covered

This project demonstrates:

- Classes and Objects
- Constructors
- `this` keyword
- Encapsulation
- Private fields using `_`
- Getters
- Setters
- Inheritance
- `extends`
- Abstract Classes
- Abstract Methods
- Method Overriding
- `@override`
- Polymorphism
- Static Variables
- `super`
- Lists
- Methods

## 🏫 Real-World Scenario

The example uses a simple university management scenario.

There is an abstract `Person` class that acts as the parent class.

Two classes inherit from it:

- `Student`
- `Teacher`

### Class Structure

## 🏫 Project Overview

The project represents a simple university management system using three classes:

```text
Person (Abstract Class)
│
├── name
├── age
├── totalPersons
├── getters
├── setters
├── introduce()
└── display()
      │
      ├── Student extends Person
      │   ├── roll number
      │   ├── CGPA
      │   └── display()
      │
      └── Teacher extends Person
          ├── subject
          ├── salary
          └── display()