class Block {
  late String _blockLetter;
  late List<String> _roomsList;

  String GetBlockLetter() => _blockLetter;
  List<String> GetRoomsList() => _roomsList;

  String GetRoomFromList(int index) => "${_blockLetter} ${_roomsList[index]}";

  Block(String blockLetter, List<String> roomsList) {
    _blockLetter = blockLetter;
    _roomsList = roomsList;
  }

  factory Block.BlocoA() {
    return Block("A", <String>["101", "102", "103", "104"]);
  }

  factory Block.BlocoB() {
    return Block("B", <String>["101", "102", "103", "104"]);
  }
  factory Block.BlocoC() {
    return Block("C", <String>["101", "102", "103", "104", "105", "106"]);
  }

  factory Block.BlocoD() {
    return Block("D", <String>["101", "102", "103", "104"]);
  }

  factory Block.BlocoE() {
    return Block("E", <String>["101", "102", "103", "104"]);
  }

  factory Block.BlocoJ() {
    return Block("J", <String>["101", "102", "103", "104"]);
  }

  factory Block.BlocoH() {
    return Block("H", <String>[
      "101",
      "102",
      "103",
      "104",
      "105",
      "106",
      "201",
      "202",
      "203",
      "204",
      "205",
      "206"
    ]);
  }

  factory Block.BlocoU() {
    return Block("U", <String>["101", "102", "103", "104"]);
  }

  factory Block.BlocoP() {
    return Block("P", <String>["101", "102", "103", "104"]);
  }
  factory Block.BlocoQ() {
    return Block("Q", <String>["101", "102", "103", "104"]);
  }

  factory Block.BlocoW() {
    return Block("W", <String>["101", "102", "103", "104"]);
  }
}
