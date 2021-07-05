import 'package:finger_tips/models/organization.dart';

abstract class HomepageService {
  Future<List<Organization>> getOrganizationList();
}
