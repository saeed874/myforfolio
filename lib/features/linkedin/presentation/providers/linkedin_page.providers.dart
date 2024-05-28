import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:saeedanwarportfolio/features/linkedin/presentation/viewmodels/linkedin_page.viewmodel.dart';

import '../../data/repositories/ilinkedin_repository.dart';
import '../../data/repositories/mock_linkedin_repository.dart';

final linkedInRpositoryProvider = Provider<ILinkedInRepository>((ref) {
  //return LinkedInRepository(ref);
  return MockLinkedInRepository();
});

final linkedInViewModelProvider = Provider<LinkedInPageViewModel>((ref) {
  var repository = ref.read(linkedInRpositoryProvider);
  return LinkedInPageViewModel(repository);
});

final linkedInProvider = FutureProvider((ref) {
  final linkedInVM = ref.read(linkedInViewModelProvider);
  return linkedInVM.getLinkedInPageData();
});
