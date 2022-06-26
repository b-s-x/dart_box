import 'package:dart_box/Tries/trie_string.dart';

void insert() {
  final trie = StringTrie();
  trie.insert("cute");
  if (trie.contains("cute")) {
    print("cute is in the trie");
  }
}

void remove() {
  final trie = StringTrie();
  trie.insert('cut');
  trie.insert('cute');

  assert(trie.contains('cut'));
  print('"cut" is in the trie');
  assert(trie.contains('cute'));
  print('"cute" is in the trie');

  print('\n--- Removing "cut" ---');
  trie.remove('cut');
  assert(!trie.contains('cut'));
  assert(trie.contains('cute'));
  print('"cute" is still in the trie');
}

void matches() {
  final trie = StringTrie();
  trie.insert('car');
  trie.insert('card');
  trie.insert('care');
  trie.insert('cared');
  trie.insert('cars');
  trie.insert('carbs');
  trie.insert('carapace');
  trie.insert('cargo');
  trie.insert('coo');

  print('Collections starting with "car"');
  final prefixedWithCar = trie.matchPrefix('car');
  print('11111111 $prefixedWithCar');

  // print('\nCollections starting with "care"');
  // final prefixedWithCare = trie.matchPrefix('care');
  // print('222222222 $prefixedWithCare');
}

void main() {
  // insert();
  // remove();
  matches();
}
