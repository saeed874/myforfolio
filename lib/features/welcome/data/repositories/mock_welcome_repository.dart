import '../model/welcome_page_model.dart';
import 'iwelcome_repository.dart';

class MockWelcomeRepository implements IWelcomeRepository {
  @override
  Future<WelcomePageModel> getWelcomePageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return WelcomePageModel(
          name: 'Saeed Anwar',
          title: 'Flutter Developer',
          subTitle: 'Software Engineer',
          imgPath: 'https://avatars.githubusercontent.com/u/5081804?v=4',
          greetings: [
            "Hello",
            "مرحباً",
          ]);
    });
  }
}
