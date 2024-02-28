class Forth {
  List<int> stack = [];
  Map<String, int Function(int, int)> instruction = {
    '+': (int x, int y) => x + y,
    '-': (int x, int y) => x - y,
    '/': (int x, int y) {
      if (y == 0) {
        throw Exception('Division by zero');
      }
      return x ~/ y;
    },
    '*': (int x, int y) => x * y
  };
  List<int> evaluate(String cmd) {
    List<String> splitted = cmd.split(' ');
    for(int i = 0; i < splitted.length; i++) {
      try {
        stack.add(int.parse(splitted[i]));
      }
      catch(e) {
        if(stack.length < 2) {
          throw Exception('Stack empty');
        }
        int op1 = stack.removeLast();
        int op2 = stack.removeLast();
        var currentInstruction = instruction[splitted[i]];
        if(currentInstruction != null) {
          stack.add(currentInstruction(op2, op1));
        }
      }
    }
    return stack;
  }
} 