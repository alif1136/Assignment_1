import 'dart:collection';

/// Finds and returns a list of unique elements from the given list.
///
/// This function uses a `HashSet` to efficiently determine unique elements.
/// The time complexity is O(N) where N is the number of elements in the input list,
/// as adding elements to a `HashSet` and converting it to a list are typically O(N) operations.
///
/// Type parameter [T] allows this function to work with lists of any type.
List<T> findUniqueElements<T>(List<T> elements) {
  final Set<T> uniqueSet = HashSet<T>();

  for (final T element in elements) {
    uniqueSet.add(element);
  }
  return uniqueSet.toList();
}

void main() {
  // Example with integers
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 2, 5, 9];
  print('Original list of numbers : $numbers');

  final List<int> uniqueNumbers = findUniqueElements(numbers);
  print('Unique numbers (O(N) complexity) : $uniqueNumbers');

  print(''); // Add a newline for better readability

  // Example with strings
  final List<String> words = ["Apple", "Banana", "Orange", "Apple", "Grape", "Banana"];
  print('Original list of words : $words');

  final List<String> uniqueWords = findUniqueElements(words);
  print('Unique words (O(N) complexity) : $uniqueWords');

  print(''); // Add a newline for better readability

  // Example with doubles
  final List<double> temperatures = [20.5, 21.0, 20.5, 22.0, 21.0, 19.8];
  print('Original list of temperatures : $temperatures');
  final List<double> uniqueTemperatures = findUniqueElements(temperatures);
  print('Unique temperatures (O(N) complexity) : $uniqueTemperatures');

  print(''); // Add a newline for better readability

  // Example with mixed types (requires dynamic type or a common supertype)
  final List<dynamic> mixedList = [1, "hello", 1, true, "hello", 2.5, false];
  print('Original mixed list : $mixedList');
  final List<dynamic> uniqueMixedList = findUniqueElements(mixedList);
  print('Unique mixed list (O(N) complexity) : $uniqueMixedList');
}
 //-------------------------------------------------------------------------------------------------------------------------
int binarySearch<T extends Comparable<T>>(List<T> sortedList, T target){

  int low = 0;
  int high = sortedList.length - 1;

  while(low <= high){
    int mid = low + ((high - low ~/ 2));
    int comparison = sortedList[mid].compareTo(target);
    if(comparison == 0){
      return mid;
    }
    else if(comparison < 0){
      low = mid + 1;
    }
    else{
      high = mid - 1;
    }
  }
  return - 1;
}
void main(){
  final List<int> numbers = List.generate(1000000, (index)=> index*2);
  // Corrected typo: 'terget' to 'target'
  const int targetFound = 999998;
  const int targetNotFound = 1234567;

  print("Search for $targetFound in a list of ${numbers.length} elements");

  final int indexFound = binarySearch(numbers, targetFound);
  if(indexFound != -1){
    print("Found $targetFound at index $indexFound. (Value: ${numbers[indexFound]})");
  } else {
    print("Target $targetFound not found.");
  }

  print("\nSearch for $targetNotFound in a list of ${numbers.length} elements");
  final int indexNotFound = binarySearch(numbers, targetNotFound);
  if(indexNotFound != -1){
    print("Found $targetNotFound at index $indexNotFound. (Value: ${numbers[indexNotFound]})");
  } else {
    print("Target $targetNotFound not found, as expected.");
  }
}