import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:spot_me/config.dart';
import 'package:weather/weather.dart';

class GreetingTextsWidget extends StatelessWidget {
  final Position position;

  const GreetingTextsWidget({
    Key key,
    this.position,
  }) : super(key: key);

  String getGreetingText() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  Future<Weather> getWeather() async {
    WeatherFactory wf = new WeatherFactory(AppConfig.OWM_KEY);
    Weather w = await wf.currentWeatherByLocation(
        position.latitude, position.longitude);
    return w;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Text(
          getGreetingText(),
          style: const TextStyle(fontSize: 24),
        ),
        SizedBox(height: 10),
        FutureBuilder(
          future: getWeather(),
          initialData: "Loading",
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Text("Loading the weather...");
            }
            Weather weather = snapshot.data as Weather;
            return Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://openweathermap.org/img/w/" +
                        weather.weatherIcon +
                        ".png",
                  ),
                  Text(weather.temperature.celsius.toStringAsFixed(0) +
                      "º C | " +
                      weather.areaName)
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
