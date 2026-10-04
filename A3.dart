import 'dart:io';

class Book {
  int id;
  String title;
  String author;
  int copies;

  Book(this.id, this.title, this.author, this.copies);
}

void main() {
  List<Book> books = [];

  while (true) {
    print("\n1. Add Book");
    print("2. View Books");
    print("3. Check Book");
    print("4. View Available Books");
    print("5. Exit");

    print("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter book ID:");
        int id = int.parse(stdin.readLineSync()!);

        print("Enter book title:");
        String title = stdin.readLineSync()!;

        print("Enter author name:");
        String author = stdin.readLineSync()!;

        print("Enter number of copies:");
        int copies = int.parse(stdin.readLineSync()!);

        books.add(Book(id, title, author, copies));

        // Show the information after adding the book
        print("\nBook: $title");
        print("Author: $author");
        print("Copies: $copies");

        if (copies > 0) {
          print("Book is available.");
        } else {
          print("Book is unavailable.");
        }

        break;

      case 2:
        if (books.isEmpty) {
          print("No books added yet.");
        } else {
          print("\nBooks:");

          for (Book book in books) {
            print(
              "ID: ${book.id}, Title: ${book.title}, Author: ${book.author}, Copies: ${book.copies}",
            );
          }
        }

        break;

      case 3:
        print("Enter book ID to search:");
        int searchId = int.parse(stdin.readLineSync()!);

        bool found = false;

        // Search book using its ID
        books.forEach((book) {
          if (book.id == searchId) {
            print("Book Found: ${book.title}");
            found = true;
          }
        });

        if (found == false) {
          print("Book Not Found");
        }

        break;

      case 4:
        if (books.isEmpty) {
          print("No books added yet.");
        } else {
          print("\nAvailable Books:");

          for (Book book in books) {
            if (book.copies > 0) {
              print("ID: ${book.id}, ${book.title} - Copies: ${book.copies}");
            }
          }
        }

        break;

      case 5:
        print("Program ended.");
        return;

      default:
        print("Invalid choice.");
    }
  }
}
