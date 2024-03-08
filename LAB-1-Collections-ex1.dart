void main() {
  List<String> favoriteHobbies = ['Eating', 'Cooking', 'Watching Movies'];

  favoriteHobbies.add('Painting');

  favoriteHobbies.remove('Cooking');

  favoriteHobbies.sort();

  bool isEmpty = favoriteHobbies.isEmpty;

  print("My Favorite Hobbies:");
  for (var hobby in favoriteHobbies) {
    print("- $hobby");
  }

  print("Is the list empty? $isEmpty");
}
