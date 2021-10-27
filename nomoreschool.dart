class Phy {
  NewtonLaws({var F, var m, var a}) {
    if (F == null) {
      return "F = ${m * a}";
    } else if (m == null) {
      return "m = ${F / a}";
    } else if (a == null) {
      return "a = ${F / m}";
    }
  }
}

class Math {
  divideFrom(double start, double end, double divideBy, {double fraction = 0}) {
    var answer = [];

    for (var i = start; i <= end; i++) {
      if (i % divideBy == fraction) {
        answer.add(i);
      }
    }
    print("from $start to $end: ${answer.toList().length} num(s)");
    answer.forEach((element) {
      if (element != null) {
        return element;
      }
    });
  }

  gcd(List<int> _num) {
    List<int> _answer = [];

    // Sort low > high
    _num.sort();
    // you're not welcome here. 0
    if (_num.contains(0)) {
      return "0 is not allow in gcd define";
      // Find GCD
    } else {
      for (int i = 1; i <= _num.last; i++) {
        if (_num.every((element) => element % i == 0)) {
          _answer.add(i);
        }
      }
    }
    // refactor num
    var numRefactor =
        _num.toString().split(' ').join(' ').replaceAll(RegExp('[\\[\\]]'), "");
    //refactor answer
    var answerRefactor = _answer
        .toString()
        .split(' ')
        .join('')
        .replaceAll(RegExp('[\\[\\]]'), "");

    // check length of the answer
    if (_answer.length > 1) {
      return "GCD of $numRefactor are $answerRefactor";
    } else {
      return "GCD of $numRefactor is $answerRefactor";
    }
  }
}

void main() {
  var test = Math().gcd([10, 20]);
  print(test);
}
