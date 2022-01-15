import '../services/location.dart';
import 'package:co.Weather/services/networking.dart';

var appID = " "; //Use your own AppId

class WeatherModel {
  getCityWeather(cityName) async {
    NetworkingData networkingData = NetworkingData(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$appID&units=metric');
    var weatherData = await networkingData.getData();
    return (weatherData);
  }

  getLocationWeather() async {
    Location location = Location();
    await location.getCurrentPosition();
    NetworkingData networkingData = NetworkingData(
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$appID&units=metric');
    var weatherData = await networkingData.getData();
    return (weatherData);
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
