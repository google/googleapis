// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/civicinfo/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Source> buildUnnamed2927() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed2927(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterAdministrationRegion = 0;
api.AdministrationRegion buildAdministrationRegion() {
  final o = api.AdministrationRegion();
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    o.electionAdministrationBody = buildAdministrativeBody();
    o.localJurisdiction = buildAdministrationRegion();
    o.name = 'foo';
    o.sources = buildUnnamed2927();
  }
  buildCounterAdministrationRegion--;
  return o;
}

void checkAdministrationRegion(api.AdministrationRegion o) {
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    checkAdministrativeBody(o.electionAdministrationBody!);
    checkAdministrationRegion(o.localJurisdiction!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2927(o.sources!);
  }
  buildCounterAdministrationRegion--;
}

core.List<api.ElectionOfficial> buildUnnamed2928() => [
      buildElectionOfficial(),
      buildElectionOfficial(),
    ];

void checkUnnamed2928(core.List<api.ElectionOfficial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElectionOfficial(o[0]);
  checkElectionOfficial(o[1]);
}

core.List<core.String> buildUnnamed2929() => [
      'foo',
      'foo',
    ];

void checkUnnamed2929(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAdministrativeBody = 0;
api.AdministrativeBody buildAdministrativeBody() {
  final o = api.AdministrativeBody();
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    o.absenteeVotingInfoUrl = 'foo';
    o.ballotInfoUrl = 'foo';
    o.correspondenceAddress = buildSimpleAddressType();
    o.electionInfoUrl = 'foo';
    o.electionNoticeText = 'foo';
    o.electionNoticeUrl = 'foo';
    o.electionOfficials = buildUnnamed2928();
    o.electionRegistrationConfirmationUrl = 'foo';
    o.electionRegistrationUrl = 'foo';
    o.electionRulesUrl = 'foo';
    o.hoursOfOperation = 'foo';
    o.name = 'foo';
    o.physicalAddress = buildSimpleAddressType();
    o.voterServices = buildUnnamed2929();
    o.votingLocationFinderUrl = 'foo';
  }
  buildCounterAdministrativeBody--;
  return o;
}

void checkAdministrativeBody(api.AdministrativeBody o) {
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    unittest.expect(
      o.absenteeVotingInfoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ballotInfoUrl!,
      unittest.equals('foo'),
    );
    checkSimpleAddressType(o.correspondenceAddress!);
    unittest.expect(
      o.electionInfoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.electionNoticeText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.electionNoticeUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2928(o.electionOfficials!);
    unittest.expect(
      o.electionRegistrationConfirmationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.electionRegistrationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.electionRulesUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hoursOfOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSimpleAddressType(o.physicalAddress!);
    checkUnnamed2929(o.voterServices!);
    unittest.expect(
      o.votingLocationFinderUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdministrativeBody--;
}

core.List<api.Channel> buildUnnamed2930() => [
      buildChannel(),
      buildChannel(),
    ];

void checkUnnamed2930(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterCandidate = 0;
api.Candidate buildCandidate() {
  final o = api.Candidate();
  buildCounterCandidate++;
  if (buildCounterCandidate < 3) {
    o.candidateUrl = 'foo';
    o.channels = buildUnnamed2930();
    o.email = 'foo';
    o.name = 'foo';
    o.orderOnBallot = 'foo';
    o.party = 'foo';
    o.phone = 'foo';
    o.photoUrl = 'foo';
  }
  buildCounterCandidate--;
  return o;
}

void checkCandidate(api.Candidate o) {
  buildCounterCandidate++;
  if (buildCounterCandidate < 3) {
    unittest.expect(
      o.candidateUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2930(o.channels!);
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderOnBallot!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.party!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterCandidate--;
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.id = 'foo';
    o.type = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannel--;
}

core.List<api.Candidate> buildUnnamed2931() => [
      buildCandidate(),
      buildCandidate(),
    ];

void checkUnnamed2931(core.List<api.Candidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandidate(o[0]);
  checkCandidate(o[1]);
}

core.List<core.String> buildUnnamed2932() => [
      'foo',
      'foo',
    ];

void checkUnnamed2932(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2933() => [
      'foo',
      'foo',
    ];

void checkUnnamed2933(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2934() => [
      'foo',
      'foo',
    ];

void checkUnnamed2934(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2935() => [
      'foo',
      'foo',
    ];

void checkUnnamed2935(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.Source> buildUnnamed2936() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed2936(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterContest = 0;
api.Contest buildContest() {
  final o = api.Contest();
  buildCounterContest++;
  if (buildCounterContest < 3) {
    o.ballotPlacement = 'foo';
    o.ballotTitle = 'foo';
    o.candidates = buildUnnamed2931();
    o.district = buildElectoralDistrict();
    o.electorateSpecifications = 'foo';
    o.level = buildUnnamed2932();
    o.numberElected = 'foo';
    o.numberVotingFor = 'foo';
    o.office = 'foo';
    o.primaryParties = buildUnnamed2933();
    o.primaryParty = 'foo';
    o.referendumBallotResponses = buildUnnamed2934();
    o.referendumBrief = 'foo';
    o.referendumConStatement = 'foo';
    o.referendumEffectOfAbstain = 'foo';
    o.referendumPassageThreshold = 'foo';
    o.referendumProStatement = 'foo';
    o.referendumSubtitle = 'foo';
    o.referendumText = 'foo';
    o.referendumTitle = 'foo';
    o.referendumUrl = 'foo';
    o.roles = buildUnnamed2935();
    o.sources = buildUnnamed2936();
    o.special = 'foo';
    o.type = 'foo';
  }
  buildCounterContest--;
  return o;
}

void checkContest(api.Contest o) {
  buildCounterContest++;
  if (buildCounterContest < 3) {
    unittest.expect(
      o.ballotPlacement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ballotTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed2931(o.candidates!);
    checkElectoralDistrict(o.district!);
    unittest.expect(
      o.electorateSpecifications!,
      unittest.equals('foo'),
    );
    checkUnnamed2932(o.level!);
    unittest.expect(
      o.numberElected!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numberVotingFor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.office!,
      unittest.equals('foo'),
    );
    checkUnnamed2933(o.primaryParties!);
    unittest.expect(
      o.primaryParty!,
      unittest.equals('foo'),
    );
    checkUnnamed2934(o.referendumBallotResponses!);
    unittest.expect(
      o.referendumBrief!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumConStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumEffectOfAbstain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumPassageThreshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumProStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumSubtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2935(o.roles!);
    checkUnnamed2936(o.sources!);
    unittest.expect(
      o.special!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterContest--;
}

core.List<api.DivisionSearchResult> buildUnnamed2937() => [
      buildDivisionSearchResult(),
      buildDivisionSearchResult(),
    ];

void checkUnnamed2937(core.List<api.DivisionSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDivisionSearchResult(o[0]);
  checkDivisionSearchResult(o[1]);
}

core.int buildCounterDivisionSearchResponse = 0;
api.DivisionSearchResponse buildDivisionSearchResponse() {
  final o = api.DivisionSearchResponse();
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    o.kind = 'foo';
    o.results = buildUnnamed2937();
  }
  buildCounterDivisionSearchResponse--;
  return o;
}

void checkDivisionSearchResponse(api.DivisionSearchResponse o) {
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2937(o.results!);
  }
  buildCounterDivisionSearchResponse--;
}

core.List<core.String> buildUnnamed2938() => [
      'foo',
      'foo',
    ];

void checkUnnamed2938(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterDivisionSearchResult = 0;
api.DivisionSearchResult buildDivisionSearchResult() {
  final o = api.DivisionSearchResult();
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    o.aliases = buildUnnamed2938();
    o.name = 'foo';
    o.ocdId = 'foo';
  }
  buildCounterDivisionSearchResult--;
  return o;
}

void checkDivisionSearchResult(api.DivisionSearchResult o) {
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    checkUnnamed2938(o.aliases!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ocdId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDivisionSearchResult--;
}

core.int buildCounterElection = 0;
api.Election buildElection() {
  final o = api.Election();
  buildCounterElection++;
  if (buildCounterElection < 3) {
    o.electionDay = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.ocdDivisionId = 'foo';
  }
  buildCounterElection--;
  return o;
}

void checkElection(api.Election o) {
  buildCounterElection++;
  if (buildCounterElection < 3) {
    unittest.expect(
      o.electionDay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ocdDivisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterElection--;
}

core.int buildCounterElectionOfficial = 0;
api.ElectionOfficial buildElectionOfficial() {
  final o = api.ElectionOfficial();
  buildCounterElectionOfficial++;
  if (buildCounterElectionOfficial < 3) {
    o.emailAddress = 'foo';
    o.faxNumber = 'foo';
    o.name = 'foo';
    o.officePhoneNumber = 'foo';
    o.title = 'foo';
  }
  buildCounterElectionOfficial--;
  return o;
}

void checkElectionOfficial(api.ElectionOfficial o) {
  buildCounterElectionOfficial++;
  if (buildCounterElectionOfficial < 3) {
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.faxNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.officePhoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterElectionOfficial--;
}

core.List<api.Election> buildUnnamed2939() => [
      buildElection(),
      buildElection(),
    ];

void checkUnnamed2939(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0]);
  checkElection(o[1]);
}

core.int buildCounterElectionsQueryResponse = 0;
api.ElectionsQueryResponse buildElectionsQueryResponse() {
  final o = api.ElectionsQueryResponse();
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    o.elections = buildUnnamed2939();
    o.kind = 'foo';
  }
  buildCounterElectionsQueryResponse--;
  return o;
}

void checkElectionsQueryResponse(api.ElectionsQueryResponse o) {
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    checkUnnamed2939(o.elections!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterElectionsQueryResponse--;
}

core.int buildCounterElectoralDistrict = 0;
api.ElectoralDistrict buildElectoralDistrict() {
  final o = api.ElectoralDistrict();
  buildCounterElectoralDistrict++;
  if (buildCounterElectoralDistrict < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.scope = 'foo';
  }
  buildCounterElectoralDistrict--;
  return o;
}

void checkElectoralDistrict(api.ElectoralDistrict o) {
  buildCounterElectoralDistrict++;
  if (buildCounterElectoralDistrict < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterElectoralDistrict--;
}

core.List<core.String> buildUnnamed2940() => [
      'foo',
      'foo',
    ];

void checkUnnamed2940(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.int> buildUnnamed2941() => [
      42,
      42,
    ];

void checkUnnamed2941(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGeographicDivision = 0;
api.GeographicDivision buildGeographicDivision() {
  final o = api.GeographicDivision();
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    o.alsoKnownAs = buildUnnamed2940();
    o.name = 'foo';
    o.officeIndices = buildUnnamed2941();
  }
  buildCounterGeographicDivision--;
  return o;
}

void checkGeographicDivision(api.GeographicDivision o) {
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    checkUnnamed2940(o.alsoKnownAs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2941(o.officeIndices!);
  }
  buildCounterGeographicDivision--;
}

core.List<core.String> buildUnnamed2942() => [
      'foo',
      'foo',
    ];

void checkUnnamed2942(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.int> buildUnnamed2943() => [
      42,
      42,
    ];

void checkUnnamed2943(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.String> buildUnnamed2944() => [
      'foo',
      'foo',
    ];

void checkUnnamed2944(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.Source> buildUnnamed2945() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed2945(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterOffice = 0;
api.Office buildOffice() {
  final o = api.Office();
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    o.divisionId = 'foo';
    o.levels = buildUnnamed2942();
    o.name = 'foo';
    o.officialIndices = buildUnnamed2943();
    o.roles = buildUnnamed2944();
    o.sources = buildUnnamed2945();
  }
  buildCounterOffice--;
  return o;
}

void checkOffice(api.Office o) {
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    unittest.expect(
      o.divisionId!,
      unittest.equals('foo'),
    );
    checkUnnamed2942(o.levels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2943(o.officialIndices!);
    checkUnnamed2944(o.roles!);
    checkUnnamed2945(o.sources!);
  }
  buildCounterOffice--;
}

core.List<api.SimpleAddressType> buildUnnamed2946() => [
      buildSimpleAddressType(),
      buildSimpleAddressType(),
    ];

void checkUnnamed2946(core.List<api.SimpleAddressType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSimpleAddressType(o[0]);
  checkSimpleAddressType(o[1]);
}

core.List<api.Channel> buildUnnamed2947() => [
      buildChannel(),
      buildChannel(),
    ];

void checkUnnamed2947(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.List<core.String> buildUnnamed2948() => [
      'foo',
      'foo',
    ];

void checkUnnamed2948(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2949() => [
      'foo',
      'foo',
    ];

void checkUnnamed2949(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2950() => [
      'foo',
      'foo',
    ];

void checkUnnamed2950(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterOfficial = 0;
api.Official buildOfficial() {
  final o = api.Official();
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    o.address = buildUnnamed2946();
    o.channels = buildUnnamed2947();
    o.emails = buildUnnamed2948();
    o.name = 'foo';
    o.party = 'foo';
    o.phones = buildUnnamed2949();
    o.photoUrl = 'foo';
    o.urls = buildUnnamed2950();
  }
  buildCounterOfficial--;
  return o;
}

void checkOfficial(api.Official o) {
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    checkUnnamed2946(o.address!);
    checkUnnamed2947(o.channels!);
    checkUnnamed2948(o.emails!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.party!,
      unittest.equals('foo'),
    );
    checkUnnamed2949(o.phones!);
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2950(o.urls!);
  }
  buildCounterOfficial--;
}

core.List<api.Source> buildUnnamed2951() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed2951(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterPollingLocation = 0;
api.PollingLocation buildPollingLocation() {
  final o = api.PollingLocation();
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    o.address = buildSimpleAddressType();
    o.endDate = 'foo';
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.name = 'foo';
    o.notes = 'foo';
    o.pollingHours = 'foo';
    o.sources = buildUnnamed2951();
    o.startDate = 'foo';
    o.voterServices = 'foo';
  }
  buildCounterPollingLocation--;
  return o;
}

void checkPollingLocation(api.PollingLocation o) {
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    checkSimpleAddressType(o.address!);
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pollingHours!,
      unittest.equals('foo'),
    );
    checkUnnamed2951(o.sources!);
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.voterServices!,
      unittest.equals('foo'),
    );
  }
  buildCounterPollingLocation--;
}

core.Map<core.String, api.GeographicDivision> buildUnnamed2952() => {
      'x': buildGeographicDivision(),
      'y': buildGeographicDivision(),
    };

void checkUnnamed2952(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o['x']!);
  checkGeographicDivision(o['y']!);
}

core.List<api.Office> buildUnnamed2953() => [
      buildOffice(),
      buildOffice(),
    ];

void checkUnnamed2953(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0]);
  checkOffice(o[1]);
}

core.List<api.Official> buildUnnamed2954() => [
      buildOfficial(),
      buildOfficial(),
    ];

void checkUnnamed2954(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0]);
  checkOfficial(o[1]);
}

core.int buildCounterRepresentativeInfoData = 0;
api.RepresentativeInfoData buildRepresentativeInfoData() {
  final o = api.RepresentativeInfoData();
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    o.divisions = buildUnnamed2952();
    o.offices = buildUnnamed2953();
    o.officials = buildUnnamed2954();
  }
  buildCounterRepresentativeInfoData--;
  return o;
}

void checkRepresentativeInfoData(api.RepresentativeInfoData o) {
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    checkUnnamed2952(o.divisions!);
    checkUnnamed2953(o.offices!);
    checkUnnamed2954(o.officials!);
  }
  buildCounterRepresentativeInfoData--;
}

core.Map<core.String, api.GeographicDivision> buildUnnamed2955() => {
      'x': buildGeographicDivision(),
      'y': buildGeographicDivision(),
    };

void checkUnnamed2955(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o['x']!);
  checkGeographicDivision(o['y']!);
}

core.List<api.Office> buildUnnamed2956() => [
      buildOffice(),
      buildOffice(),
    ];

void checkUnnamed2956(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0]);
  checkOffice(o[1]);
}

core.List<api.Official> buildUnnamed2957() => [
      buildOfficial(),
      buildOfficial(),
    ];

void checkUnnamed2957(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0]);
  checkOfficial(o[1]);
}

core.int buildCounterRepresentativeInfoResponse = 0;
api.RepresentativeInfoResponse buildRepresentativeInfoResponse() {
  final o = api.RepresentativeInfoResponse();
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    o.divisions = buildUnnamed2955();
    o.kind = 'foo';
    o.normalizedInput = buildSimpleAddressType();
    o.offices = buildUnnamed2956();
    o.officials = buildUnnamed2957();
  }
  buildCounterRepresentativeInfoResponse--;
  return o;
}

void checkRepresentativeInfoResponse(api.RepresentativeInfoResponse o) {
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    checkUnnamed2955(o.divisions!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkSimpleAddressType(o.normalizedInput!);
    checkUnnamed2956(o.offices!);
    checkUnnamed2957(o.officials!);
  }
  buildCounterRepresentativeInfoResponse--;
}

core.int buildCounterSimpleAddressType = 0;
api.SimpleAddressType buildSimpleAddressType() {
  final o = api.SimpleAddressType();
  buildCounterSimpleAddressType++;
  if (buildCounterSimpleAddressType < 3) {
    o.city = 'foo';
    o.line1 = 'foo';
    o.line2 = 'foo';
    o.line3 = 'foo';
    o.locationName = 'foo';
    o.state = 'foo';
    o.zip = 'foo';
  }
  buildCounterSimpleAddressType--;
  return o;
}

void checkSimpleAddressType(api.SimpleAddressType o) {
  buildCounterSimpleAddressType++;
  if (buildCounterSimpleAddressType < 3) {
    unittest.expect(
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zip!,
      unittest.equals('foo'),
    );
  }
  buildCounterSimpleAddressType--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.name = 'foo';
    o.official = true;
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.official!, unittest.isTrue);
  }
  buildCounterSource--;
}

core.List<api.Contest> buildUnnamed2958() => [
      buildContest(),
      buildContest(),
    ];

void checkUnnamed2958(core.List<api.Contest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContest(o[0]);
  checkContest(o[1]);
}

core.List<api.PollingLocation> buildUnnamed2959() => [
      buildPollingLocation(),
      buildPollingLocation(),
    ];

void checkUnnamed2959(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

core.List<api.PollingLocation> buildUnnamed2960() => [
      buildPollingLocation(),
      buildPollingLocation(),
    ];

void checkUnnamed2960(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

core.List<api.Election> buildUnnamed2961() => [
      buildElection(),
      buildElection(),
    ];

void checkUnnamed2961(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0]);
  checkElection(o[1]);
}

core.List<api.PollingLocation> buildUnnamed2962() => [
      buildPollingLocation(),
      buildPollingLocation(),
    ];

void checkUnnamed2962(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

core.List<api.AdministrationRegion> buildUnnamed2963() => [
      buildAdministrationRegion(),
      buildAdministrationRegion(),
    ];

void checkUnnamed2963(core.List<api.AdministrationRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrationRegion(o[0]);
  checkAdministrationRegion(o[1]);
}

core.int buildCounterVoterInfoResponse = 0;
api.VoterInfoResponse buildVoterInfoResponse() {
  final o = api.VoterInfoResponse();
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    o.contests = buildUnnamed2958();
    o.dropOffLocations = buildUnnamed2959();
    o.earlyVoteSites = buildUnnamed2960();
    o.election = buildElection();
    o.kind = 'foo';
    o.mailOnly = true;
    o.normalizedInput = buildSimpleAddressType();
    o.otherElections = buildUnnamed2961();
    o.pollingLocations = buildUnnamed2962();
    o.precinctId = 'foo';
    o.state = buildUnnamed2963();
  }
  buildCounterVoterInfoResponse--;
  return o;
}

void checkVoterInfoResponse(api.VoterInfoResponse o) {
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    checkUnnamed2958(o.contests!);
    checkUnnamed2959(o.dropOffLocations!);
    checkUnnamed2960(o.earlyVoteSites!);
    checkElection(o.election!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.mailOnly!, unittest.isTrue);
    checkSimpleAddressType(o.normalizedInput!);
    checkUnnamed2961(o.otherElections!);
    checkUnnamed2962(o.pollingLocations!);
    unittest.expect(
      o.precinctId!,
      unittest.equals('foo'),
    );
    checkUnnamed2963(o.state!);
  }
  buildCounterVoterInfoResponse--;
}

core.List<core.String> buildUnnamed2964() => [
      'foo',
      'foo',
    ];

void checkUnnamed2964(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2965() => [
      'foo',
      'foo',
    ];

void checkUnnamed2965(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2966() => [
      'foo',
      'foo',
    ];

void checkUnnamed2966(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2967() => [
      'foo',
      'foo',
    ];

void checkUnnamed2967(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

void main() {
  unittest.group('obj-schema-AdministrationRegion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministrationRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministrationRegion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministrationRegion(od);
    });
  });

  unittest.group('obj-schema-AdministrativeBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministrativeBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministrativeBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministrativeBody(od);
    });
  });

  unittest.group('obj-schema-Candidate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCandidate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Candidate.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCandidate(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Channel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-Contest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Contest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContest(od);
    });
  });

  unittest.group('obj-schema-DivisionSearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDivisionSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DivisionSearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDivisionSearchResponse(od);
    });
  });

  unittest.group('obj-schema-DivisionSearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDivisionSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DivisionSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDivisionSearchResult(od);
    });
  });

  unittest.group('obj-schema-Election', () {
    unittest.test('to-json--from-json', () async {
      final o = buildElection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Election.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkElection(od);
    });
  });

  unittest.group('obj-schema-ElectionOfficial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildElectionOfficial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ElectionOfficial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkElectionOfficial(od);
    });
  });

  unittest.group('obj-schema-ElectionsQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildElectionsQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ElectionsQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkElectionsQueryResponse(od);
    });
  });

  unittest.group('obj-schema-ElectoralDistrict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildElectoralDistrict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ElectoralDistrict.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkElectoralDistrict(od);
    });
  });

  unittest.group('obj-schema-GeographicDivision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeographicDivision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeographicDivision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeographicDivision(od);
    });
  });

  unittest.group('obj-schema-Office', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOffice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Office.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOffice(od);
    });
  });

  unittest.group('obj-schema-Official', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfficial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Official.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOfficial(od);
    });
  });

  unittest.group('obj-schema-PollingLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPollingLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PollingLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPollingLocation(od);
    });
  });

  unittest.group('obj-schema-RepresentativeInfoData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepresentativeInfoData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepresentativeInfoData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepresentativeInfoData(od);
    });
  });

  unittest.group('obj-schema-RepresentativeInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepresentativeInfoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepresentativeInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepresentativeInfoResponse(od);
    });
  });

  unittest.group('obj-schema-SimpleAddressType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimpleAddressType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimpleAddressType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSimpleAddressType(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od);
    });
  });

  unittest.group('obj-schema-VoterInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoterInfoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoterInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoterInfoResponse(od);
    });
  });

  unittest.group('resource-DivisionsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).divisions;
      final arg_query = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('civicinfo/v2/divisions'),
        );
        pathOffset += 22;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDivisionSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(query: arg_query, $fields: arg_$fields);
      checkDivisionSearchResponse(response as api.DivisionSearchResponse);
    });
  });

  unittest.group('resource-ElectionsResource', () {
    unittest.test('method--electionQuery', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).elections;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('civicinfo/v2/elections'),
        );
        pathOffset += 22;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildElectionsQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.electionQuery($fields: arg_$fields);
      checkElectionsQueryResponse(response as api.ElectionsQueryResponse);
    });

    unittest.test('method--voterInfoQuery', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).elections;
      final arg_address = 'foo';
      final arg_electionId = 'foo';
      final arg_officialOnly = true;
      final arg_returnAllAvailableData = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('civicinfo/v2/voterinfo'),
        );
        pathOffset += 22;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['address']!.first,
          unittest.equals(arg_address),
        );
        unittest.expect(
          queryMap['electionId']!.first,
          unittest.equals(arg_electionId),
        );
        unittest.expect(
          queryMap['officialOnly']!.first,
          unittest.equals('$arg_officialOnly'),
        );
        unittest.expect(
          queryMap['returnAllAvailableData']!.first,
          unittest.equals('$arg_returnAllAvailableData'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVoterInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.voterInfoQuery(arg_address,
          electionId: arg_electionId,
          officialOnly: arg_officialOnly,
          returnAllAvailableData: arg_returnAllAvailableData,
          $fields: arg_$fields);
      checkVoterInfoResponse(response as api.VoterInfoResponse);
    });
  });

  unittest.group('resource-RepresentativesResource', () {
    unittest.test('method--representativeInfoByAddress', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).representatives;
      final arg_address = 'foo';
      final arg_includeOffices = true;
      final arg_levels = buildUnnamed2964();
      final arg_roles = buildUnnamed2965();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('civicinfo/v2/representatives'),
        );
        pathOffset += 28;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['address']!.first,
          unittest.equals(arg_address),
        );
        unittest.expect(
          queryMap['includeOffices']!.first,
          unittest.equals('$arg_includeOffices'),
        );
        unittest.expect(
          queryMap['levels']!,
          unittest.equals(arg_levels),
        );
        unittest.expect(
          queryMap['roles']!,
          unittest.equals(arg_roles),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRepresentativeInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.representativeInfoByAddress(
          address: arg_address,
          includeOffices: arg_includeOffices,
          levels: arg_levels,
          roles: arg_roles,
          $fields: arg_$fields);
      checkRepresentativeInfoResponse(
          response as api.RepresentativeInfoResponse);
    });

    unittest.test('method--representativeInfoByDivision', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).representatives;
      final arg_ocdId = 'foo';
      final arg_levels = buildUnnamed2966();
      final arg_recursive = true;
      final arg_roles = buildUnnamed2967();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('civicinfo/v2/representatives/'),
        );
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_ocdId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['levels']!,
          unittest.equals(arg_levels),
        );
        unittest.expect(
          queryMap['recursive']!.first,
          unittest.equals('$arg_recursive'),
        );
        unittest.expect(
          queryMap['roles']!,
          unittest.equals(arg_roles),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRepresentativeInfoData());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.representativeInfoByDivision(arg_ocdId,
          levels: arg_levels,
          recursive: arg_recursive,
          roles: arg_roles,
          $fields: arg_$fields);
      checkRepresentativeInfoData(response as api.RepresentativeInfoData);
    });
  });
}
