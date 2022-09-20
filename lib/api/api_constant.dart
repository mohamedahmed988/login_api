class APIConstants {
  static bool production = false;

  static String BASE_URL_TESTING = 'https://api.aura.pixa-sa.com/api/Login';
  static String BASE_URL_PRODUCTION = 'https://api.aura.pixa-sa.com/api/Login';

  static String BASE_URL = production ? BASE_URL_PRODUCTION : BASE_URL_TESTING;

  static String clientToken = "bW9oYW1lZGNoZWJib0BnbWFpbC5jb20jKiYvLSRAJC0jKiYvcjV0czN6SThjalMyb3EwRllKVXF6Zz09IyomLy0kQCQtIyomLzIwMjItMDktMTgjKiYvLSRAJC0jKiYvMiMqJi8tJEAkLSMqJi8xLjEuMS4x";
}