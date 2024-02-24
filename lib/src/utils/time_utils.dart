import 'constants/strings.dart';

String convertMinutesToHoursAndMinutes(int minutes) {
  int hours = minutes ~/ 60;
  int remainingMinutes = minutes % 60;
  return '$hours${diminutiveHours.toUpperCase()}$remainingMinutes';
}

int convertToMinutes(String hours, String minutes) {
  int totalMinutes = int.parse(hours) * 60 + int.parse(minutes);
  return totalMinutes;
}
