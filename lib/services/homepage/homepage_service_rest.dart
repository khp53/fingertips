import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/organization.dart';
import 'package:finger_tips/services/homepage/homepage_services.dart';
import 'package:finger_tips/services/rest_services.dart';

class HomepageServiceRest implements HomepageService {
  RestService get rest => dependency();
  @override
  Future<List<Organization>> getOrganizationList() async {
    final List listJson = await rest.get('organizations');
    if (listJson == null || listJson.length == 0) return null;

    return listJson.map((e) => Organization.fromJson(e)).toList();
  }
}
