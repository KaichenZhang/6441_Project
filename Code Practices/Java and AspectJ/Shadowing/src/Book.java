
public class Book {
 private String author;
 private String title;
 private String year;
 
 public Book (String author1, String title, String year) {
  this.author = author1;
  String author = "Jill";
  this.title = title;
  this.year = year;
  System.out.println("Author: " + author);
 }
 
 public void displayAuthor () {
  System.out.println ("Author: " + author);
 }
 
}