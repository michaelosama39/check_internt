import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'event.dart';
import 'state.dart';

class GetTestBloc extends Bloc<GetTestEvent, GetTestState> {
  GetTestBloc() : super(GetTestState().init()) {
    String test;
    Dio _dio = Dio();

    on<InitEvent>((event, emit) async {
      emit(GetTestState().init());
    });

    on<printTestEvent>((event, emit) async {
      emit(GetTestLoading());
      Response response = await _dio
          .get('https://student.valuxapps.com/api/products?page=1')
          .then((value) async {
        test = await value.statusCode.toString();
      });
      print("Test ${test}");
      emit(GetTestLoaded(test));
    });
  }
}
