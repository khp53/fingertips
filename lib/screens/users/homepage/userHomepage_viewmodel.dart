import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/organization.dart';
import 'package:finger_tips/screens/viewmodel.dart';
import 'package:finger_tips/services/homepage/homepage_services.dart';

class UserHomepageViewModel extends Viewmodel {
  UserHomepageViewModel() {
    _listAllOrganizations();
  }
  HomepageService get service => dependency();

  List<Organization> organization;
  //get organization => _organization;

  void _listAllOrganizations() =>
      update(() async => organization = await service.getOrganizationList());
}
