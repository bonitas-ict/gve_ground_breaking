/// A FINITE STATE ENUM CLASS THAT REPRESENTS THE CURRENT AUTHENTICATION STATE OF THE USER AT ALL TIME
/// CORRESPONDING INTEGER VALUES ARE 0,1,2,3 WHERE -1 REPRESENTS A STATE NOT IN THIS ENUM

enum AppState{
  ONBOARDING,
  AUTHENTICATED,
  UNAUTHENTICATED,
  PARTIALLY_AUTHENTICATED,
}