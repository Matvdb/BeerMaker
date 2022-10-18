import 'dart:math';

class Calculs {
  static double calculMalt(double litreBiere, double degre) {
    return (litreBiere * degre) / 20;
  }

  static double calculBrassage(double malt) {
    return double.parse((malt * 2.8).toStringAsFixed(2));
  }

  static double calculRincage(double litreBiere, double brassage) {
    return double.parse((((litreBiere * 1.25) - (brassage * 0.7)).toStringAsFixed(2)));
  }

  static double calculMCU(double moyenneEBC, double litreBiere) {
    return double.parse(((4.23 * moyenneEBC) / litreBiere).toStringAsFixed(2));
  }

  static double calculAmerisant(litreBiere) {
    return litreBiere * 3;
  }

  static double calculLevure(litreBiere) {
    return litreBiere / 2;
  }

  static double calculEBC(double mcu) {
    return double.parse((2.9396 * (pow(mcu, 0.6859))).toStringAsFixed(2));
  }

  static double calculSRM(ebc) {
    return double.parse((0.508 * ebc).toStringAsFixed(2));
  }
}