class GetTestState {
  GetTestState init() {
    return GetTestState();
  }

  GetTestState clone() {
    return GetTestState();
  }
}

class GetTestLoaded extends GetTestState {
  final String test;

  GetTestLoaded(this.test);
}

class GetTestLoading extends GetTestState {}
