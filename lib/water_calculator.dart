class WaterCalculator {
  final double weight;

  WaterCalculator({required this.weight});

  int calculateWater() {
    /// TODO 9
    /// Calculate the daily water intake
    /// Formula:
    /// weight * 35
    return (weight * 35).toInt();

    /// Return the result in ml as integer
  }

  String getAdvice(int water) {
    /// TODO 10
    /// If water is greater than 2500
    /// return a message about excellent hydration
    /// TODO 11
    /// If water is between 2000 and 2500
    /// return a message about healthy hydration

    if (water > 2500) {
      return "Excellent! You're doing a great job staying watered.";
    } else if (water >= 2000 && water <= 2500) {
      return "Good job! This is a healthy amount of water for your body.";
    } else {
      return "Try to drink a bit more water throughout the day!";
    }

    /// TODO 12
    /// Otherwise
    /// return a message telling the user to drink more water
  }
}
