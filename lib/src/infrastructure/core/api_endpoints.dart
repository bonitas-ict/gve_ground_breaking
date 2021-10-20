/// ALL API ENDPOINT FOR THIS PROJECT ARE MANAGED WITHIN THIS FILE

class ApiRoutes {
  ///POST ENDPOINTS
  static const userRoute = 'api/user';
  static const pinCheckRoute = 'api/pin';
  static const offlineSubmitRoute = 'api/user/document';

  ///GET ENDPOINTS
  static const notificationRoute = 'api/notification';
  static const dashboardRoute = 'api/dashboard';
  static const agendaRoute = 'api/agenda/';
  static const speakerRoute = 'api/speaker/';
  static const landRoute = 'api/property';
  static const paymentVerificationRoute = 'api/property/verify-payment';
  static const paymentHistoryRoute = 'api/user/payment';
  static const sitRoute = 'api/user/seat';
  static const notficationRoute = 'api/user/notification';
  static const notificationCountRoute = 'api/user/notification-count';
  static const notificationMarkRoute = 'api/user/notification-mark/';
}
