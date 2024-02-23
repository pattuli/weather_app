import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/service/service.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  final key = ApiKey();
  final _apikey = ApiKey().apikey;
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) {
      emit(WeatherBlocLoading());
      try {
        WeatherFactory wf =
            WeatherFactory("_apikey", language: Language.ENGLISH);
        // emit(WeatherBlocSucess());
      } catch (e) {
        emit(WeatherBlocFailure());
      }
    });
  }
}
