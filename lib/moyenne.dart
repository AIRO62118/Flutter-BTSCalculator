class Moyenne {
  //Attributs
  int noteCultureG = 10;
  int noteAnglais = 10;
  int noteCEJMA = 10;
  int noteMath = 10;
  int noteInfoE4 = 10;
  int noteInfoE5 = 10;
  int noteInfoE6 = 10;

  int coeff2 = 2;
  int coeff3 = 3;
  int coeff4 = 4;

  //Getter / Setter

  //Methodes persos
  int coeffCultureG() {
    return ((noteCultureG * coeff2));
  }

  int coeffAnglais() {
    return ((noteAnglais * coeff2));
  }

  int coeffCEJMA() {
    return ((noteCEJMA * coeff3));
  }

  int coeffMath() {
    return ((noteMath * coeff3));
  }

  int coeffInfoE4() {
    return ((noteInfoE4 * coeff4));
  }

  int coeffInfoE5() {
    return ((noteCultureG * coeff4));
  }

  int coeffInfoE6() {
    return ((noteCultureG * coeff4));
  }

  int calculMoyenne() {
    int moyenne = ((coeffAnglais() +
            coeffCEJMA() +
            coeffCultureG() +
            coeffMath() +
            coeffInfoE4() +
            coeffInfoE5() +
            coeffInfoE6()) ~/
        ((coeff2 * 2) + (coeff3 * 2) + (coeff4 * 3)));

    return moyenne;
  }
}
