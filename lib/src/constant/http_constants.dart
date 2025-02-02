class HttpConstants {
  static const bool isProduction = true;
  static const String ngroklink = 'https://techtest.youapp.ai/api/';
  static const String baseUrlArticle =
      'https://techtest.youapp.ai/api/';
  static const String base = isProduction
      ? "https://techtest.youapp.ai/api/"
      : ngroklink;
  static const String urlBase = isProduction
      ? "https://techtest.youapp.ai/api/"
      : ngroklink;
  static const String downloadRecipt = 'payment-receipt-download';
  static const String token = 'get/token';
  static const String login = 'login';
  static const String verify = 'verify-mobile';
  static const String logout = 'logout';
  static const String deleteAccount = 'delete-user';
  static const String verifyOtp = 'verify-otp';
  static const String resendOtp = 'resend-otp';
  static const String updateProfile = 'update-profile';
  static const String cities = 'cities?search=';
  static const String weightHeight = 'get-weight-height';
  static const String privacyPolicy = 'page/privacy-policy';
  static const String termsAndConditions = 'page/terms-conditions';
  static const String familyMember = 'family-member';
  static const String healthScan = 'health-scan';
  static const String remainingHealthScanCheck = 'health-scan/check';
  static const String infoModal = 'info-modal';
  static const String user = 'user';
  static const String dashboard = 'customer_dashboard';
  static const String downloadPdf = 'appointment/download-prescription/';
  static const String socialLogin = 'social-login';

  // static const String home = 'page/musaddiq';
  static const String home = 'page/home';
  static const String wellness = 'topic/wellness';
  static const String findDoctor = 'page/find-doctors';
  static const String findADoctor = 'find-a-doctor';
  static const String sehatAtoZ = 'page/sehat-a-to-z-app';
  static const String prescriptionType = 'prescription-element-types';
  static const String medicalRecord = 'medical-record';
  static const String articleListing = 'article/list';
  static const String featureDoctorListing = 'feature/doctor';
  static const String medicalHistoryRecord = 'appointment';
  static const String disease = 'disease';
  static const String medicine = 'medicine';
  static const String deleteMedicalRecord = 'medical-record/';
  static const String getDoctor = 'doctor/listing';
  static const String shareWithDoctor = 'instant-medical-record/share';
  static const String deleteSingleRecord = 'medical-record/file/';
  static const String appointment = 'appointment';
  static const String cancelAppointment = 'appointment/cancel/';
  static const String clinicsTimeSlots = 'doctor-clinic-time/';
  static const String payment = 'payment';
  static const String subscription = 'subscription';
  static const String pricing = 'page/pricing';
  static const String reviewArticle = 'review-article';
  static const String userFeedBackForDoctor = 'review';
  static const String instantConsultationStart = 'instant-consultation/start';
  static const String instantMedialRedocrd = 'instant-medical-record/latest';

  static const String instantConsultationIntro =
      'buy-subscription-doctor-details';
  static const String generateAgoraLink = 'generate-agora-link?appointment_id=';
  static const String doctorsByCategory = 'search-doctor-by-category?';
  static const String review = 'review';
  static const String reasonForVisit = 'reson-for-visits/';
  static const String cancelationCallReason = 'instant-consultation/cancel';
  static const String switchDoctor = '/switch-doctor';
  static const String preferances = 'preferances';
  static const String search = 'search';
  static const String notification = 'notifications';
  static const String notificationStatusUpdate = 'notifications/update';
  static const String patientInfo = 'patient-info';
}
