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
        print(element);
      }
    });
  }
}

void main() {
  /* function structor 
  divideFrom(start, end, divideBy, fraction=0 or anything uwu)
  */
  Math().divideFrom(0, 10, 2); 
  
}
