const GOOGLE_API_KEY = 'AIzaSyD6tk7ME0108tzSdp3Qd3gl4RN__ORfhBs';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=AIzaSyD6tk7ME0108tzSdp3Qd3gl4RN__ORfhBs';
  }
}
