startTest() {
  int i = 0;
  print("Started Main");
  function01();
  print("Finished Main");
}

function01() {
  int j = 25;
  print("Started F01");
  //function02(j); Usaremos essa linha para relembrar o erro estourando
  try {
    function02(j);
  } catch (e, s) {
    print(e.toString());
    print(s);
    rethrow;
  } finally {
    print(
        "Essa linha será executada independente de se capturar ou não o erro.");
  }

  print("Finished F01");
}

function02(int otherJ) {
  int k = 0;
  print("Started F02");

  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("Not a number.");
  }
  otherJ = 50;
  print("Finished F02");
}
