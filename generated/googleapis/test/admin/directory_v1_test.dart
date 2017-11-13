library googleapis.admin.directory_v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/admin/directory_v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAlias = 0;
buildAlias() {
  var o = new api.Alias();
  buildCounterAlias++;
  if (buildCounterAlias < 3) {
    o.alias = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.primaryEmail = "foo";
  }
  buildCounterAlias--;
  return o;
}

checkAlias(api.Alias o) {
  buildCounterAlias++;
  if (buildCounterAlias < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
  }
  buildCounterAlias--;
}

buildUnnamed841() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed841(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterAliases = 0;
buildAliases() {
  var o = new api.Aliases();
  buildCounterAliases++;
  if (buildCounterAliases < 3) {
    o.aliases = buildUnnamed841();
    o.etag = "foo";
    o.kind = "foo";
  }
  buildCounterAliases--;
  return o;
}

checkAliases(api.Aliases o) {
  buildCounterAliases++;
  if (buildCounterAliases < 3) {
    checkUnnamed841(o.aliases);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAliases--;
}

buildUnnamed842() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed842(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppAccessCollections = 0;
buildAppAccessCollections() {
  var o = new api.AppAccessCollections();
  buildCounterAppAccessCollections++;
  if (buildCounterAppAccessCollections < 3) {
    o.blockedApiAccessBuckets = buildUnnamed842();
    o.enforceSettingsForAndroidDrive = true;
    o.errorMessage = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.resourceId = "foo";
    o.resourceName = "foo";
    o.trustDomainOwnedApps = true;
  }
  buildCounterAppAccessCollections--;
  return o;
}

checkAppAccessCollections(api.AppAccessCollections o) {
  buildCounterAppAccessCollections++;
  if (buildCounterAppAccessCollections < 3) {
    checkUnnamed842(o.blockedApiAccessBuckets);
    unittest.expect(o.enforceSettingsForAndroidDrive, unittest.isTrue);
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
    unittest.expect(o.trustDomainOwnedApps, unittest.isTrue);
  }
  buildCounterAppAccessCollections--;
}

core.int buildCounterAsp = 0;
buildAsp() {
  var o = new api.Asp();
  buildCounterAsp++;
  if (buildCounterAsp < 3) {
    o.codeId = 42;
    o.creationTime = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.lastTimeUsed = "foo";
    o.name = "foo";
    o.userKey = "foo";
  }
  buildCounterAsp--;
  return o;
}

checkAsp(api.Asp o) {
  buildCounterAsp++;
  if (buildCounterAsp < 3) {
    unittest.expect(o.codeId, unittest.equals(42));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastTimeUsed, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.userKey, unittest.equals('foo'));
  }
  buildCounterAsp--;
}

buildUnnamed843() {
  var o = new core.List<api.Asp>();
  o.add(buildAsp());
  o.add(buildAsp());
  return o;
}

checkUnnamed843(core.List<api.Asp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsp(o[0]);
  checkAsp(o[1]);
}

core.int buildCounterAsps = 0;
buildAsps() {
  var o = new api.Asps();
  buildCounterAsps++;
  if (buildCounterAsps < 3) {
    o.etag = "foo";
    o.items = buildUnnamed843();
    o.kind = "foo";
  }
  buildCounterAsps--;
  return o;
}

checkAsps(api.Asps o) {
  buildCounterAsps++;
  if (buildCounterAsps < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed843(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAsps--;
}

core.int buildCounterCalendarResource = 0;
buildCalendarResource() {
  var o = new api.CalendarResource();
  buildCounterCalendarResource++;
  if (buildCounterCalendarResource < 3) {
    o.etags = "foo";
    o.generatedResourceName = "foo";
    o.kind = "foo";
    o.resourceDescription = "foo";
    o.resourceEmail = "foo";
    o.resourceId = "foo";
    o.resourceName = "foo";
    o.resourceType = "foo";
  }
  buildCounterCalendarResource--;
  return o;
}

checkCalendarResource(api.CalendarResource o) {
  buildCounterCalendarResource++;
  if (buildCounterCalendarResource < 3) {
    unittest.expect(o.etags, unittest.equals('foo'));
    unittest.expect(o.generatedResourceName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.resourceDescription, unittest.equals('foo'));
    unittest.expect(o.resourceEmail, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterCalendarResource--;
}

buildUnnamed844() {
  var o = new core.List<api.CalendarResource>();
  o.add(buildCalendarResource());
  o.add(buildCalendarResource());
  return o;
}

checkUnnamed844(core.List<api.CalendarResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalendarResource(o[0]);
  checkCalendarResource(o[1]);
}

core.int buildCounterCalendarResources = 0;
buildCalendarResources() {
  var o = new api.CalendarResources();
  buildCounterCalendarResources++;
  if (buildCounterCalendarResources < 3) {
    o.etag = "foo";
    o.items = buildUnnamed844();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterCalendarResources--;
  return o;
}

checkCalendarResources(api.CalendarResources o) {
  buildCounterCalendarResources++;
  if (buildCounterCalendarResources < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed844(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCalendarResources--;
}

buildUnnamed845() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed845(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = "foo";
    o.expiration = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.params = buildUnnamed845();
    o.payload = true;
    o.resourceId = "foo";
    o.resourceUri = "foo";
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed845(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterChromeOsDeviceActiveTimeRanges = 0;
buildChromeOsDeviceActiveTimeRanges() {
  var o = new api.ChromeOsDeviceActiveTimeRanges();
  buildCounterChromeOsDeviceActiveTimeRanges++;
  if (buildCounterChromeOsDeviceActiveTimeRanges < 3) {
    o.activeTime = 42;
    o.date = core.DateTime.parse("2002-02-27T14:01:02Z");
  }
  buildCounterChromeOsDeviceActiveTimeRanges--;
  return o;
}

checkChromeOsDeviceActiveTimeRanges(api.ChromeOsDeviceActiveTimeRanges o) {
  buildCounterChromeOsDeviceActiveTimeRanges++;
  if (buildCounterChromeOsDeviceActiveTimeRanges < 3) {
    unittest.expect(o.activeTime, unittest.equals(42));
    unittest.expect(
        o.date, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterChromeOsDeviceActiveTimeRanges--;
}

buildUnnamed846() {
  var o = new core.List<api.ChromeOsDeviceActiveTimeRanges>();
  o.add(buildChromeOsDeviceActiveTimeRanges());
  o.add(buildChromeOsDeviceActiveTimeRanges());
  return o;
}

checkUnnamed846(core.List<api.ChromeOsDeviceActiveTimeRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceActiveTimeRanges(o[0]);
  checkChromeOsDeviceActiveTimeRanges(o[1]);
}

core.int buildCounterChromeOsDeviceRecentUsers = 0;
buildChromeOsDeviceRecentUsers() {
  var o = new api.ChromeOsDeviceRecentUsers();
  buildCounterChromeOsDeviceRecentUsers++;
  if (buildCounterChromeOsDeviceRecentUsers < 3) {
    o.email = "foo";
    o.type = "foo";
  }
  buildCounterChromeOsDeviceRecentUsers--;
  return o;
}

checkChromeOsDeviceRecentUsers(api.ChromeOsDeviceRecentUsers o) {
  buildCounterChromeOsDeviceRecentUsers++;
  if (buildCounterChromeOsDeviceRecentUsers < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceRecentUsers--;
}

buildUnnamed847() {
  var o = new core.List<api.ChromeOsDeviceRecentUsers>();
  o.add(buildChromeOsDeviceRecentUsers());
  o.add(buildChromeOsDeviceRecentUsers());
  return o;
}

checkUnnamed847(core.List<api.ChromeOsDeviceRecentUsers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceRecentUsers(o[0]);
  checkChromeOsDeviceRecentUsers(o[1]);
}

core.int buildCounterChromeOsDevice = 0;
buildChromeOsDevice() {
  var o = new api.ChromeOsDevice();
  buildCounterChromeOsDevice++;
  if (buildCounterChromeOsDevice < 3) {
    o.activeTimeRanges = buildUnnamed846();
    o.annotatedAssetId = "foo";
    o.annotatedLocation = "foo";
    o.annotatedUser = "foo";
    o.bootMode = "foo";
    o.deviceId = "foo";
    o.etag = "foo";
    o.ethernetMacAddress = "foo";
    o.firmwareVersion = "foo";
    o.kind = "foo";
    o.lastEnrollmentTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.lastSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.macAddress = "foo";
    o.meid = "foo";
    o.model = "foo";
    o.notes = "foo";
    o.orderNumber = "foo";
    o.orgUnitPath = "foo";
    o.osVersion = "foo";
    o.platformVersion = "foo";
    o.recentUsers = buildUnnamed847();
    o.serialNumber = "foo";
    o.status = "foo";
    o.supportEndDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.willAutoRenew = true;
  }
  buildCounterChromeOsDevice--;
  return o;
}

checkChromeOsDevice(api.ChromeOsDevice o) {
  buildCounterChromeOsDevice++;
  if (buildCounterChromeOsDevice < 3) {
    checkUnnamed846(o.activeTimeRanges);
    unittest.expect(o.annotatedAssetId, unittest.equals('foo'));
    unittest.expect(o.annotatedLocation, unittest.equals('foo'));
    unittest.expect(o.annotatedUser, unittest.equals('foo'));
    unittest.expect(o.bootMode, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.ethernetMacAddress, unittest.equals('foo'));
    unittest.expect(o.firmwareVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastEnrollmentTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.lastSync,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.macAddress, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.orderNumber, unittest.equals('foo'));
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    unittest.expect(o.osVersion, unittest.equals('foo'));
    unittest.expect(o.platformVersion, unittest.equals('foo'));
    checkUnnamed847(o.recentUsers);
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.supportEndDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.willAutoRenew, unittest.isTrue);
  }
  buildCounterChromeOsDevice--;
}

core.int buildCounterChromeOsDeviceAction = 0;
buildChromeOsDeviceAction() {
  var o = new api.ChromeOsDeviceAction();
  buildCounterChromeOsDeviceAction++;
  if (buildCounterChromeOsDeviceAction < 3) {
    o.action = "foo";
    o.deprovisionReason = "foo";
  }
  buildCounterChromeOsDeviceAction--;
  return o;
}

checkChromeOsDeviceAction(api.ChromeOsDeviceAction o) {
  buildCounterChromeOsDeviceAction++;
  if (buildCounterChromeOsDeviceAction < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.deprovisionReason, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceAction--;
}

buildUnnamed848() {
  var o = new core.List<api.ChromeOsDevice>();
  o.add(buildChromeOsDevice());
  o.add(buildChromeOsDevice());
  return o;
}

checkUnnamed848(core.List<api.ChromeOsDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDevice(o[0]);
  checkChromeOsDevice(o[1]);
}

core.int buildCounterChromeOsDevices = 0;
buildChromeOsDevices() {
  var o = new api.ChromeOsDevices();
  buildCounterChromeOsDevices++;
  if (buildCounterChromeOsDevices < 3) {
    o.chromeosdevices = buildUnnamed848();
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterChromeOsDevices--;
  return o;
}

checkChromeOsDevices(api.ChromeOsDevices o) {
  buildCounterChromeOsDevices++;
  if (buildCounterChromeOsDevices < 3) {
    checkUnnamed848(o.chromeosdevices);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterChromeOsDevices--;
}

buildUnnamed849() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed849(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChromeOsMoveDevicesToOu = 0;
buildChromeOsMoveDevicesToOu() {
  var o = new api.ChromeOsMoveDevicesToOu();
  buildCounterChromeOsMoveDevicesToOu++;
  if (buildCounterChromeOsMoveDevicesToOu < 3) {
    o.deviceIds = buildUnnamed849();
  }
  buildCounterChromeOsMoveDevicesToOu--;
  return o;
}

checkChromeOsMoveDevicesToOu(api.ChromeOsMoveDevicesToOu o) {
  buildCounterChromeOsMoveDevicesToOu++;
  if (buildCounterChromeOsMoveDevicesToOu < 3) {
    checkUnnamed849(o.deviceIds);
  }
  buildCounterChromeOsMoveDevicesToOu--;
}

core.int buildCounterCustomer = 0;
buildCustomer() {
  var o = new api.Customer();
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    o.alternateEmail = "foo";
    o.customerCreationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.customerDomain = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.language = "foo";
    o.phoneNumber = "foo";
    o.postalAddress = buildCustomerPostalAddress();
  }
  buildCounterCustomer--;
  return o;
}

checkCustomer(api.Customer o) {
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    unittest.expect(o.alternateEmail, unittest.equals('foo'));
    unittest.expect(o.customerCreationTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.customerDomain, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    checkCustomerPostalAddress(o.postalAddress);
  }
  buildCounterCustomer--;
}

core.int buildCounterCustomerPostalAddress = 0;
buildCustomerPostalAddress() {
  var o = new api.CustomerPostalAddress();
  buildCounterCustomerPostalAddress++;
  if (buildCounterCustomerPostalAddress < 3) {
    o.addressLine1 = "foo";
    o.addressLine2 = "foo";
    o.addressLine3 = "foo";
    o.contactName = "foo";
    o.countryCode = "foo";
    o.locality = "foo";
    o.organizationName = "foo";
    o.postalCode = "foo";
    o.region = "foo";
  }
  buildCounterCustomerPostalAddress--;
  return o;
}

checkCustomerPostalAddress(api.CustomerPostalAddress o) {
  buildCounterCustomerPostalAddress++;
  if (buildCounterCustomerPostalAddress < 3) {
    unittest.expect(o.addressLine1, unittest.equals('foo'));
    unittest.expect(o.addressLine2, unittest.equals('foo'));
    unittest.expect(o.addressLine3, unittest.equals('foo'));
    unittest.expect(o.contactName, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organizationName, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
  }
  buildCounterCustomerPostalAddress--;
}

core.int buildCounterDomainAlias = 0;
buildDomainAlias() {
  var o = new api.DomainAlias();
  buildCounterDomainAlias++;
  if (buildCounterDomainAlias < 3) {
    o.creationTime = "foo";
    o.domainAliasName = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.parentDomainName = "foo";
    o.verified = true;
  }
  buildCounterDomainAlias--;
  return o;
}

checkDomainAlias(api.DomainAlias o) {
  buildCounterDomainAlias++;
  if (buildCounterDomainAlias < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.domainAliasName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.parentDomainName, unittest.equals('foo'));
    unittest.expect(o.verified, unittest.isTrue);
  }
  buildCounterDomainAlias--;
}

buildUnnamed850() {
  var o = new core.List<api.DomainAlias>();
  o.add(buildDomainAlias());
  o.add(buildDomainAlias());
  return o;
}

checkUnnamed850(core.List<api.DomainAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainAlias(o[0]);
  checkDomainAlias(o[1]);
}

core.int buildCounterDomainAliases = 0;
buildDomainAliases() {
  var o = new api.DomainAliases();
  buildCounterDomainAliases++;
  if (buildCounterDomainAliases < 3) {
    o.domainAliases = buildUnnamed850();
    o.etag = "foo";
    o.kind = "foo";
  }
  buildCounterDomainAliases--;
  return o;
}

checkDomainAliases(api.DomainAliases o) {
  buildCounterDomainAliases++;
  if (buildCounterDomainAliases < 3) {
    checkUnnamed850(o.domainAliases);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDomainAliases--;
}

buildUnnamed851() {
  var o = new core.List<api.DomainAlias>();
  o.add(buildDomainAlias());
  o.add(buildDomainAlias());
  return o;
}

checkUnnamed851(core.List<api.DomainAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainAlias(o[0]);
  checkDomainAlias(o[1]);
}

core.int buildCounterDomains = 0;
buildDomains() {
  var o = new api.Domains();
  buildCounterDomains++;
  if (buildCounterDomains < 3) {
    o.creationTime = "foo";
    o.domainAliases = buildUnnamed851();
    o.domainName = "foo";
    o.etag = "foo";
    o.isPrimary = true;
    o.kind = "foo";
    o.verified = true;
  }
  buildCounterDomains--;
  return o;
}

checkDomains(api.Domains o) {
  buildCounterDomains++;
  if (buildCounterDomains < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    checkUnnamed851(o.domainAliases);
    unittest.expect(o.domainName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.isPrimary, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.verified, unittest.isTrue);
  }
  buildCounterDomains--;
}

buildUnnamed852() {
  var o = new core.List<api.Domains>();
  o.add(buildDomains());
  o.add(buildDomains());
  return o;
}

checkUnnamed852(core.List<api.Domains> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomains(o[0]);
  checkDomains(o[1]);
}

core.int buildCounterDomains2 = 0;
buildDomains2() {
  var o = new api.Domains2();
  buildCounterDomains2++;
  if (buildCounterDomains2 < 3) {
    o.domains = buildUnnamed852();
    o.etag = "foo";
    o.kind = "foo";
  }
  buildCounterDomains2--;
  return o;
}

checkDomains2(api.Domains2 o) {
  buildCounterDomains2++;
  if (buildCounterDomains2 < 3) {
    checkUnnamed852(o.domains);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDomains2--;
}

buildUnnamed853() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed853(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed854() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed854(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGroup = 0;
buildGroup() {
  var o = new api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.adminCreated = true;
    o.aliases = buildUnnamed853();
    o.description = "foo";
    o.directMembersCount = "foo";
    o.email = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.nonEditableAliases = buildUnnamed854();
  }
  buildCounterGroup--;
  return o;
}

checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.adminCreated, unittest.isTrue);
    checkUnnamed853(o.aliases);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.directMembersCount, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed854(o.nonEditableAliases);
  }
  buildCounterGroup--;
}

buildUnnamed855() {
  var o = new core.List<api.Group>();
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

checkUnnamed855(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterGroups = 0;
buildGroups() {
  var o = new api.Groups();
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    o.etag = "foo";
    o.groups = buildUnnamed855();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterGroups--;
  return o;
}

checkGroups(api.Groups o) {
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed855(o.groups);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGroups--;
}

core.int buildCounterMember = 0;
buildMember() {
  var o = new api.Member();
  buildCounterMember++;
  if (buildCounterMember < 3) {
    o.email = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.role = "foo";
    o.status = "foo";
    o.type = "foo";
  }
  buildCounterMember--;
  return o;
}

checkMember(api.Member o) {
  buildCounterMember++;
  if (buildCounterMember < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMember--;
}

buildUnnamed856() {
  var o = new core.List<api.Member>();
  o.add(buildMember());
  o.add(buildMember());
  return o;
}

checkUnnamed856(core.List<api.Member> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMember(o[0]);
  checkMember(o[1]);
}

core.int buildCounterMembers = 0;
buildMembers() {
  var o = new api.Members();
  buildCounterMembers++;
  if (buildCounterMembers < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.members = buildUnnamed856();
    o.nextPageToken = "foo";
  }
  buildCounterMembers--;
  return o;
}

checkMembers(api.Members o) {
  buildCounterMembers++;
  if (buildCounterMembers < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed856(o.members);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterMembers--;
}

buildUnnamed857() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed857(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMobileDeviceApplications = 0;
buildMobileDeviceApplications() {
  var o = new api.MobileDeviceApplications();
  buildCounterMobileDeviceApplications++;
  if (buildCounterMobileDeviceApplications < 3) {
    o.displayName = "foo";
    o.packageName = "foo";
    o.permission = buildUnnamed857();
    o.versionCode = 42;
    o.versionName = "foo";
  }
  buildCounterMobileDeviceApplications--;
  return o;
}

checkMobileDeviceApplications(api.MobileDeviceApplications o) {
  buildCounterMobileDeviceApplications++;
  if (buildCounterMobileDeviceApplications < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed857(o.permission);
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterMobileDeviceApplications--;
}

buildUnnamed858() {
  var o = new core.List<api.MobileDeviceApplications>();
  o.add(buildMobileDeviceApplications());
  o.add(buildMobileDeviceApplications());
  return o;
}

checkUnnamed858(core.List<api.MobileDeviceApplications> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileDeviceApplications(o[0]);
  checkMobileDeviceApplications(o[1]);
}

buildUnnamed859() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed859(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed860() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed860(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed861() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed861(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMobileDevice = 0;
buildMobileDevice() {
  var o = new api.MobileDevice();
  buildCounterMobileDevice++;
  if (buildCounterMobileDevice < 3) {
    o.adbStatus = true;
    o.applications = buildUnnamed858();
    o.basebandVersion = "foo";
    o.bootloaderVersion = "foo";
    o.brand = "foo";
    o.buildNumber = "foo";
    o.defaultLanguage = "foo";
    o.developerOptionsStatus = true;
    o.deviceCompromisedStatus = "foo";
    o.deviceId = "foo";
    o.devicePasswordStatus = "foo";
    o.email = buildUnnamed859();
    o.encryptionStatus = "foo";
    o.etag = "foo";
    o.firstSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.hardware = "foo";
    o.hardwareId = "foo";
    o.imei = "foo";
    o.kernelVersion = "foo";
    o.kind = "foo";
    o.lastSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.managedAccountIsOnOwnerProfile = true;
    o.manufacturer = "foo";
    o.meid = "foo";
    o.model = "foo";
    o.name = buildUnnamed860();
    o.networkOperator = "foo";
    o.os = "foo";
    o.otherAccountsInfo = buildUnnamed861();
    o.privilege = "foo";
    o.releaseVersion = "foo";
    o.resourceId = "foo";
    o.securityPatchLevel = "foo";
    o.serialNumber = "foo";
    o.status = "foo";
    o.supportsWorkProfile = true;
    o.type = "foo";
    o.unknownSourcesStatus = true;
    o.userAgent = "foo";
    o.wifiMacAddress = "foo";
  }
  buildCounterMobileDevice--;
  return o;
}

checkMobileDevice(api.MobileDevice o) {
  buildCounterMobileDevice++;
  if (buildCounterMobileDevice < 3) {
    unittest.expect(o.adbStatus, unittest.isTrue);
    checkUnnamed858(o.applications);
    unittest.expect(o.basebandVersion, unittest.equals('foo'));
    unittest.expect(o.bootloaderVersion, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.buildNumber, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.developerOptionsStatus, unittest.isTrue);
    unittest.expect(o.deviceCompromisedStatus, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.devicePasswordStatus, unittest.equals('foo'));
    checkUnnamed859(o.email);
    unittest.expect(o.encryptionStatus, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.firstSync,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.hardware, unittest.equals('foo'));
    unittest.expect(o.hardwareId, unittest.equals('foo'));
    unittest.expect(o.imei, unittest.equals('foo'));
    unittest.expect(o.kernelVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastSync,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.managedAccountIsOnOwnerProfile, unittest.isTrue);
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    checkUnnamed860(o.name);
    unittest.expect(o.networkOperator, unittest.equals('foo'));
    unittest.expect(o.os, unittest.equals('foo'));
    checkUnnamed861(o.otherAccountsInfo);
    unittest.expect(o.privilege, unittest.equals('foo'));
    unittest.expect(o.releaseVersion, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.securityPatchLevel, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.supportsWorkProfile, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unknownSourcesStatus, unittest.isTrue);
    unittest.expect(o.userAgent, unittest.equals('foo'));
    unittest.expect(o.wifiMacAddress, unittest.equals('foo'));
  }
  buildCounterMobileDevice--;
}

core.int buildCounterMobileDeviceAction = 0;
buildMobileDeviceAction() {
  var o = new api.MobileDeviceAction();
  buildCounterMobileDeviceAction++;
  if (buildCounterMobileDeviceAction < 3) {
    o.action = "foo";
  }
  buildCounterMobileDeviceAction--;
  return o;
}

checkMobileDeviceAction(api.MobileDeviceAction o) {
  buildCounterMobileDeviceAction++;
  if (buildCounterMobileDeviceAction < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
  }
  buildCounterMobileDeviceAction--;
}

buildUnnamed862() {
  var o = new core.List<api.MobileDevice>();
  o.add(buildMobileDevice());
  o.add(buildMobileDevice());
  return o;
}

checkUnnamed862(core.List<api.MobileDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileDevice(o[0]);
  checkMobileDevice(o[1]);
}

core.int buildCounterMobileDevices = 0;
buildMobileDevices() {
  var o = new api.MobileDevices();
  buildCounterMobileDevices++;
  if (buildCounterMobileDevices < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.mobiledevices = buildUnnamed862();
    o.nextPageToken = "foo";
  }
  buildCounterMobileDevices--;
  return o;
}

checkMobileDevices(api.MobileDevices o) {
  buildCounterMobileDevices++;
  if (buildCounterMobileDevices < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed862(o.mobiledevices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterMobileDevices--;
}

core.int buildCounterNotification = 0;
buildNotification() {
  var o = new api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.body = "foo";
    o.etag = "foo";
    o.fromAddress = "foo";
    o.isUnread = true;
    o.kind = "foo";
    o.notificationId = "foo";
    o.sendTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.subject = "foo";
  }
  buildCounterNotification--;
  return o;
}

checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fromAddress, unittest.equals('foo'));
    unittest.expect(o.isUnread, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.notificationId, unittest.equals('foo'));
    unittest.expect(o.sendTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

buildUnnamed863() {
  var o = new core.List<api.Notification>();
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

checkUnnamed863(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterNotifications = 0;
buildNotifications() {
  var o = new api.Notifications();
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    o.etag = "foo";
    o.items = buildUnnamed863();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.unreadNotificationsCount = 42;
  }
  buildCounterNotifications--;
  return o;
}

checkNotifications(api.Notifications o) {
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed863(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.unreadNotificationsCount, unittest.equals(42));
  }
  buildCounterNotifications--;
}

core.int buildCounterOrgUnit = 0;
buildOrgUnit() {
  var o = new api.OrgUnit();
  buildCounterOrgUnit++;
  if (buildCounterOrgUnit < 3) {
    o.blockInheritance = true;
    o.description = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.orgUnitId = "foo";
    o.orgUnitPath = "foo";
    o.parentOrgUnitId = "foo";
    o.parentOrgUnitPath = "foo";
  }
  buildCounterOrgUnit--;
  return o;
}

checkOrgUnit(api.OrgUnit o) {
  buildCounterOrgUnit++;
  if (buildCounterOrgUnit < 3) {
    unittest.expect(o.blockInheritance, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    unittest.expect(o.parentOrgUnitId, unittest.equals('foo'));
    unittest.expect(o.parentOrgUnitPath, unittest.equals('foo'));
  }
  buildCounterOrgUnit--;
}

buildUnnamed864() {
  var o = new core.List<api.OrgUnit>();
  o.add(buildOrgUnit());
  o.add(buildOrgUnit());
  return o;
}

checkUnnamed864(core.List<api.OrgUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrgUnit(o[0]);
  checkOrgUnit(o[1]);
}

core.int buildCounterOrgUnits = 0;
buildOrgUnits() {
  var o = new api.OrgUnits();
  buildCounterOrgUnits++;
  if (buildCounterOrgUnits < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.organizationUnits = buildUnnamed864();
  }
  buildCounterOrgUnits--;
  return o;
}

checkOrgUnits(api.OrgUnits o) {
  buildCounterOrgUnits++;
  if (buildCounterOrgUnits < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed864(o.organizationUnits);
  }
  buildCounterOrgUnits--;
}

buildUnnamed865() {
  var o = new core.List<api.Privilege>();
  o.add(buildPrivilege());
  o.add(buildPrivilege());
  return o;
}

checkUnnamed865(core.List<api.Privilege> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivilege(o[0]);
  checkPrivilege(o[1]);
}

core.int buildCounterPrivilege = 0;
buildPrivilege() {
  var o = new api.Privilege();
  buildCounterPrivilege++;
  if (buildCounterPrivilege < 3) {
    o.childPrivileges = buildUnnamed865();
    o.etag = "foo";
    o.isOuScopable = true;
    o.kind = "foo";
    o.privilegeName = "foo";
    o.serviceId = "foo";
    o.serviceName = "foo";
  }
  buildCounterPrivilege--;
  return o;
}

checkPrivilege(api.Privilege o) {
  buildCounterPrivilege++;
  if (buildCounterPrivilege < 3) {
    checkUnnamed865(o.childPrivileges);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.isOuScopable, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.privilegeName, unittest.equals('foo'));
    unittest.expect(o.serviceId, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterPrivilege--;
}

buildUnnamed866() {
  var o = new core.List<api.Privilege>();
  o.add(buildPrivilege());
  o.add(buildPrivilege());
  return o;
}

checkUnnamed866(core.List<api.Privilege> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivilege(o[0]);
  checkPrivilege(o[1]);
}

core.int buildCounterPrivileges = 0;
buildPrivileges() {
  var o = new api.Privileges();
  buildCounterPrivileges++;
  if (buildCounterPrivileges < 3) {
    o.etag = "foo";
    o.items = buildUnnamed866();
    o.kind = "foo";
  }
  buildCounterPrivileges--;
  return o;
}

checkPrivileges(api.Privileges o) {
  buildCounterPrivileges++;
  if (buildCounterPrivileges < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed866(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPrivileges--;
}

core.int buildCounterRoleRolePrivileges = 0;
buildRoleRolePrivileges() {
  var o = new api.RoleRolePrivileges();
  buildCounterRoleRolePrivileges++;
  if (buildCounterRoleRolePrivileges < 3) {
    o.privilegeName = "foo";
    o.serviceId = "foo";
  }
  buildCounterRoleRolePrivileges--;
  return o;
}

checkRoleRolePrivileges(api.RoleRolePrivileges o) {
  buildCounterRoleRolePrivileges++;
  if (buildCounterRoleRolePrivileges < 3) {
    unittest.expect(o.privilegeName, unittest.equals('foo'));
    unittest.expect(o.serviceId, unittest.equals('foo'));
  }
  buildCounterRoleRolePrivileges--;
}

buildUnnamed867() {
  var o = new core.List<api.RoleRolePrivileges>();
  o.add(buildRoleRolePrivileges());
  o.add(buildRoleRolePrivileges());
  return o;
}

checkUnnamed867(core.List<api.RoleRolePrivileges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoleRolePrivileges(o[0]);
  checkRoleRolePrivileges(o[1]);
}

core.int buildCounterRole = 0;
buildRole() {
  var o = new api.Role();
  buildCounterRole++;
  if (buildCounterRole < 3) {
    o.etag = "foo";
    o.isSuperAdminRole = true;
    o.isSystemRole = true;
    o.kind = "foo";
    o.roleDescription = "foo";
    o.roleId = "foo";
    o.roleName = "foo";
    o.rolePrivileges = buildUnnamed867();
  }
  buildCounterRole--;
  return o;
}

checkRole(api.Role o) {
  buildCounterRole++;
  if (buildCounterRole < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.isSuperAdminRole, unittest.isTrue);
    unittest.expect(o.isSystemRole, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.roleDescription, unittest.equals('foo'));
    unittest.expect(o.roleId, unittest.equals('foo'));
    unittest.expect(o.roleName, unittest.equals('foo'));
    checkUnnamed867(o.rolePrivileges);
  }
  buildCounterRole--;
}

core.int buildCounterRoleAssignment = 0;
buildRoleAssignment() {
  var o = new api.RoleAssignment();
  buildCounterRoleAssignment++;
  if (buildCounterRoleAssignment < 3) {
    o.assignedTo = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.orgUnitId = "foo";
    o.roleAssignmentId = "foo";
    o.roleId = "foo";
    o.scopeType = "foo";
  }
  buildCounterRoleAssignment--;
  return o;
}

checkRoleAssignment(api.RoleAssignment o) {
  buildCounterRoleAssignment++;
  if (buildCounterRoleAssignment < 3) {
    unittest.expect(o.assignedTo, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
    unittest.expect(o.roleAssignmentId, unittest.equals('foo'));
    unittest.expect(o.roleId, unittest.equals('foo'));
    unittest.expect(o.scopeType, unittest.equals('foo'));
  }
  buildCounterRoleAssignment--;
}

buildUnnamed868() {
  var o = new core.List<api.RoleAssignment>();
  o.add(buildRoleAssignment());
  o.add(buildRoleAssignment());
  return o;
}

checkUnnamed868(core.List<api.RoleAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoleAssignment(o[0]);
  checkRoleAssignment(o[1]);
}

core.int buildCounterRoleAssignments = 0;
buildRoleAssignments() {
  var o = new api.RoleAssignments();
  buildCounterRoleAssignments++;
  if (buildCounterRoleAssignments < 3) {
    o.etag = "foo";
    o.items = buildUnnamed868();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterRoleAssignments--;
  return o;
}

checkRoleAssignments(api.RoleAssignments o) {
  buildCounterRoleAssignments++;
  if (buildCounterRoleAssignments < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed868(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterRoleAssignments--;
}

buildUnnamed869() {
  var o = new core.List<api.Role>();
  o.add(buildRole());
  o.add(buildRole());
  return o;
}

checkUnnamed869(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0]);
  checkRole(o[1]);
}

core.int buildCounterRoles = 0;
buildRoles() {
  var o = new api.Roles();
  buildCounterRoles++;
  if (buildCounterRoles < 3) {
    o.etag = "foo";
    o.items = buildUnnamed869();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterRoles--;
  return o;
}

checkRoles(api.Roles o) {
  buildCounterRoles++;
  if (buildCounterRoles < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed869(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterRoles--;
}

buildUnnamed870() {
  var o = new core.List<api.SchemaFieldSpec>();
  o.add(buildSchemaFieldSpec());
  o.add(buildSchemaFieldSpec());
  return o;
}

checkUnnamed870(core.List<api.SchemaFieldSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaFieldSpec(o[0]);
  checkSchemaFieldSpec(o[1]);
}

core.int buildCounterSchema = 0;
buildSchema() {
  var o = new api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.etag = "foo";
    o.fields = buildUnnamed870();
    o.kind = "foo";
    o.schemaId = "foo";
    o.schemaName = "foo";
  }
  buildCounterSchema--;
  return o;
}

checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed870(o.fields);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.schemaId, unittest.equals('foo'));
    unittest.expect(o.schemaName, unittest.equals('foo'));
  }
  buildCounterSchema--;
}

core.int buildCounterSchemaFieldSpecNumericIndexingSpec = 0;
buildSchemaFieldSpecNumericIndexingSpec() {
  var o = new api.SchemaFieldSpecNumericIndexingSpec();
  buildCounterSchemaFieldSpecNumericIndexingSpec++;
  if (buildCounterSchemaFieldSpecNumericIndexingSpec < 3) {
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterSchemaFieldSpecNumericIndexingSpec--;
  return o;
}

checkSchemaFieldSpecNumericIndexingSpec(
    api.SchemaFieldSpecNumericIndexingSpec o) {
  buildCounterSchemaFieldSpecNumericIndexingSpec++;
  if (buildCounterSchemaFieldSpecNumericIndexingSpec < 3) {
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterSchemaFieldSpecNumericIndexingSpec--;
}

core.int buildCounterSchemaFieldSpec = 0;
buildSchemaFieldSpec() {
  var o = new api.SchemaFieldSpec();
  buildCounterSchemaFieldSpec++;
  if (buildCounterSchemaFieldSpec < 3) {
    o.etag = "foo";
    o.fieldId = "foo";
    o.fieldName = "foo";
    o.fieldType = "foo";
    o.indexed = true;
    o.kind = "foo";
    o.multiValued = true;
    o.numericIndexingSpec = buildSchemaFieldSpecNumericIndexingSpec();
    o.readAccessType = "foo";
  }
  buildCounterSchemaFieldSpec--;
  return o;
}

checkSchemaFieldSpec(api.SchemaFieldSpec o) {
  buildCounterSchemaFieldSpec++;
  if (buildCounterSchemaFieldSpec < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fieldId, unittest.equals('foo'));
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.fieldType, unittest.equals('foo'));
    unittest.expect(o.indexed, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.multiValued, unittest.isTrue);
    checkSchemaFieldSpecNumericIndexingSpec(o.numericIndexingSpec);
    unittest.expect(o.readAccessType, unittest.equals('foo'));
  }
  buildCounterSchemaFieldSpec--;
}

buildUnnamed871() {
  var o = new core.List<api.Schema>();
  o.add(buildSchema());
  o.add(buildSchema());
  return o;
}

checkUnnamed871(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.int buildCounterSchemas = 0;
buildSchemas() {
  var o = new api.Schemas();
  buildCounterSchemas++;
  if (buildCounterSchemas < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.schemas = buildUnnamed871();
  }
  buildCounterSchemas--;
  return o;
}

checkSchemas(api.Schemas o) {
  buildCounterSchemas++;
  if (buildCounterSchemas < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed871(o.schemas);
  }
  buildCounterSchemas--;
}

buildUnnamed872() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed872(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterToken = 0;
buildToken() {
  var o = new api.Token();
  buildCounterToken++;
  if (buildCounterToken < 3) {
    o.anonymous = true;
    o.clientId = "foo";
    o.displayText = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.nativeApp = true;
    o.scopes = buildUnnamed872();
    o.userKey = "foo";
  }
  buildCounterToken--;
  return o;
}

checkToken(api.Token o) {
  buildCounterToken++;
  if (buildCounterToken < 3) {
    unittest.expect(o.anonymous, unittest.isTrue);
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nativeApp, unittest.isTrue);
    checkUnnamed872(o.scopes);
    unittest.expect(o.userKey, unittest.equals('foo'));
  }
  buildCounterToken--;
}

buildUnnamed873() {
  var o = new core.List<api.Token>();
  o.add(buildToken());
  o.add(buildToken());
  return o;
}

checkUnnamed873(core.List<api.Token> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToken(o[0]);
  checkToken(o[1]);
}

core.int buildCounterTokens = 0;
buildTokens() {
  var o = new api.Tokens();
  buildCounterTokens++;
  if (buildCounterTokens < 3) {
    o.etag = "foo";
    o.items = buildUnnamed873();
    o.kind = "foo";
  }
  buildCounterTokens--;
  return o;
}

checkTokens(api.Tokens o) {
  buildCounterTokens++;
  if (buildCounterTokens < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed873(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTokens--;
}

core.int buildCounterTrustedAppId = 0;
buildTrustedAppId() {
  var o = new api.TrustedAppId();
  buildCounterTrustedAppId++;
  if (buildCounterTrustedAppId < 3) {
    o.androidPackageName = "foo";
    o.certificateHashSHA1 = "foo";
    o.certificateHashSHA256 = "foo";
    o.etag = "foo";
    o.kind = "foo";
  }
  buildCounterTrustedAppId--;
  return o;
}

checkTrustedAppId(api.TrustedAppId o) {
  buildCounterTrustedAppId++;
  if (buildCounterTrustedAppId < 3) {
    unittest.expect(o.androidPackageName, unittest.equals('foo'));
    unittest.expect(o.certificateHashSHA1, unittest.equals('foo'));
    unittest.expect(o.certificateHashSHA256, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTrustedAppId--;
}

buildUnnamed874() {
  var o = new core.List<api.TrustedAppId>();
  o.add(buildTrustedAppId());
  o.add(buildTrustedAppId());
  return o;
}

checkUnnamed874(core.List<api.TrustedAppId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrustedAppId(o[0]);
  checkTrustedAppId(o[1]);
}

core.int buildCounterTrustedApps = 0;
buildTrustedApps() {
  var o = new api.TrustedApps();
  buildCounterTrustedApps++;
  if (buildCounterTrustedApps < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.trustedApps = buildUnnamed874();
  }
  buildCounterTrustedApps--;
  return o;
}

checkTrustedApps(api.TrustedApps o) {
  buildCounterTrustedApps++;
  if (buildCounterTrustedApps < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed874(o.trustedApps);
  }
  buildCounterTrustedApps--;
}

buildUnnamed875() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed875(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed876() {
  var o = new core.Map<core.String, api.UserCustomProperties>();
  o["x"] = buildUserCustomProperties();
  o["y"] = buildUserCustomProperties();
  return o;
}

checkUnnamed876(core.Map<core.String, api.UserCustomProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserCustomProperties(o["x"]);
  checkUserCustomProperties(o["y"]);
}

buildUnnamed877() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed877(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.addresses = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.agreedToTerms = true;
    o.aliases = buildUnnamed875();
    o.changePasswordAtNextLogin = true;
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.customSchemas = buildUnnamed876();
    o.customerId = "foo";
    o.deletionTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.emails = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.etag = "foo";
    o.externalIds = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.gender = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.hashFunction = "foo";
    o.id = "foo";
    o.ims = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.includeInGlobalAddressList = true;
    o.ipWhitelisted = true;
    o.isAdmin = true;
    o.isDelegatedAdmin = true;
    o.isEnforcedIn2Sv = true;
    o.isEnrolledIn2Sv = true;
    o.isMailboxSetup = true;
    o.keywords = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.kind = "foo";
    o.languages = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.lastLoginTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.locations = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.name = buildUserName();
    o.nonEditableAliases = buildUnnamed877();
    o.notes = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.orgUnitPath = "foo";
    o.organizations = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.password = "foo";
    o.phones = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.posixAccounts = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.primaryEmail = "foo";
    o.relations = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.sshPublicKeys = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.suspended = true;
    o.suspensionReason = "foo";
    o.thumbnailPhotoEtag = "foo";
    o.thumbnailPhotoUrl = "foo";
    o.websites = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    var casted3 = (o.addresses) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted3["bool"], unittest.equals(true));
    unittest.expect(casted3["string"], unittest.equals('foo'));
    unittest.expect(o.agreedToTerms, unittest.isTrue);
    checkUnnamed875(o.aliases);
    unittest.expect(o.changePasswordAtNextLogin, unittest.isTrue);
    unittest.expect(o.creationTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed876(o.customSchemas);
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.deletionTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    var casted4 = (o.emails) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted4["bool"], unittest.equals(true));
    unittest.expect(casted4["string"], unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    var casted5 = (o.externalIds) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted5["bool"], unittest.equals(true));
    unittest.expect(casted5["string"], unittest.equals('foo'));
    var casted6 = (o.gender) as core.Map;
    unittest.expect(casted6, unittest.hasLength(3));
    unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted6["bool"], unittest.equals(true));
    unittest.expect(casted6["string"], unittest.equals('foo'));
    unittest.expect(o.hashFunction, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    var casted7 = (o.ims) as core.Map;
    unittest.expect(casted7, unittest.hasLength(3));
    unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted7["bool"], unittest.equals(true));
    unittest.expect(casted7["string"], unittest.equals('foo'));
    unittest.expect(o.includeInGlobalAddressList, unittest.isTrue);
    unittest.expect(o.ipWhitelisted, unittest.isTrue);
    unittest.expect(o.isAdmin, unittest.isTrue);
    unittest.expect(o.isDelegatedAdmin, unittest.isTrue);
    unittest.expect(o.isEnforcedIn2Sv, unittest.isTrue);
    unittest.expect(o.isEnrolledIn2Sv, unittest.isTrue);
    unittest.expect(o.isMailboxSetup, unittest.isTrue);
    var casted8 = (o.keywords) as core.Map;
    unittest.expect(casted8, unittest.hasLength(3));
    unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted8["bool"], unittest.equals(true));
    unittest.expect(casted8["string"], unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    var casted9 = (o.languages) as core.Map;
    unittest.expect(casted9, unittest.hasLength(3));
    unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted9["bool"], unittest.equals(true));
    unittest.expect(casted9["string"], unittest.equals('foo'));
    unittest.expect(o.lastLoginTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    var casted10 = (o.locations) as core.Map;
    unittest.expect(casted10, unittest.hasLength(3));
    unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted10["bool"], unittest.equals(true));
    unittest.expect(casted10["string"], unittest.equals('foo'));
    checkUserName(o.name);
    checkUnnamed877(o.nonEditableAliases);
    var casted11 = (o.notes) as core.Map;
    unittest.expect(casted11, unittest.hasLength(3));
    unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted11["bool"], unittest.equals(true));
    unittest.expect(casted11["string"], unittest.equals('foo'));
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    var casted12 = (o.organizations) as core.Map;
    unittest.expect(casted12, unittest.hasLength(3));
    unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted12["bool"], unittest.equals(true));
    unittest.expect(casted12["string"], unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    var casted13 = (o.phones) as core.Map;
    unittest.expect(casted13, unittest.hasLength(3));
    unittest.expect(casted13["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted13["bool"], unittest.equals(true));
    unittest.expect(casted13["string"], unittest.equals('foo'));
    var casted14 = (o.posixAccounts) as core.Map;
    unittest.expect(casted14, unittest.hasLength(3));
    unittest.expect(casted14["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted14["bool"], unittest.equals(true));
    unittest.expect(casted14["string"], unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
    var casted15 = (o.relations) as core.Map;
    unittest.expect(casted15, unittest.hasLength(3));
    unittest.expect(casted15["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted15["bool"], unittest.equals(true));
    unittest.expect(casted15["string"], unittest.equals('foo'));
    var casted16 = (o.sshPublicKeys) as core.Map;
    unittest.expect(casted16, unittest.hasLength(3));
    unittest.expect(casted16["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted16["bool"], unittest.equals(true));
    unittest.expect(casted16["string"], unittest.equals('foo'));
    unittest.expect(o.suspended, unittest.isTrue);
    unittest.expect(o.suspensionReason, unittest.equals('foo'));
    unittest.expect(o.thumbnailPhotoEtag, unittest.equals('foo'));
    unittest.expect(o.thumbnailPhotoUrl, unittest.equals('foo'));
    var casted17 = (o.websites) as core.Map;
    unittest.expect(casted17, unittest.hasLength(3));
    unittest.expect(casted17["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted17["bool"], unittest.equals(true));
    unittest.expect(casted17["string"], unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterUserAbout = 0;
buildUserAbout() {
  var o = new api.UserAbout();
  buildCounterUserAbout++;
  if (buildCounterUserAbout < 3) {
    o.contentType = "foo";
    o.value = "foo";
  }
  buildCounterUserAbout--;
  return o;
}

checkUserAbout(api.UserAbout o) {
  buildCounterUserAbout++;
  if (buildCounterUserAbout < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserAbout--;
}

core.int buildCounterUserAddress = 0;
buildUserAddress() {
  var o = new api.UserAddress();
  buildCounterUserAddress++;
  if (buildCounterUserAddress < 3) {
    o.country = "foo";
    o.countryCode = "foo";
    o.customType = "foo";
    o.extendedAddress = "foo";
    o.formatted = "foo";
    o.locality = "foo";
    o.poBox = "foo";
    o.postalCode = "foo";
    o.primary = true;
    o.region = "foo";
    o.sourceIsStructured = true;
    o.streetAddress = "foo";
    o.type = "foo";
  }
  buildCounterUserAddress--;
  return o;
}

checkUserAddress(api.UserAddress o) {
  buildCounterUserAddress++;
  if (buildCounterUserAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.extendedAddress, unittest.equals('foo'));
    unittest.expect(o.formatted, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.poBox, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.sourceIsStructured, unittest.isTrue);
    unittest.expect(o.streetAddress, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserAddress--;
}

buildUserCustomProperties() {
  var o = new api.UserCustomProperties();
  o["a"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["b"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUserCustomProperties(api.UserCustomProperties o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted18 = (o["a"]) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted18["bool"], unittest.equals(true));
  unittest.expect(casted18["string"], unittest.equals('foo'));
  var casted19 = (o["b"]) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted19["bool"], unittest.equals(true));
  unittest.expect(casted19["string"], unittest.equals('foo'));
}

core.int buildCounterUserEmail = 0;
buildUserEmail() {
  var o = new api.UserEmail();
  buildCounterUserEmail++;
  if (buildCounterUserEmail < 3) {
    o.address = "foo";
    o.customType = "foo";
    o.primary = true;
    o.type = "foo";
  }
  buildCounterUserEmail--;
  return o;
}

checkUserEmail(api.UserEmail o) {
  buildCounterUserEmail++;
  if (buildCounterUserEmail < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserEmail--;
}

core.int buildCounterUserExternalId = 0;
buildUserExternalId() {
  var o = new api.UserExternalId();
  buildCounterUserExternalId++;
  if (buildCounterUserExternalId < 3) {
    o.customType = "foo";
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserExternalId--;
  return o;
}

checkUserExternalId(api.UserExternalId o) {
  buildCounterUserExternalId++;
  if (buildCounterUserExternalId < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserExternalId--;
}

core.int buildCounterUserGender = 0;
buildUserGender() {
  var o = new api.UserGender();
  buildCounterUserGender++;
  if (buildCounterUserGender < 3) {
    o.addressMeAs = "foo";
    o.customGender = "foo";
    o.type = "foo";
  }
  buildCounterUserGender--;
  return o;
}

checkUserGender(api.UserGender o) {
  buildCounterUserGender++;
  if (buildCounterUserGender < 3) {
    unittest.expect(o.addressMeAs, unittest.equals('foo'));
    unittest.expect(o.customGender, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserGender--;
}

core.int buildCounterUserIm = 0;
buildUserIm() {
  var o = new api.UserIm();
  buildCounterUserIm++;
  if (buildCounterUserIm < 3) {
    o.customProtocol = "foo";
    o.customType = "foo";
    o.im = "foo";
    o.primary = true;
    o.protocol = "foo";
    o.type = "foo";
  }
  buildCounterUserIm--;
  return o;
}

checkUserIm(api.UserIm o) {
  buildCounterUserIm++;
  if (buildCounterUserIm < 3) {
    unittest.expect(o.customProtocol, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.im, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserIm--;
}

core.int buildCounterUserKeyword = 0;
buildUserKeyword() {
  var o = new api.UserKeyword();
  buildCounterUserKeyword++;
  if (buildCounterUserKeyword < 3) {
    o.customType = "foo";
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserKeyword--;
  return o;
}

checkUserKeyword(api.UserKeyword o) {
  buildCounterUserKeyword++;
  if (buildCounterUserKeyword < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserKeyword--;
}

core.int buildCounterUserLanguage = 0;
buildUserLanguage() {
  var o = new api.UserLanguage();
  buildCounterUserLanguage++;
  if (buildCounterUserLanguage < 3) {
    o.customLanguage = "foo";
    o.languageCode = "foo";
  }
  buildCounterUserLanguage--;
  return o;
}

checkUserLanguage(api.UserLanguage o) {
  buildCounterUserLanguage++;
  if (buildCounterUserLanguage < 3) {
    unittest.expect(o.customLanguage, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterUserLanguage--;
}

core.int buildCounterUserLocation = 0;
buildUserLocation() {
  var o = new api.UserLocation();
  buildCounterUserLocation++;
  if (buildCounterUserLocation < 3) {
    o.area = "foo";
    o.buildingId = "foo";
    o.customType = "foo";
    o.deskCode = "foo";
    o.floorName = "foo";
    o.floorSection = "foo";
    o.type = "foo";
  }
  buildCounterUserLocation--;
  return o;
}

checkUserLocation(api.UserLocation o) {
  buildCounterUserLocation++;
  if (buildCounterUserLocation < 3) {
    unittest.expect(o.area, unittest.equals('foo'));
    unittest.expect(o.buildingId, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.deskCode, unittest.equals('foo'));
    unittest.expect(o.floorName, unittest.equals('foo'));
    unittest.expect(o.floorSection, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserLocation--;
}

core.int buildCounterUserMakeAdmin = 0;
buildUserMakeAdmin() {
  var o = new api.UserMakeAdmin();
  buildCounterUserMakeAdmin++;
  if (buildCounterUserMakeAdmin < 3) {
    o.status = true;
  }
  buildCounterUserMakeAdmin--;
  return o;
}

checkUserMakeAdmin(api.UserMakeAdmin o) {
  buildCounterUserMakeAdmin++;
  if (buildCounterUserMakeAdmin < 3) {
    unittest.expect(o.status, unittest.isTrue);
  }
  buildCounterUserMakeAdmin--;
}

core.int buildCounterUserName = 0;
buildUserName() {
  var o = new api.UserName();
  buildCounterUserName++;
  if (buildCounterUserName < 3) {
    o.familyName = "foo";
    o.fullName = "foo";
    o.givenName = "foo";
  }
  buildCounterUserName--;
  return o;
}

checkUserName(api.UserName o) {
  buildCounterUserName++;
  if (buildCounterUserName < 3) {
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
  }
  buildCounterUserName--;
}

core.int buildCounterUserOrganization = 0;
buildUserOrganization() {
  var o = new api.UserOrganization();
  buildCounterUserOrganization++;
  if (buildCounterUserOrganization < 3) {
    o.costCenter = "foo";
    o.customType = "foo";
    o.department = "foo";
    o.description = "foo";
    o.domain = "foo";
    o.fullTimeEquivalent = 42;
    o.location = "foo";
    o.name = "foo";
    o.primary = true;
    o.symbol = "foo";
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterUserOrganization--;
  return o;
}

checkUserOrganization(api.UserOrganization o) {
  buildCounterUserOrganization++;
  if (buildCounterUserOrganization < 3) {
    unittest.expect(o.costCenter, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.fullTimeEquivalent, unittest.equals(42));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.symbol, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserOrganization--;
}

core.int buildCounterUserPhone = 0;
buildUserPhone() {
  var o = new api.UserPhone();
  buildCounterUserPhone++;
  if (buildCounterUserPhone < 3) {
    o.customType = "foo";
    o.primary = true;
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserPhone--;
  return o;
}

checkUserPhone(api.UserPhone o) {
  buildCounterUserPhone++;
  if (buildCounterUserPhone < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserPhone--;
}

core.int buildCounterUserPhoto = 0;
buildUserPhoto() {
  var o = new api.UserPhoto();
  buildCounterUserPhoto++;
  if (buildCounterUserPhoto < 3) {
    o.etag = "foo";
    o.height = 42;
    o.id = "foo";
    o.kind = "foo";
    o.mimeType = "foo";
    o.photoData = "foo";
    o.primaryEmail = "foo";
    o.width = 42;
  }
  buildCounterUserPhoto--;
  return o;
}

checkUserPhoto(api.UserPhoto o) {
  buildCounterUserPhoto++;
  if (buildCounterUserPhoto < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.photoData, unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterUserPhoto--;
}

core.int buildCounterUserPosixAccount = 0;
buildUserPosixAccount() {
  var o = new api.UserPosixAccount();
  buildCounterUserPosixAccount++;
  if (buildCounterUserPosixAccount < 3) {
    o.gecos = "foo";
    o.gid = "foo";
    o.homeDirectory = "foo";
    o.primary = true;
    o.shell = "foo";
    o.systemId = "foo";
    o.uid = "foo";
    o.username = "foo";
  }
  buildCounterUserPosixAccount--;
  return o;
}

checkUserPosixAccount(api.UserPosixAccount o) {
  buildCounterUserPosixAccount++;
  if (buildCounterUserPosixAccount < 3) {
    unittest.expect(o.gecos, unittest.equals('foo'));
    unittest.expect(o.gid, unittest.equals('foo'));
    unittest.expect(o.homeDirectory, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.shell, unittest.equals('foo'));
    unittest.expect(o.systemId, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterUserPosixAccount--;
}

core.int buildCounterUserRelation = 0;
buildUserRelation() {
  var o = new api.UserRelation();
  buildCounterUserRelation++;
  if (buildCounterUserRelation < 3) {
    o.customType = "foo";
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserRelation--;
  return o;
}

checkUserRelation(api.UserRelation o) {
  buildCounterUserRelation++;
  if (buildCounterUserRelation < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserRelation--;
}

core.int buildCounterUserSshPublicKey = 0;
buildUserSshPublicKey() {
  var o = new api.UserSshPublicKey();
  buildCounterUserSshPublicKey++;
  if (buildCounterUserSshPublicKey < 3) {
    o.expirationTimeUsec = "foo";
    o.fingerprint = "foo";
    o.key = "foo";
  }
  buildCounterUserSshPublicKey--;
  return o;
}

checkUserSshPublicKey(api.UserSshPublicKey o) {
  buildCounterUserSshPublicKey++;
  if (buildCounterUserSshPublicKey < 3) {
    unittest.expect(o.expirationTimeUsec, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterUserSshPublicKey--;
}

core.int buildCounterUserUndelete = 0;
buildUserUndelete() {
  var o = new api.UserUndelete();
  buildCounterUserUndelete++;
  if (buildCounterUserUndelete < 3) {
    o.orgUnitPath = "foo";
  }
  buildCounterUserUndelete--;
  return o;
}

checkUserUndelete(api.UserUndelete o) {
  buildCounterUserUndelete++;
  if (buildCounterUserUndelete < 3) {
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
  }
  buildCounterUserUndelete--;
}

core.int buildCounterUserWebsite = 0;
buildUserWebsite() {
  var o = new api.UserWebsite();
  buildCounterUserWebsite++;
  if (buildCounterUserWebsite < 3) {
    o.customType = "foo";
    o.primary = true;
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserWebsite--;
  return o;
}

checkUserWebsite(api.UserWebsite o) {
  buildCounterUserWebsite++;
  if (buildCounterUserWebsite < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserWebsite--;
}

buildUnnamed878() {
  var o = new core.List<api.User>();
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

checkUnnamed878(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterUsers = 0;
buildUsers() {
  var o = new api.Users();
  buildCounterUsers++;
  if (buildCounterUsers < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.triggerEvent = "foo";
    o.users = buildUnnamed878();
  }
  buildCounterUsers--;
  return o;
}

checkUsers(api.Users o) {
  buildCounterUsers++;
  if (buildCounterUsers < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.triggerEvent, unittest.equals('foo'));
    checkUnnamed878(o.users);
  }
  buildCounterUsers--;
}

core.int buildCounterVerificationCode = 0;
buildVerificationCode() {
  var o = new api.VerificationCode();
  buildCounterVerificationCode++;
  if (buildCounterVerificationCode < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.userId = "foo";
    o.verificationCode = "foo";
  }
  buildCounterVerificationCode--;
  return o;
}

checkVerificationCode(api.VerificationCode o) {
  buildCounterVerificationCode++;
  if (buildCounterVerificationCode < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
    unittest.expect(o.verificationCode, unittest.equals('foo'));
  }
  buildCounterVerificationCode--;
}

buildUnnamed879() {
  var o = new core.List<api.VerificationCode>();
  o.add(buildVerificationCode());
  o.add(buildVerificationCode());
  return o;
}

checkUnnamed879(core.List<api.VerificationCode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVerificationCode(o[0]);
  checkVerificationCode(o[1]);
}

core.int buildCounterVerificationCodes = 0;
buildVerificationCodes() {
  var o = new api.VerificationCodes();
  buildCounterVerificationCodes++;
  if (buildCounterVerificationCodes < 3) {
    o.etag = "foo";
    o.items = buildUnnamed879();
    o.kind = "foo";
  }
  buildCounterVerificationCodes--;
  return o;
}

checkVerificationCodes(api.VerificationCodes o) {
  buildCounterVerificationCodes++;
  if (buildCounterVerificationCodes < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed879(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterVerificationCodes--;
}

buildUnnamed880() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed880(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed881() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed881(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed882() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed882(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed883() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed883(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Alias", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlias();
      var od = new api.Alias.fromJson(o.toJson());
      checkAlias(od);
    });
  });

  unittest.group("obj-schema-Aliases", () {
    unittest.test("to-json--from-json", () {
      var o = buildAliases();
      var od = new api.Aliases.fromJson(o.toJson());
      checkAliases(od);
    });
  });

  unittest.group("obj-schema-AppAccessCollections", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppAccessCollections();
      var od = new api.AppAccessCollections.fromJson(o.toJson());
      checkAppAccessCollections(od);
    });
  });

  unittest.group("obj-schema-Asp", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsp();
      var od = new api.Asp.fromJson(o.toJson());
      checkAsp(od);
    });
  });

  unittest.group("obj-schema-Asps", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsps();
      var od = new api.Asps.fromJson(o.toJson());
      checkAsps(od);
    });
  });

  unittest.group("obj-schema-CalendarResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildCalendarResource();
      var od = new api.CalendarResource.fromJson(o.toJson());
      checkCalendarResource(od);
    });
  });

  unittest.group("obj-schema-CalendarResources", () {
    unittest.test("to-json--from-json", () {
      var o = buildCalendarResources();
      var od = new api.CalendarResources.fromJson(o.toJson());
      checkCalendarResources(od);
    });
  });

  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group("obj-schema-ChromeOsDeviceActiveTimeRanges", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDeviceActiveTimeRanges();
      var od = new api.ChromeOsDeviceActiveTimeRanges.fromJson(o.toJson());
      checkChromeOsDeviceActiveTimeRanges(od);
    });
  });

  unittest.group("obj-schema-ChromeOsDeviceRecentUsers", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDeviceRecentUsers();
      var od = new api.ChromeOsDeviceRecentUsers.fromJson(o.toJson());
      checkChromeOsDeviceRecentUsers(od);
    });
  });

  unittest.group("obj-schema-ChromeOsDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDevice();
      var od = new api.ChromeOsDevice.fromJson(o.toJson());
      checkChromeOsDevice(od);
    });
  });

  unittest.group("obj-schema-ChromeOsDeviceAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDeviceAction();
      var od = new api.ChromeOsDeviceAction.fromJson(o.toJson());
      checkChromeOsDeviceAction(od);
    });
  });

  unittest.group("obj-schema-ChromeOsDevices", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDevices();
      var od = new api.ChromeOsDevices.fromJson(o.toJson());
      checkChromeOsDevices(od);
    });
  });

  unittest.group("obj-schema-ChromeOsMoveDevicesToOu", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsMoveDevicesToOu();
      var od = new api.ChromeOsMoveDevicesToOu.fromJson(o.toJson());
      checkChromeOsMoveDevicesToOu(od);
    });
  });

  unittest.group("obj-schema-Customer", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomer();
      var od = new api.Customer.fromJson(o.toJson());
      checkCustomer(od);
    });
  });

  unittest.group("obj-schema-CustomerPostalAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerPostalAddress();
      var od = new api.CustomerPostalAddress.fromJson(o.toJson());
      checkCustomerPostalAddress(od);
    });
  });

  unittest.group("obj-schema-DomainAlias", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainAlias();
      var od = new api.DomainAlias.fromJson(o.toJson());
      checkDomainAlias(od);
    });
  });

  unittest.group("obj-schema-DomainAliases", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainAliases();
      var od = new api.DomainAliases.fromJson(o.toJson());
      checkDomainAliases(od);
    });
  });

  unittest.group("obj-schema-Domains", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomains();
      var od = new api.Domains.fromJson(o.toJson());
      checkDomains(od);
    });
  });

  unittest.group("obj-schema-Domains2", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomains2();
      var od = new api.Domains2.fromJson(o.toJson());
      checkDomains2(od);
    });
  });

  unittest.group("obj-schema-Group", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroup();
      var od = new api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });

  unittest.group("obj-schema-Groups", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroups();
      var od = new api.Groups.fromJson(o.toJson());
      checkGroups(od);
    });
  });

  unittest.group("obj-schema-Member", () {
    unittest.test("to-json--from-json", () {
      var o = buildMember();
      var od = new api.Member.fromJson(o.toJson());
      checkMember(od);
    });
  });

  unittest.group("obj-schema-Members", () {
    unittest.test("to-json--from-json", () {
      var o = buildMembers();
      var od = new api.Members.fromJson(o.toJson());
      checkMembers(od);
    });
  });

  unittest.group("obj-schema-MobileDeviceApplications", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileDeviceApplications();
      var od = new api.MobileDeviceApplications.fromJson(o.toJson());
      checkMobileDeviceApplications(od);
    });
  });

  unittest.group("obj-schema-MobileDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileDevice();
      var od = new api.MobileDevice.fromJson(o.toJson());
      checkMobileDevice(od);
    });
  });

  unittest.group("obj-schema-MobileDeviceAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileDeviceAction();
      var od = new api.MobileDeviceAction.fromJson(o.toJson());
      checkMobileDeviceAction(od);
    });
  });

  unittest.group("obj-schema-MobileDevices", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileDevices();
      var od = new api.MobileDevices.fromJson(o.toJson());
      checkMobileDevices(od);
    });
  });

  unittest.group("obj-schema-Notification", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotification();
      var od = new api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });

  unittest.group("obj-schema-Notifications", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotifications();
      var od = new api.Notifications.fromJson(o.toJson());
      checkNotifications(od);
    });
  });

  unittest.group("obj-schema-OrgUnit", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrgUnit();
      var od = new api.OrgUnit.fromJson(o.toJson());
      checkOrgUnit(od);
    });
  });

  unittest.group("obj-schema-OrgUnits", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrgUnits();
      var od = new api.OrgUnits.fromJson(o.toJson());
      checkOrgUnits(od);
    });
  });

  unittest.group("obj-schema-Privilege", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrivilege();
      var od = new api.Privilege.fromJson(o.toJson());
      checkPrivilege(od);
    });
  });

  unittest.group("obj-schema-Privileges", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrivileges();
      var od = new api.Privileges.fromJson(o.toJson());
      checkPrivileges(od);
    });
  });

  unittest.group("obj-schema-RoleRolePrivileges", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoleRolePrivileges();
      var od = new api.RoleRolePrivileges.fromJson(o.toJson());
      checkRoleRolePrivileges(od);
    });
  });

  unittest.group("obj-schema-Role", () {
    unittest.test("to-json--from-json", () {
      var o = buildRole();
      var od = new api.Role.fromJson(o.toJson());
      checkRole(od);
    });
  });

  unittest.group("obj-schema-RoleAssignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoleAssignment();
      var od = new api.RoleAssignment.fromJson(o.toJson());
      checkRoleAssignment(od);
    });
  });

  unittest.group("obj-schema-RoleAssignments", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoleAssignments();
      var od = new api.RoleAssignments.fromJson(o.toJson());
      checkRoleAssignments(od);
    });
  });

  unittest.group("obj-schema-Roles", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoles();
      var od = new api.Roles.fromJson(o.toJson());
      checkRoles(od);
    });
  });

  unittest.group("obj-schema-Schema", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchema();
      var od = new api.Schema.fromJson(o.toJson());
      checkSchema(od);
    });
  });

  unittest.group("obj-schema-SchemaFieldSpecNumericIndexingSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchemaFieldSpecNumericIndexingSpec();
      var od = new api.SchemaFieldSpecNumericIndexingSpec.fromJson(o.toJson());
      checkSchemaFieldSpecNumericIndexingSpec(od);
    });
  });

  unittest.group("obj-schema-SchemaFieldSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchemaFieldSpec();
      var od = new api.SchemaFieldSpec.fromJson(o.toJson());
      checkSchemaFieldSpec(od);
    });
  });

  unittest.group("obj-schema-Schemas", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchemas();
      var od = new api.Schemas.fromJson(o.toJson());
      checkSchemas(od);
    });
  });

  unittest.group("obj-schema-Token", () {
    unittest.test("to-json--from-json", () {
      var o = buildToken();
      var od = new api.Token.fromJson(o.toJson());
      checkToken(od);
    });
  });

  unittest.group("obj-schema-Tokens", () {
    unittest.test("to-json--from-json", () {
      var o = buildTokens();
      var od = new api.Tokens.fromJson(o.toJson());
      checkTokens(od);
    });
  });

  unittest.group("obj-schema-TrustedAppId", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrustedAppId();
      var od = new api.TrustedAppId.fromJson(o.toJson());
      checkTrustedAppId(od);
    });
  });

  unittest.group("obj-schema-TrustedApps", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrustedApps();
      var od = new api.TrustedApps.fromJson(o.toJson());
      checkTrustedApps(od);
    });
  });

  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group("obj-schema-UserAbout", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserAbout();
      var od = new api.UserAbout.fromJson(o.toJson());
      checkUserAbout(od);
    });
  });

  unittest.group("obj-schema-UserAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserAddress();
      var od = new api.UserAddress.fromJson(o.toJson());
      checkUserAddress(od);
    });
  });

  unittest.group("obj-schema-UserCustomProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserCustomProperties();
      var od = new api.UserCustomProperties.fromJson(o.toJson());
      checkUserCustomProperties(od);
    });
  });

  unittest.group("obj-schema-UserEmail", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserEmail();
      var od = new api.UserEmail.fromJson(o.toJson());
      checkUserEmail(od);
    });
  });

  unittest.group("obj-schema-UserExternalId", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserExternalId();
      var od = new api.UserExternalId.fromJson(o.toJson());
      checkUserExternalId(od);
    });
  });

  unittest.group("obj-schema-UserGender", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserGender();
      var od = new api.UserGender.fromJson(o.toJson());
      checkUserGender(od);
    });
  });

  unittest.group("obj-schema-UserIm", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserIm();
      var od = new api.UserIm.fromJson(o.toJson());
      checkUserIm(od);
    });
  });

  unittest.group("obj-schema-UserKeyword", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserKeyword();
      var od = new api.UserKeyword.fromJson(o.toJson());
      checkUserKeyword(od);
    });
  });

  unittest.group("obj-schema-UserLanguage", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserLanguage();
      var od = new api.UserLanguage.fromJson(o.toJson());
      checkUserLanguage(od);
    });
  });

  unittest.group("obj-schema-UserLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserLocation();
      var od = new api.UserLocation.fromJson(o.toJson());
      checkUserLocation(od);
    });
  });

  unittest.group("obj-schema-UserMakeAdmin", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserMakeAdmin();
      var od = new api.UserMakeAdmin.fromJson(o.toJson());
      checkUserMakeAdmin(od);
    });
  });

  unittest.group("obj-schema-UserName", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserName();
      var od = new api.UserName.fromJson(o.toJson());
      checkUserName(od);
    });
  });

  unittest.group("obj-schema-UserOrganization", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserOrganization();
      var od = new api.UserOrganization.fromJson(o.toJson());
      checkUserOrganization(od);
    });
  });

  unittest.group("obj-schema-UserPhone", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserPhone();
      var od = new api.UserPhone.fromJson(o.toJson());
      checkUserPhone(od);
    });
  });

  unittest.group("obj-schema-UserPhoto", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserPhoto();
      var od = new api.UserPhoto.fromJson(o.toJson());
      checkUserPhoto(od);
    });
  });

  unittest.group("obj-schema-UserPosixAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserPosixAccount();
      var od = new api.UserPosixAccount.fromJson(o.toJson());
      checkUserPosixAccount(od);
    });
  });

  unittest.group("obj-schema-UserRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserRelation();
      var od = new api.UserRelation.fromJson(o.toJson());
      checkUserRelation(od);
    });
  });

  unittest.group("obj-schema-UserSshPublicKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserSshPublicKey();
      var od = new api.UserSshPublicKey.fromJson(o.toJson());
      checkUserSshPublicKey(od);
    });
  });

  unittest.group("obj-schema-UserUndelete", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserUndelete();
      var od = new api.UserUndelete.fromJson(o.toJson());
      checkUserUndelete(od);
    });
  });

  unittest.group("obj-schema-UserWebsite", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserWebsite();
      var od = new api.UserWebsite.fromJson(o.toJson());
      checkUserWebsite(od);
    });
  });

  unittest.group("obj-schema-Users", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsers();
      var od = new api.Users.fromJson(o.toJson());
      checkUsers(od);
    });
  });

  unittest.group("obj-schema-VerificationCode", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerificationCode();
      var od = new api.VerificationCode.fromJson(o.toJson());
      checkVerificationCode(od);
    });
  });

  unittest.group("obj-schema-VerificationCodes", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerificationCodes();
      var od = new api.VerificationCodes.fromJson(o.toJson());
      checkVerificationCodes(od);
    });
  });

  unittest.group("resource-AspsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AspsResourceApi res = new api.AdminApi(mock).asps;
      var arg_userKey = "foo";
      var arg_codeId = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/asps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/asps/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_codeId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userKey, arg_codeId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AspsResourceApi res = new api.AdminApi(mock).asps;
      var arg_userKey = "foo";
      var arg_codeId = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/asps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/asps/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_codeId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAsp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userKey, arg_codeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Asp response) {
        checkAsp(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AspsResourceApi res = new api.AdminApi(mock).asps;
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/asps", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/asps"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAsps());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Asps response) {
        checkAsps(response);
      })));
    });
  });

  unittest.group("resource-ChannelsResourceApi", () {
    unittest.test("method--stop", () {
      var mock = new HttpServerMock();
      api.ChannelsResourceApi res = new api.AdminApi(mock).channels;
      var arg_request = buildChannel();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("admin/directory_v1/channels/stop"));
        pathOffset += 32;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-ChromeosdevicesResourceApi", () {
    unittest.test("method--action", () {
      var mock = new HttpServerMock();
      api.ChromeosdevicesResourceApi res =
          new api.AdminApi(mock).chromeosdevices;
      var arg_request = buildChromeOsDeviceAction();
      var arg_customerId = "foo";
      var arg_resourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ChromeOsDeviceAction.fromJson(json);
        checkChromeOsDeviceAction(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
        index = path.indexOf("/action", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_resourceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/action"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .action(arg_request, arg_customerId, arg_resourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ChromeosdevicesResourceApi res =
          new api.AdminApi(mock).chromeosdevices;
      var arg_customerId = "foo";
      var arg_deviceId = "foo";
      var arg_projection = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChromeOsDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerId, arg_deviceId,
              projection: arg_projection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ChromeOsDevice response) {
        checkChromeOsDevice(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ChromeosdevicesResourceApi res =
          new api.AdminApi(mock).chromeosdevices;
      var arg_customerId = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_orgUnitPath = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_query = "foo";
      var arg_sortOrder = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/devices/chromeos"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["orgUnitPath"].first, unittest.equals(arg_orgUnitPath));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChromeOsDevices());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customerId,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              orgUnitPath: arg_orgUnitPath,
              pageToken: arg_pageToken,
              projection: arg_projection,
              query: arg_query,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ChromeOsDevices response) {
        checkChromeOsDevices(response);
      })));
    });

    unittest.test("method--moveDevicesToOu", () {
      var mock = new HttpServerMock();
      api.ChromeosdevicesResourceApi res =
          new api.AdminApi(mock).chromeosdevices;
      var arg_request = buildChromeOsMoveDevicesToOu();
      var arg_customerId = "foo";
      var arg_orgUnitPath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ChromeOsMoveDevicesToOu.fromJson(json);
        checkChromeOsMoveDevicesToOu(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos/moveDevicesToOu", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("/devices/chromeos/moveDevicesToOu"));
        pathOffset += 33;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["orgUnitPath"].first, unittest.equals(arg_orgUnitPath));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .moveDevicesToOu(arg_request, arg_customerId, arg_orgUnitPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ChromeosdevicesResourceApi res =
          new api.AdminApi(mock).chromeosdevices;
      var arg_request = buildChromeOsDevice();
      var arg_customerId = "foo";
      var arg_deviceId = "foo";
      var arg_projection = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ChromeOsDevice.fromJson(json);
        checkChromeOsDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChromeOsDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customerId, arg_deviceId,
              projection: arg_projection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ChromeOsDevice response) {
        checkChromeOsDevice(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ChromeosdevicesResourceApi res =
          new api.AdminApi(mock).chromeosdevices;
      var arg_request = buildChromeOsDevice();
      var arg_customerId = "foo";
      var arg_deviceId = "foo";
      var arg_projection = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ChromeOsDevice.fromJson(json);
        checkChromeOsDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChromeOsDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customerId, arg_deviceId,
              projection: arg_projection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ChromeOsDevice response) {
        checkChromeOsDevice(response);
      })));
    });
  });

  unittest.group("resource-CustomersResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CustomersResourceApi res = new api.AdminApi(mock).customers;
      var arg_customerKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("customers/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_customerKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCustomer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Customer response) {
        checkCustomer(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CustomersResourceApi res = new api.AdminApi(mock).customers;
      var arg_request = buildCustomer();
      var arg_customerKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Customer.fromJson(json);
        checkCustomer(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("customers/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_customerKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCustomer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customerKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Customer response) {
        checkCustomer(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.CustomersResourceApi res = new api.AdminApi(mock).customers;
      var arg_request = buildCustomer();
      var arg_customerKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Customer.fromJson(json);
        checkCustomer(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("customers/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_customerKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCustomer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customerKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Customer response) {
        checkCustomer(response);
      })));
    });
  });

  unittest.group("resource-DomainAliasesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DomainAliasesResourceApi res = new api.AdminApi(mock).domainAliases;
      var arg_customer = "foo";
      var arg_domainAliasName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/domainaliases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/domainaliases/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_domainAliasName"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customer, arg_domainAliasName, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DomainAliasesResourceApi res = new api.AdminApi(mock).domainAliases;
      var arg_customer = "foo";
      var arg_domainAliasName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/domainaliases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/domainaliases/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_domainAliasName"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDomainAlias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_domainAliasName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DomainAlias response) {
        checkDomainAlias(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DomainAliasesResourceApi res = new api.AdminApi(mock).domainAliases;
      var arg_request = buildDomainAlias();
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DomainAlias.fromJson(json);
        checkDomainAlias(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/domainaliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/domainaliases"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDomainAlias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DomainAlias response) {
        checkDomainAlias(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DomainAliasesResourceApi res = new api.AdminApi(mock).domainAliases;
      var arg_customer = "foo";
      var arg_parentDomainName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/domainaliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/domainaliases"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["parentDomainName"].first,
            unittest.equals(arg_parentDomainName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDomainAliases());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              parentDomainName: arg_parentDomainName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DomainAliases response) {
        checkDomainAliases(response);
      })));
    });
  });

  unittest.group("resource-DomainsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DomainsResourceApi res = new api.AdminApi(mock).domains;
      var arg_customer = "foo";
      var arg_domainName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/domains/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/domains/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_domainName"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customer, arg_domainName, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DomainsResourceApi res = new api.AdminApi(mock).domains;
      var arg_customer = "foo";
      var arg_domainName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/domains/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/domains/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_domainName"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDomains());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_domainName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Domains response) {
        checkDomains(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DomainsResourceApi res = new api.AdminApi(mock).domains;
      var arg_request = buildDomains();
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Domains.fromJson(json);
        checkDomains(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/domains", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/domains"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDomains());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Domains response) {
        checkDomains(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DomainsResourceApi res = new api.AdminApi(mock).domains;
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/domains", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/domains"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDomains2());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Domains2 response) {
        checkDomains2(response);
      })));
    });
  });

  unittest.group("resource-GroupsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_groupKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_groupKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Group response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_request = buildGroup();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("groups"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Group response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_customer = "foo";
      var arg_domain = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("groups"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["userKey"].first, unittest.equals(arg_userKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroups());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              customer: arg_customer,
              domain: arg_domain,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              userKey: arg_userKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Groups response) {
        checkGroups(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_request = buildGroup();
      var arg_groupKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Group response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_request = buildGroup();
      var arg_groupKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Group response) {
        checkGroup(response);
      })));
    });
  });

  unittest.group("resource-GroupsAliasesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.GroupsAliasesResourceApi res = new api.AdminApi(mock).groups.aliases;
      var arg_groupKey = "foo";
      var arg_alias = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/aliases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/aliases/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_alias"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_groupKey, arg_alias, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.GroupsAliasesResourceApi res = new api.AdminApi(mock).groups.aliases;
      var arg_request = buildAlias();
      var arg_groupKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Alias.fromJson(json);
        checkAlias(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAlias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Alias response) {
        checkAlias(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GroupsAliasesResourceApi res = new api.AdminApi(mock).groups.aliases;
      var arg_groupKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAliases());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Aliases response) {
        checkAliases(response);
      })));
    });
  });

  unittest.group("resource-MembersResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_groupKey = "foo";
      var arg_memberKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_memberKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_groupKey, arg_memberKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_groupKey = "foo";
      var arg_memberKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_memberKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMember());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_groupKey, arg_memberKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Member response) {
        checkMember(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Member.fromJson(json);
        checkMember(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/members"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMember());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Member response) {
        checkMember(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_groupKey = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_roles = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/members"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["roles"].first, unittest.equals(arg_roles));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMembers());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_groupKey,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              roles: arg_roles,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Members response) {
        checkMembers(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = "foo";
      var arg_memberKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Member.fromJson(json);
        checkMember(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_memberKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMember());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_groupKey, arg_memberKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Member response) {
        checkMember(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = "foo";
      var arg_memberKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Member.fromJson(json);
        checkMember(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_memberKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMember());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_groupKey, arg_memberKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Member response) {
        checkMember(response);
      })));
    });
  });

  unittest.group("resource-MobiledevicesResourceApi", () {
    unittest.test("method--action", () {
      var mock = new HttpServerMock();
      api.MobiledevicesResourceApi res = new api.AdminApi(mock).mobiledevices;
      var arg_request = buildMobileDeviceAction();
      var arg_customerId = "foo";
      var arg_resourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.MobileDeviceAction.fromJson(json);
        checkMobileDeviceAction(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/mobile/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        index = path.indexOf("/action", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_resourceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/action"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .action(arg_request, arg_customerId, arg_resourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MobiledevicesResourceApi res = new api.AdminApi(mock).mobiledevices;
      var arg_customerId = "foo";
      var arg_resourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/mobile/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_resourceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customerId, arg_resourceId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MobiledevicesResourceApi res = new api.AdminApi(mock).mobiledevices;
      var arg_customerId = "foo";
      var arg_resourceId = "foo";
      var arg_projection = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/mobile/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_resourceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMobileDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerId, arg_resourceId,
              projection: arg_projection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.MobileDevice response) {
        checkMobileDevice(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MobiledevicesResourceApi res = new api.AdminApi(mock).mobiledevices;
      var arg_customerId = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_query = "foo";
      var arg_sortOrder = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/mobile", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/devices/mobile"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMobileDevices());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customerId,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              projection: arg_projection,
              query: arg_query,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.MobileDevices response) {
        checkMobileDevices(response);
      })));
    });
  });

  unittest.group("resource-NotificationsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_customer = "foo";
      var arg_notificationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/notifications/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notificationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customer, arg_notificationId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_customer = "foo";
      var arg_notificationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/notifications/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notificationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNotification());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_notificationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Notification response) {
        checkNotification(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_customer = "foo";
      var arg_language = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/notifications"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNotifications());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              language: arg_language,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Notifications response) {
        checkNotifications(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_request = buildNotification();
      var arg_customer = "foo";
      var arg_notificationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Notification.fromJson(json);
        checkNotification(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/notifications/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notificationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNotification());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customer, arg_notificationId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Notification response) {
        checkNotification(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_request = buildNotification();
      var arg_customer = "foo";
      var arg_notificationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Notification.fromJson(json);
        checkNotification(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/notifications/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notificationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNotification());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customer, arg_notificationId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Notification response) {
        checkNotification(response);
      })));
    });
  });

  unittest.group("resource-OrgunitsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_customerId = "foo";
      var arg_orgUnitPath = buildUnnamed880();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/orgunits"));
        pathOffset += 9;
        var parts = path
            .substring(pathOffset)
            .split("/")
            .map(core.Uri.decodeQueryComponent)
            .where((p) => p.length > 0)
            .toList();
        unittest.expect(parts, unittest.equals(arg_orgUnitPath));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customerId, arg_orgUnitPath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_customerId = "foo";
      var arg_orgUnitPath = buildUnnamed881();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/orgunits"));
        pathOffset += 9;
        var parts = path
            .substring(pathOffset)
            .split("/")
            .map(core.Uri.decodeQueryComponent)
            .where((p) => p.length > 0)
            .toList();
        unittest.expect(parts, unittest.equals(arg_orgUnitPath));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerId, arg_orgUnitPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.OrgUnit response) {
        checkOrgUnit(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrgUnit.fromJson(json);
        checkOrgUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/orgunits"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.OrgUnit response) {
        checkOrgUnit(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_customerId = "foo";
      var arg_orgUnitPath = "foo";
      var arg_type = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/orgunits"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["orgUnitPath"].first, unittest.equals(arg_orgUnitPath));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnits());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customerId,
              orgUnitPath: arg_orgUnitPath,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.OrgUnits response) {
        checkOrgUnits(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = "foo";
      var arg_orgUnitPath = buildUnnamed882();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrgUnit.fromJson(json);
        checkOrgUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/orgunits"));
        pathOffset += 9;
        var parts = path
            .substring(pathOffset)
            .split("/")
            .map(core.Uri.decodeQueryComponent)
            .where((p) => p.length > 0)
            .toList();
        unittest.expect(parts, unittest.equals(arg_orgUnitPath));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customerId, arg_orgUnitPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.OrgUnit response) {
        checkOrgUnit(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = "foo";
      var arg_orgUnitPath = buildUnnamed883();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrgUnit.fromJson(json);
        checkOrgUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/orgunits"));
        pathOffset += 9;
        var parts = path
            .substring(pathOffset)
            .split("/")
            .map(core.Uri.decodeQueryComponent)
            .where((p) => p.length > 0)
            .toList();
        unittest.expect(parts, unittest.equals(arg_orgUnitPath));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customerId, arg_orgUnitPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.OrgUnit response) {
        checkOrgUnit(response);
      })));
    });
  });

  unittest.group("resource-PrivilegesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PrivilegesResourceApi res = new api.AdminApi(mock).privileges;
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roles/ALL/privileges", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/roles/ALL/privileges"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPrivileges());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Privileges response) {
        checkPrivileges(response);
      })));
    });
  });

  unittest.group("resource-ResolvedAppAccessSettingsResourceApi", () {
    unittest.test("method--GetSettings", () {
      var mock = new HttpServerMock();
      api.ResolvedAppAccessSettingsResourceApi res =
          new api.AdminApi(mock).resolvedAppAccessSettings;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("resolvedappaccesssettings"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAppAccessCollections());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .GetSettings($fields: arg_$fields)
          .then(unittest.expectAsync1(((api.AppAccessCollections response) {
        checkAppAccessCollections(response);
      })));
    });

    unittest.test("method--ListTrustedApps", () {
      var mock = new HttpServerMock();
      api.ResolvedAppAccessSettingsResourceApi res =
          new api.AdminApi(mock).resolvedAppAccessSettings;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("trustedapps"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTrustedApps());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .ListTrustedApps($fields: arg_$fields)
          .then(unittest.expectAsync1(((api.TrustedApps response) {
        checkTrustedApps(response);
      })));
    });
  });

  unittest.group("resource-ResourcesCalendarsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ResourcesCalendarsResourceApi res =
          new api.AdminApi(mock).resources.calendars;
      var arg_customer = "foo";
      var arg_calendarResourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/resources/calendars/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/calendars/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_calendarResourceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customer, arg_calendarResourceId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ResourcesCalendarsResourceApi res =
          new api.AdminApi(mock).resources.calendars;
      var arg_customer = "foo";
      var arg_calendarResourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/resources/calendars/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/calendars/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_calendarResourceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCalendarResource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_calendarResourceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CalendarResource response) {
        checkCalendarResource(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ResourcesCalendarsResourceApi res =
          new api.AdminApi(mock).resources.calendars;
      var arg_request = buildCalendarResource();
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CalendarResource.fromJson(json);
        checkCalendarResource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/resources/calendars", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/calendars"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCalendarResource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CalendarResource response) {
        checkCalendarResource(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ResourcesCalendarsResourceApi res =
          new api.AdminApi(mock).resources.calendars;
      var arg_customer = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/resources/calendars", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/calendars"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCalendarResources());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CalendarResources response) {
        checkCalendarResources(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ResourcesCalendarsResourceApi res =
          new api.AdminApi(mock).resources.calendars;
      var arg_request = buildCalendarResource();
      var arg_customer = "foo";
      var arg_calendarResourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CalendarResource.fromJson(json);
        checkCalendarResource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/resources/calendars/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/calendars/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_calendarResourceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCalendarResource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customer, arg_calendarResourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CalendarResource response) {
        checkCalendarResource(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ResourcesCalendarsResourceApi res =
          new api.AdminApi(mock).resources.calendars;
      var arg_request = buildCalendarResource();
      var arg_customer = "foo";
      var arg_calendarResourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CalendarResource.fromJson(json);
        checkCalendarResource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/resources/calendars/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/calendars/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_calendarResourceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCalendarResource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customer, arg_calendarResourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CalendarResource response) {
        checkCalendarResource(response);
      })));
    });
  });

  unittest.group("resource-RoleAssignmentsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RoleAssignmentsResourceApi res =
          new api.AdminApi(mock).roleAssignments;
      var arg_customer = "foo";
      var arg_roleAssignmentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roleassignments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/roleassignments/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_roleAssignmentId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customer, arg_roleAssignmentId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RoleAssignmentsResourceApi res =
          new api.AdminApi(mock).roleAssignments;
      var arg_customer = "foo";
      var arg_roleAssignmentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roleassignments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/roleassignments/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_roleAssignmentId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRoleAssignment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_roleAssignmentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.RoleAssignment response) {
        checkRoleAssignment(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RoleAssignmentsResourceApi res =
          new api.AdminApi(mock).roleAssignments;
      var arg_request = buildRoleAssignment();
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RoleAssignment.fromJson(json);
        checkRoleAssignment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roleassignments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/roleassignments"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRoleAssignment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.RoleAssignment response) {
        checkRoleAssignment(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RoleAssignmentsResourceApi res =
          new api.AdminApi(mock).roleAssignments;
      var arg_customer = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_roleId = "foo";
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roleassignments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/roleassignments"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["roleId"].first, unittest.equals(arg_roleId));
        unittest.expect(
            queryMap["userKey"].first, unittest.equals(arg_userKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRoleAssignments());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              roleId: arg_roleId,
              userKey: arg_userKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.RoleAssignments response) {
        checkRoleAssignments(response);
      })));
    });
  });

  unittest.group("resource-RolesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.AdminApi(mock).roles;
      var arg_customer = "foo";
      var arg_roleId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roles/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/roles/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_roleId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customer, arg_roleId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.AdminApi(mock).roles;
      var arg_customer = "foo";
      var arg_roleId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roles/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/roles/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_roleId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_roleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Role response) {
        checkRole(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.AdminApi(mock).roles;
      var arg_request = buildRole();
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Role.fromJson(json);
        checkRole(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roles", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/roles"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Role response) {
        checkRole(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.AdminApi(mock).roles;
      var arg_customer = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roles", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/roles"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRoles());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Roles response) {
        checkRoles(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.AdminApi(mock).roles;
      var arg_request = buildRole();
      var arg_customer = "foo";
      var arg_roleId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Role.fromJson(json);
        checkRole(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roles/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/roles/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_roleId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customer, arg_roleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Role response) {
        checkRole(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.AdminApi(mock).roles;
      var arg_request = buildRole();
      var arg_customer = "foo";
      var arg_roleId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Role.fromJson(json);
        checkRole(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/roles/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/roles/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_roleId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customer, arg_roleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Role response) {
        checkRole(response);
      })));
    });
  });

  unittest.group("resource-SchemasResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_customerId = "foo";
      var arg_schemaKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_schemaKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customerId, arg_schemaKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_customerId = "foo";
      var arg_schemaKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_schemaKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchema());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerId, arg_schemaKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Schema response) {
        checkSchema(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Schema.fromJson(json);
        checkSchema(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/schemas"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchema());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Schema response) {
        checkSchema(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/schemas"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchemas());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Schemas response) {
        checkSchemas(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = "foo";
      var arg_schemaKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Schema.fromJson(json);
        checkSchema(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_schemaKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchema());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customerId, arg_schemaKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Schema response) {
        checkSchema(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = "foo";
      var arg_schemaKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Schema.fromJson(json);
        checkSchema(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_schemaKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchema());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customerId, arg_schemaKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Schema response) {
        checkSchema(response);
      })));
    });
  });

  unittest.group("resource-TokensResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TokensResourceApi res = new api.AdminApi(mock).tokens;
      var arg_userKey = "foo";
      var arg_clientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/tokens/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userKey, arg_clientId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TokensResourceApi res = new api.AdminApi(mock).tokens;
      var arg_userKey = "foo";
      var arg_clientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/tokens/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userKey, arg_clientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Token response) {
        checkToken(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TokensResourceApi res = new api.AdminApi(mock).tokens;
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/tokens", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/tokens"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTokens());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Tokens response) {
        checkTokens(response);
      })));
    });
  });

  unittest.group("resource-UsersResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_userKey = "foo";
      var arg_customFieldMask = "foo";
      var arg_projection = "foo";
      var arg_viewType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["customFieldMask"].first,
            unittest.equals(arg_customFieldMask));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(
            queryMap["viewType"].first, unittest.equals(arg_viewType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userKey,
              customFieldMask: arg_customFieldMask,
              projection: arg_projection,
              viewType: arg_viewType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUser();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("users"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_customFieldMask = "foo";
      var arg_customer = "foo";
      var arg_domain = "foo";
      var arg_event = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_query = "foo";
      var arg_showDeleted = "foo";
      var arg_sortOrder = "foo";
      var arg_viewType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("users"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["customFieldMask"].first,
            unittest.equals(arg_customFieldMask));
        unittest.expect(
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals(arg_showDeleted));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["viewType"].first, unittest.equals(arg_viewType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUsers());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              customFieldMask: arg_customFieldMask,
              customer: arg_customer,
              domain: arg_domain,
              event: arg_event,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              projection: arg_projection,
              query: arg_query,
              showDeleted: arg_showDeleted,
              sortOrder: arg_sortOrder,
              viewType: arg_viewType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Users response) {
        checkUsers(response);
      })));
    });

    unittest.test("method--makeAdmin", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUserMakeAdmin();
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UserMakeAdmin.fromJson(json);
        checkUserMakeAdmin(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/makeAdmin", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/makeAdmin"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .makeAdmin(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUser();
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUserUndelete();
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UserUndelete.fromJson(json);
        checkUserUndelete(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/undelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/undelete"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUser();
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--watch", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildChannel();
      var arg_customFieldMask = "foo";
      var arg_customer = "foo";
      var arg_domain = "foo";
      var arg_event = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_query = "foo";
      var arg_showDeleted = "foo";
      var arg_sortOrder = "foo";
      var arg_viewType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("users/watch"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["customFieldMask"].first,
            unittest.equals(arg_customFieldMask));
        unittest.expect(
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals(arg_showDeleted));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["viewType"].first, unittest.equals(arg_viewType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request,
              customFieldMask: arg_customFieldMask,
              customer: arg_customer,
              domain: arg_domain,
              event: arg_event,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              projection: arg_projection,
              query: arg_query,
              showDeleted: arg_showDeleted,
              sortOrder: arg_sortOrder,
              viewType: arg_viewType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Channel response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group("resource-UsersAliasesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersAliasesResourceApi res = new api.AdminApi(mock).users.aliases;
      var arg_userKey = "foo";
      var arg_alias = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/aliases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/aliases/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_alias"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userKey, arg_alias, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.UsersAliasesResourceApi res = new api.AdminApi(mock).users.aliases;
      var arg_request = buildAlias();
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Alias.fromJson(json);
        checkAlias(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAlias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Alias response) {
        checkAlias(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UsersAliasesResourceApi res = new api.AdminApi(mock).users.aliases;
      var arg_userKey = "foo";
      var arg_event = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAliases());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userKey, event: arg_event, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Aliases response) {
        checkAliases(response);
      })));
    });

    unittest.test("method--watch", () {
      var mock = new HttpServerMock();
      api.UsersAliasesResourceApi res = new api.AdminApi(mock).users.aliases;
      var arg_request = buildChannel();
      var arg_userKey = "foo";
      var arg_event = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/aliases/watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/aliases/watch"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request, arg_userKey,
              event: arg_event, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Channel response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group("resource-UsersPhotosResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersPhotosResourceApi res = new api.AdminApi(mock).users.photos;
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/photos/thumbnail", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UsersPhotosResourceApi res = new api.AdminApi(mock).users.photos;
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/photos/thumbnail", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUserPhoto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.UserPhoto response) {
        checkUserPhoto(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.UsersPhotosResourceApi res = new api.AdminApi(mock).users.photos;
      var arg_request = buildUserPhoto();
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UserPhoto.fromJson(json);
        checkUserPhoto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/photos/thumbnail", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUserPhoto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.UserPhoto response) {
        checkUserPhoto(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.UsersPhotosResourceApi res = new api.AdminApi(mock).users.photos;
      var arg_request = buildUserPhoto();
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UserPhoto.fromJson(json);
        checkUserPhoto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/photos/thumbnail", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUserPhoto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.UserPhoto response) {
        checkUserPhoto(response);
      })));
    });
  });

  unittest.group("resource-VerificationCodesResourceApi", () {
    unittest.test("method--generate", () {
      var mock = new HttpServerMock();
      api.VerificationCodesResourceApi res =
          new api.AdminApi(mock).verificationCodes;
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/verificationCodes/generate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("/verificationCodes/generate"));
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--invalidate", () {
      var mock = new HttpServerMock();
      api.VerificationCodesResourceApi res =
          new api.AdminApi(mock).verificationCodes;
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/verificationCodes/invalidate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("/verificationCodes/invalidate"));
        pathOffset += 29;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .invalidate(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.VerificationCodesResourceApi res =
          new api.AdminApi(mock).verificationCodes;
      var arg_userKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/verificationCodes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/verificationCodes"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVerificationCodes());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.VerificationCodes response) {
        checkVerificationCodes(response);
      })));
    });
  });
}
