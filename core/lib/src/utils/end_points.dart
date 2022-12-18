class EndPoints {
  static const BASE_URL = 'https://api.nytimes.com/svc/';
  static EMAILED(String day) => 'v2/emailed/$day.json';
  static MOST_POPULAR_EMAILED(String day) => 'mostpopular/v2/emailed/$day.json';
}