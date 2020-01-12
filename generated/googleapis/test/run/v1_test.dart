library googleapis.run.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/run/v1.dart' as api;

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
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAddressable = 0;
buildAddressable() {
  var o = new api.Addressable();
  buildCounterAddressable++;
  if (buildCounterAddressable < 3) {
    o.url = "foo";
  }
  buildCounterAddressable--;
  return o;
}

checkAddressable(api.Addressable o) {
  buildCounterAddressable++;
  if (buildCounterAddressable < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAddressable--;
}

buildUnnamed1265() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed1265(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1265();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1265(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed1266() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1266(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1266();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1266(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizedDomain = 0;
buildAuthorizedDomain() {
  var o = new api.AuthorizedDomain();
  buildCounterAuthorizedDomain++;
  if (buildCounterAuthorizedDomain < 3) {
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterAuthorizedDomain--;
  return o;
}

checkAuthorizedDomain(api.AuthorizedDomain o) {
  buildCounterAuthorizedDomain++;
  if (buildCounterAuthorizedDomain < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAuthorizedDomain--;
}

buildUnnamed1267() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1267(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed1267();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed1267(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterConfigMapEnvSource = 0;
buildConfigMapEnvSource() {
  var o = new api.ConfigMapEnvSource();
  buildCounterConfigMapEnvSource++;
  if (buildCounterConfigMapEnvSource < 3) {
    o.localObjectReference = buildLocalObjectReference();
    o.name = "foo";
    o.optional = true;
  }
  buildCounterConfigMapEnvSource--;
  return o;
}

checkConfigMapEnvSource(api.ConfigMapEnvSource o) {
  buildCounterConfigMapEnvSource++;
  if (buildCounterConfigMapEnvSource < 3) {
    checkLocalObjectReference(o.localObjectReference);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterConfigMapEnvSource--;
}

core.int buildCounterConfigMapKeySelector = 0;
buildConfigMapKeySelector() {
  var o = new api.ConfigMapKeySelector();
  buildCounterConfigMapKeySelector++;
  if (buildCounterConfigMapKeySelector < 3) {
    o.key = "foo";
    o.localObjectReference = buildLocalObjectReference();
    o.name = "foo";
    o.optional = true;
  }
  buildCounterConfigMapKeySelector--;
  return o;
}

checkConfigMapKeySelector(api.ConfigMapKeySelector o) {
  buildCounterConfigMapKeySelector++;
  if (buildCounterConfigMapKeySelector < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkLocalObjectReference(o.localObjectReference);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterConfigMapKeySelector--;
}

buildUnnamed1268() {
  var o = new core.List<api.KeyToPath>();
  o.add(buildKeyToPath());
  o.add(buildKeyToPath());
  return o;
}

checkUnnamed1268(core.List<api.KeyToPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyToPath(o[0]);
  checkKeyToPath(o[1]);
}

core.int buildCounterConfigMapVolumeSource = 0;
buildConfigMapVolumeSource() {
  var o = new api.ConfigMapVolumeSource();
  buildCounterConfigMapVolumeSource++;
  if (buildCounterConfigMapVolumeSource < 3) {
    o.defaultMode = 42;
    o.items = buildUnnamed1268();
    o.name = "foo";
    o.optional = true;
  }
  buildCounterConfigMapVolumeSource--;
  return o;
}

checkConfigMapVolumeSource(api.ConfigMapVolumeSource o) {
  buildCounterConfigMapVolumeSource++;
  if (buildCounterConfigMapVolumeSource < 3) {
    unittest.expect(o.defaultMode, unittest.equals(42));
    checkUnnamed1268(o.items);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterConfigMapVolumeSource--;
}

core.int buildCounterConfiguration = 0;
buildConfiguration() {
  var o = new api.Configuration();
  buildCounterConfiguration++;
  if (buildCounterConfiguration < 3) {
    o.apiVersion = "foo";
    o.kind = "foo";
    o.metadata = buildObjectMeta();
    o.spec = buildConfigurationSpec();
    o.status = buildConfigurationStatus();
  }
  buildCounterConfiguration--;
  return o;
}

checkConfiguration(api.Configuration o) {
  buildCounterConfiguration++;
  if (buildCounterConfiguration < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata);
    checkConfigurationSpec(o.spec);
    checkConfigurationStatus(o.status);
  }
  buildCounterConfiguration--;
}

core.int buildCounterConfigurationSpec = 0;
buildConfigurationSpec() {
  var o = new api.ConfigurationSpec();
  buildCounterConfigurationSpec++;
  if (buildCounterConfigurationSpec < 3) {
    o.template = buildRevisionTemplate();
  }
  buildCounterConfigurationSpec--;
  return o;
}

checkConfigurationSpec(api.ConfigurationSpec o) {
  buildCounterConfigurationSpec++;
  if (buildCounterConfigurationSpec < 3) {
    checkRevisionTemplate(o.template);
  }
  buildCounterConfigurationSpec--;
}

buildUnnamed1269() {
  var o = new core.List<api.GoogleCloudRunV1Condition>();
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

checkUnnamed1269(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterConfigurationStatus = 0;
buildConfigurationStatus() {
  var o = new api.ConfigurationStatus();
  buildCounterConfigurationStatus++;
  if (buildCounterConfigurationStatus < 3) {
    o.conditions = buildUnnamed1269();
    o.latestCreatedRevisionName = "foo";
    o.latestReadyRevisionName = "foo";
    o.observedGeneration = 42;
  }
  buildCounterConfigurationStatus--;
  return o;
}

checkConfigurationStatus(api.ConfigurationStatus o) {
  buildCounterConfigurationStatus++;
  if (buildCounterConfigurationStatus < 3) {
    checkUnnamed1269(o.conditions);
    unittest.expect(o.latestCreatedRevisionName, unittest.equals('foo'));
    unittest.expect(o.latestReadyRevisionName, unittest.equals('foo'));
    unittest.expect(o.observedGeneration, unittest.equals(42));
  }
  buildCounterConfigurationStatus--;
}

buildUnnamed1270() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1270(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1271() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1271(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1272() {
  var o = new core.List<api.EnvVar>();
  o.add(buildEnvVar());
  o.add(buildEnvVar());
  return o;
}

checkUnnamed1272(core.List<api.EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvVar(o[0]);
  checkEnvVar(o[1]);
}

buildUnnamed1273() {
  var o = new core.List<api.EnvFromSource>();
  o.add(buildEnvFromSource());
  o.add(buildEnvFromSource());
  return o;
}

checkUnnamed1273(core.List<api.EnvFromSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvFromSource(o[0]);
  checkEnvFromSource(o[1]);
}

buildUnnamed1274() {
  var o = new core.List<api.ContainerPort>();
  o.add(buildContainerPort());
  o.add(buildContainerPort());
  return o;
}

checkUnnamed1274(core.List<api.ContainerPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerPort(o[0]);
  checkContainerPort(o[1]);
}

buildUnnamed1275() {
  var o = new core.List<api.VolumeMount>();
  o.add(buildVolumeMount());
  o.add(buildVolumeMount());
  return o;
}

checkUnnamed1275(core.List<api.VolumeMount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeMount(o[0]);
  checkVolumeMount(o[1]);
}

core.int buildCounterContainer = 0;
buildContainer() {
  var o = new api.Container();
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    o.args = buildUnnamed1270();
    o.command = buildUnnamed1271();
    o.env = buildUnnamed1272();
    o.envFrom = buildUnnamed1273();
    o.image = "foo";
    o.imagePullPolicy = "foo";
    o.livenessProbe = buildProbe();
    o.name = "foo";
    o.ports = buildUnnamed1274();
    o.readinessProbe = buildProbe();
    o.resources = buildResourceRequirements();
    o.securityContext = buildSecurityContext();
    o.terminationMessagePath = "foo";
    o.terminationMessagePolicy = "foo";
    o.volumeMounts = buildUnnamed1275();
    o.workingDir = "foo";
  }
  buildCounterContainer--;
  return o;
}

checkContainer(api.Container o) {
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    checkUnnamed1270(o.args);
    checkUnnamed1271(o.command);
    checkUnnamed1272(o.env);
    checkUnnamed1273(o.envFrom);
    unittest.expect(o.image, unittest.equals('foo'));
    unittest.expect(o.imagePullPolicy, unittest.equals('foo'));
    checkProbe(o.livenessProbe);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1274(o.ports);
    checkProbe(o.readinessProbe);
    checkResourceRequirements(o.resources);
    checkSecurityContext(o.securityContext);
    unittest.expect(o.terminationMessagePath, unittest.equals('foo'));
    unittest.expect(o.terminationMessagePolicy, unittest.equals('foo'));
    checkUnnamed1275(o.volumeMounts);
    unittest.expect(o.workingDir, unittest.equals('foo'));
  }
  buildCounterContainer--;
}

core.int buildCounterContainerPort = 0;
buildContainerPort() {
  var o = new api.ContainerPort();
  buildCounterContainerPort++;
  if (buildCounterContainerPort < 3) {
    o.containerPort = 42;
    o.name = "foo";
    o.protocol = "foo";
  }
  buildCounterContainerPort--;
  return o;
}

checkContainerPort(api.ContainerPort o) {
  buildCounterContainerPort++;
  if (buildCounterContainerPort < 3) {
    unittest.expect(o.containerPort, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
  }
  buildCounterContainerPort--;
}

core.int buildCounterDomainMapping = 0;
buildDomainMapping() {
  var o = new api.DomainMapping();
  buildCounterDomainMapping++;
  if (buildCounterDomainMapping < 3) {
    o.apiVersion = "foo";
    o.kind = "foo";
    o.metadata = buildObjectMeta();
    o.spec = buildDomainMappingSpec();
    o.status = buildDomainMappingStatus();
  }
  buildCounterDomainMapping--;
  return o;
}

checkDomainMapping(api.DomainMapping o) {
  buildCounterDomainMapping++;
  if (buildCounterDomainMapping < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata);
    checkDomainMappingSpec(o.spec);
    checkDomainMappingStatus(o.status);
  }
  buildCounterDomainMapping--;
}

core.int buildCounterDomainMappingSpec = 0;
buildDomainMappingSpec() {
  var o = new api.DomainMappingSpec();
  buildCounterDomainMappingSpec++;
  if (buildCounterDomainMappingSpec < 3) {
    o.certificateMode = "foo";
    o.forceOverride = true;
    o.routeName = "foo";
  }
  buildCounterDomainMappingSpec--;
  return o;
}

checkDomainMappingSpec(api.DomainMappingSpec o) {
  buildCounterDomainMappingSpec++;
  if (buildCounterDomainMappingSpec < 3) {
    unittest.expect(o.certificateMode, unittest.equals('foo'));
    unittest.expect(o.forceOverride, unittest.isTrue);
    unittest.expect(o.routeName, unittest.equals('foo'));
  }
  buildCounterDomainMappingSpec--;
}

buildUnnamed1276() {
  var o = new core.List<api.GoogleCloudRunV1Condition>();
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

checkUnnamed1276(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

buildUnnamed1277() {
  var o = new core.List<api.ResourceRecord>();
  o.add(buildResourceRecord());
  o.add(buildResourceRecord());
  return o;
}

checkUnnamed1277(core.List<api.ResourceRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecord(o[0]);
  checkResourceRecord(o[1]);
}

core.int buildCounterDomainMappingStatus = 0;
buildDomainMappingStatus() {
  var o = new api.DomainMappingStatus();
  buildCounterDomainMappingStatus++;
  if (buildCounterDomainMappingStatus < 3) {
    o.conditions = buildUnnamed1276();
    o.mappedRouteName = "foo";
    o.observedGeneration = 42;
    o.resourceRecords = buildUnnamed1277();
  }
  buildCounterDomainMappingStatus--;
  return o;
}

checkDomainMappingStatus(api.DomainMappingStatus o) {
  buildCounterDomainMappingStatus++;
  if (buildCounterDomainMappingStatus < 3) {
    checkUnnamed1276(o.conditions);
    unittest.expect(o.mappedRouteName, unittest.equals('foo'));
    unittest.expect(o.observedGeneration, unittest.equals(42));
    checkUnnamed1277(o.resourceRecords);
  }
  buildCounterDomainMappingStatus--;
}

core.int buildCounterEnvFromSource = 0;
buildEnvFromSource() {
  var o = new api.EnvFromSource();
  buildCounterEnvFromSource++;
  if (buildCounterEnvFromSource < 3) {
    o.configMapRef = buildConfigMapEnvSource();
    o.prefix = "foo";
    o.secretRef = buildSecretEnvSource();
  }
  buildCounterEnvFromSource--;
  return o;
}

checkEnvFromSource(api.EnvFromSource o) {
  buildCounterEnvFromSource++;
  if (buildCounterEnvFromSource < 3) {
    checkConfigMapEnvSource(o.configMapRef);
    unittest.expect(o.prefix, unittest.equals('foo'));
    checkSecretEnvSource(o.secretRef);
  }
  buildCounterEnvFromSource--;
}

core.int buildCounterEnvVar = 0;
buildEnvVar() {
  var o = new api.EnvVar();
  buildCounterEnvVar++;
  if (buildCounterEnvVar < 3) {
    o.name = "foo";
    o.value = "foo";
    o.valueFrom = buildEnvVarSource();
  }
  buildCounterEnvVar--;
  return o;
}

checkEnvVar(api.EnvVar o) {
  buildCounterEnvVar++;
  if (buildCounterEnvVar < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    checkEnvVarSource(o.valueFrom);
  }
  buildCounterEnvVar--;
}

core.int buildCounterEnvVarSource = 0;
buildEnvVarSource() {
  var o = new api.EnvVarSource();
  buildCounterEnvVarSource++;
  if (buildCounterEnvVarSource < 3) {
    o.configMapKeyRef = buildConfigMapKeySelector();
    o.secretKeyRef = buildSecretKeySelector();
  }
  buildCounterEnvVarSource--;
  return o;
}

checkEnvVarSource(api.EnvVarSource o) {
  buildCounterEnvVarSource++;
  if (buildCounterEnvVarSource < 3) {
    checkConfigMapKeySelector(o.configMapKeyRef);
    checkSecretKeySelector(o.secretKeyRef);
  }
  buildCounterEnvVarSource--;
}

core.int buildCounterExecAction = 0;
buildExecAction() {
  var o = new api.ExecAction();
  buildCounterExecAction++;
  if (buildCounterExecAction < 3) {
    o.command = "foo";
  }
  buildCounterExecAction--;
  return o;
}

checkExecAction(api.ExecAction o) {
  buildCounterExecAction++;
  if (buildCounterExecAction < 3) {
    unittest.expect(o.command, unittest.equals('foo'));
  }
  buildCounterExecAction--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterGoogleCloudRunV1Condition = 0;
buildGoogleCloudRunV1Condition() {
  var o = new api.GoogleCloudRunV1Condition();
  buildCounterGoogleCloudRunV1Condition++;
  if (buildCounterGoogleCloudRunV1Condition < 3) {
    o.lastTransitionTime = "foo";
    o.message = "foo";
    o.reason = "foo";
    o.severity = "foo";
    o.status = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudRunV1Condition--;
  return o;
}

checkGoogleCloudRunV1Condition(api.GoogleCloudRunV1Condition o) {
  buildCounterGoogleCloudRunV1Condition++;
  if (buildCounterGoogleCloudRunV1Condition < 3) {
    unittest.expect(o.lastTransitionTime, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRunV1Condition--;
}

buildUnnamed1278() {
  var o = new core.List<api.HTTPHeader>();
  o.add(buildHTTPHeader());
  o.add(buildHTTPHeader());
  return o;
}

checkUnnamed1278(core.List<api.HTTPHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHTTPHeader(o[0]);
  checkHTTPHeader(o[1]);
}

core.int buildCounterHTTPGetAction = 0;
buildHTTPGetAction() {
  var o = new api.HTTPGetAction();
  buildCounterHTTPGetAction++;
  if (buildCounterHTTPGetAction < 3) {
    o.host = "foo";
    o.httpHeaders = buildUnnamed1278();
    o.path = "foo";
    o.scheme = "foo";
  }
  buildCounterHTTPGetAction--;
  return o;
}

checkHTTPGetAction(api.HTTPGetAction o) {
  buildCounterHTTPGetAction++;
  if (buildCounterHTTPGetAction < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    checkUnnamed1278(o.httpHeaders);
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.scheme, unittest.equals('foo'));
  }
  buildCounterHTTPGetAction--;
}

core.int buildCounterHTTPHeader = 0;
buildHTTPHeader() {
  var o = new api.HTTPHeader();
  buildCounterHTTPHeader++;
  if (buildCounterHTTPHeader < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterHTTPHeader--;
  return o;
}

checkHTTPHeader(api.HTTPHeader o) {
  buildCounterHTTPHeader++;
  if (buildCounterHTTPHeader < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterHTTPHeader--;
}

core.int buildCounterHandler = 0;
buildHandler() {
  var o = new api.Handler();
  buildCounterHandler++;
  if (buildCounterHandler < 3) {
    o.exec = buildExecAction();
    o.httpGet = buildHTTPGetAction();
    o.tcpSocket = buildTCPSocketAction();
  }
  buildCounterHandler--;
  return o;
}

checkHandler(api.Handler o) {
  buildCounterHandler++;
  if (buildCounterHandler < 3) {
    checkExecAction(o.exec);
    checkHTTPGetAction(o.httpGet);
    checkTCPSocketAction(o.tcpSocket);
  }
  buildCounterHandler--;
}

core.int buildCounterIntOrString = 0;
buildIntOrString() {
  var o = new api.IntOrString();
  buildCounterIntOrString++;
  if (buildCounterIntOrString < 3) {
    o.intVal = 42;
    o.strVal = "foo";
    o.type = 42;
  }
  buildCounterIntOrString--;
  return o;
}

checkIntOrString(api.IntOrString o) {
  buildCounterIntOrString++;
  if (buildCounterIntOrString < 3) {
    unittest.expect(o.intVal, unittest.equals(42));
    unittest.expect(o.strVal, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals(42));
  }
  buildCounterIntOrString--;
}

core.int buildCounterKeyToPath = 0;
buildKeyToPath() {
  var o = new api.KeyToPath();
  buildCounterKeyToPath++;
  if (buildCounterKeyToPath < 3) {
    o.key = "foo";
    o.mode = 42;
    o.path = "foo";
  }
  buildCounterKeyToPath--;
  return o;
}

checkKeyToPath(api.KeyToPath o) {
  buildCounterKeyToPath++;
  if (buildCounterKeyToPath < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.mode, unittest.equals(42));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterKeyToPath--;
}

buildUnnamed1279() {
  var o = new core.List<api.AuthorizedDomain>();
  o.add(buildAuthorizedDomain());
  o.add(buildAuthorizedDomain());
  return o;
}

checkUnnamed1279(core.List<api.AuthorizedDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedDomain(o[0]);
  checkAuthorizedDomain(o[1]);
}

core.int buildCounterListAuthorizedDomainsResponse = 0;
buildListAuthorizedDomainsResponse() {
  var o = new api.ListAuthorizedDomainsResponse();
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    o.domains = buildUnnamed1279();
    o.nextPageToken = "foo";
  }
  buildCounterListAuthorizedDomainsResponse--;
  return o;
}

checkListAuthorizedDomainsResponse(api.ListAuthorizedDomainsResponse o) {
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    checkUnnamed1279(o.domains);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAuthorizedDomainsResponse--;
}

buildUnnamed1280() {
  var o = new core.List<api.Configuration>();
  o.add(buildConfiguration());
  o.add(buildConfiguration());
  return o;
}

checkUnnamed1280(core.List<api.Configuration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfiguration(o[0]);
  checkConfiguration(o[1]);
}

buildUnnamed1281() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1281(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConfigurationsResponse = 0;
buildListConfigurationsResponse() {
  var o = new api.ListConfigurationsResponse();
  buildCounterListConfigurationsResponse++;
  if (buildCounterListConfigurationsResponse < 3) {
    o.apiVersion = "foo";
    o.items = buildUnnamed1280();
    o.kind = "foo";
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1281();
  }
  buildCounterListConfigurationsResponse--;
  return o;
}

checkListConfigurationsResponse(api.ListConfigurationsResponse o) {
  buildCounterListConfigurationsResponse++;
  if (buildCounterListConfigurationsResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1280(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata);
    checkUnnamed1281(o.unreachable);
  }
  buildCounterListConfigurationsResponse--;
}

buildUnnamed1282() {
  var o = new core.List<api.DomainMapping>();
  o.add(buildDomainMapping());
  o.add(buildDomainMapping());
  return o;
}

checkUnnamed1282(core.List<api.DomainMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainMapping(o[0]);
  checkDomainMapping(o[1]);
}

buildUnnamed1283() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1283(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDomainMappingsResponse = 0;
buildListDomainMappingsResponse() {
  var o = new api.ListDomainMappingsResponse();
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    o.apiVersion = "foo";
    o.items = buildUnnamed1282();
    o.kind = "foo";
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1283();
  }
  buildCounterListDomainMappingsResponse--;
  return o;
}

checkListDomainMappingsResponse(api.ListDomainMappingsResponse o) {
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1282(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata);
    checkUnnamed1283(o.unreachable);
  }
  buildCounterListDomainMappingsResponse--;
}

buildUnnamed1284() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed1284(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed1284();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed1284(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.int buildCounterListMeta = 0;
buildListMeta() {
  var o = new api.ListMeta();
  buildCounterListMeta++;
  if (buildCounterListMeta < 3) {
    o.continue_ = "foo";
    o.resourceVersion = "foo";
    o.selfLink = "foo";
  }
  buildCounterListMeta--;
  return o;
}

checkListMeta(api.ListMeta o) {
  buildCounterListMeta++;
  if (buildCounterListMeta < 3) {
    unittest.expect(o.continue_, unittest.equals('foo'));
    unittest.expect(o.resourceVersion, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterListMeta--;
}

buildUnnamed1285() {
  var o = new core.List<api.Revision>();
  o.add(buildRevision());
  o.add(buildRevision());
  return o;
}

checkUnnamed1285(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

buildUnnamed1286() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1286(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRevisionsResponse = 0;
buildListRevisionsResponse() {
  var o = new api.ListRevisionsResponse();
  buildCounterListRevisionsResponse++;
  if (buildCounterListRevisionsResponse < 3) {
    o.apiVersion = "foo";
    o.items = buildUnnamed1285();
    o.kind = "foo";
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1286();
  }
  buildCounterListRevisionsResponse--;
  return o;
}

checkListRevisionsResponse(api.ListRevisionsResponse o) {
  buildCounterListRevisionsResponse++;
  if (buildCounterListRevisionsResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1285(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata);
    checkUnnamed1286(o.unreachable);
  }
  buildCounterListRevisionsResponse--;
}

buildUnnamed1287() {
  var o = new core.List<api.Route>();
  o.add(buildRoute());
  o.add(buildRoute());
  return o;
}

checkUnnamed1287(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

buildUnnamed1288() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1288(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRoutesResponse = 0;
buildListRoutesResponse() {
  var o = new api.ListRoutesResponse();
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    o.apiVersion = "foo";
    o.items = buildUnnamed1287();
    o.kind = "foo";
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1288();
  }
  buildCounterListRoutesResponse--;
  return o;
}

checkListRoutesResponse(api.ListRoutesResponse o) {
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1287(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata);
    checkUnnamed1288(o.unreachable);
  }
  buildCounterListRoutesResponse--;
}

buildUnnamed1289() {
  var o = new core.List<api.Service>();
  o.add(buildService());
  o.add(buildService());
  return o;
}

checkUnnamed1289(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

buildUnnamed1290() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1290(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListServicesResponse = 0;
buildListServicesResponse() {
  var o = new api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.apiVersion = "foo";
    o.items = buildUnnamed1289();
    o.kind = "foo";
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1290();
  }
  buildCounterListServicesResponse--;
  return o;
}

checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1289(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata);
    checkUnnamed1290(o.unreachable);
  }
  buildCounterListServicesResponse--;
}

core.int buildCounterLocalObjectReference = 0;
buildLocalObjectReference() {
  var o = new api.LocalObjectReference();
  buildCounterLocalObjectReference++;
  if (buildCounterLocalObjectReference < 3) {
    o.name = "foo";
  }
  buildCounterLocalObjectReference--;
  return o;
}

checkLocalObjectReference(api.LocalObjectReference o) {
  buildCounterLocalObjectReference++;
  if (buildCounterLocalObjectReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocalObjectReference--;
}

buildUnnamed1291() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1291(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1292() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1292(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed1291();
    o.locationId = "foo";
    o.metadata = buildUnnamed1292();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1291(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed1292(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed1293() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1293(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1294() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1294(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1295() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1295(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1296() {
  var o = new core.List<api.OwnerReference>();
  o.add(buildOwnerReference());
  o.add(buildOwnerReference());
  return o;
}

checkUnnamed1296(core.List<api.OwnerReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOwnerReference(o[0]);
  checkOwnerReference(o[1]);
}

core.int buildCounterObjectMeta = 0;
buildObjectMeta() {
  var o = new api.ObjectMeta();
  buildCounterObjectMeta++;
  if (buildCounterObjectMeta < 3) {
    o.annotations = buildUnnamed1293();
    o.clusterName = "foo";
    o.creationTimestamp = "foo";
    o.deletionGracePeriodSeconds = 42;
    o.deletionTimestamp = "foo";
    o.finalizers = buildUnnamed1294();
    o.generateName = "foo";
    o.generation = 42;
    o.labels = buildUnnamed1295();
    o.name = "foo";
    o.namespace = "foo";
    o.ownerReferences = buildUnnamed1296();
    o.resourceVersion = "foo";
    o.selfLink = "foo";
    o.uid = "foo";
  }
  buildCounterObjectMeta--;
  return o;
}

checkObjectMeta(api.ObjectMeta o) {
  buildCounterObjectMeta++;
  if (buildCounterObjectMeta < 3) {
    checkUnnamed1293(o.annotations);
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.deletionGracePeriodSeconds, unittest.equals(42));
    unittest.expect(o.deletionTimestamp, unittest.equals('foo'));
    checkUnnamed1294(o.finalizers);
    unittest.expect(o.generateName, unittest.equals('foo'));
    unittest.expect(o.generation, unittest.equals(42));
    checkUnnamed1295(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namespace, unittest.equals('foo'));
    checkUnnamed1296(o.ownerReferences);
    unittest.expect(o.resourceVersion, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterObjectMeta--;
}

core.int buildCounterOwnerReference = 0;
buildOwnerReference() {
  var o = new api.OwnerReference();
  buildCounterOwnerReference++;
  if (buildCounterOwnerReference < 3) {
    o.apiVersion = "foo";
    o.blockOwnerDeletion = true;
    o.controller = true;
    o.kind = "foo";
    o.name = "foo";
    o.uid = "foo";
  }
  buildCounterOwnerReference--;
  return o;
}

checkOwnerReference(api.OwnerReference o) {
  buildCounterOwnerReference++;
  if (buildCounterOwnerReference < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.blockOwnerDeletion, unittest.isTrue);
    unittest.expect(o.controller, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterOwnerReference--;
}

buildUnnamed1297() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed1297(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed1298() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed1298(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1297();
    o.bindings = buildUnnamed1298();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1297(o.auditConfigs);
    checkUnnamed1298(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterProbe = 0;
buildProbe() {
  var o = new api.Probe();
  buildCounterProbe++;
  if (buildCounterProbe < 3) {
    o.failureThreshold = 42;
    o.handler = buildHandler();
    o.initialDelaySeconds = 42;
    o.periodSeconds = 42;
    o.successThreshold = 42;
    o.timeoutSeconds = 42;
  }
  buildCounterProbe--;
  return o;
}

checkProbe(api.Probe o) {
  buildCounterProbe++;
  if (buildCounterProbe < 3) {
    unittest.expect(o.failureThreshold, unittest.equals(42));
    checkHandler(o.handler);
    unittest.expect(o.initialDelaySeconds, unittest.equals(42));
    unittest.expect(o.periodSeconds, unittest.equals(42));
    unittest.expect(o.successThreshold, unittest.equals(42));
    unittest.expect(o.timeoutSeconds, unittest.equals(42));
  }
  buildCounterProbe--;
}

core.int buildCounterResourceRecord = 0;
buildResourceRecord() {
  var o = new api.ResourceRecord();
  buildCounterResourceRecord++;
  if (buildCounterResourceRecord < 3) {
    o.name = "foo";
    o.rrdata = "foo";
    o.type = "foo";
  }
  buildCounterResourceRecord--;
  return o;
}

checkResourceRecord(api.ResourceRecord o) {
  buildCounterResourceRecord++;
  if (buildCounterResourceRecord < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rrdata, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResourceRecord--;
}

buildUnnamed1299() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1299(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1300() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1300(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterResourceRequirements = 0;
buildResourceRequirements() {
  var o = new api.ResourceRequirements();
  buildCounterResourceRequirements++;
  if (buildCounterResourceRequirements < 3) {
    o.limits = buildUnnamed1299();
    o.requests = buildUnnamed1300();
  }
  buildCounterResourceRequirements--;
  return o;
}

checkResourceRequirements(api.ResourceRequirements o) {
  buildCounterResourceRequirements++;
  if (buildCounterResourceRequirements < 3) {
    checkUnnamed1299(o.limits);
    checkUnnamed1300(o.requests);
  }
  buildCounterResourceRequirements--;
}

core.int buildCounterRevision = 0;
buildRevision() {
  var o = new api.Revision();
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    o.apiVersion = "foo";
    o.kind = "foo";
    o.metadata = buildObjectMeta();
    o.spec = buildRevisionSpec();
    o.status = buildRevisionStatus();
  }
  buildCounterRevision--;
  return o;
}

checkRevision(api.Revision o) {
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata);
    checkRevisionSpec(o.spec);
    checkRevisionStatus(o.status);
  }
  buildCounterRevision--;
}

buildUnnamed1301() {
  var o = new core.List<api.Container>();
  o.add(buildContainer());
  o.add(buildContainer());
  return o;
}

checkUnnamed1301(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

buildUnnamed1302() {
  var o = new core.List<api.Volume>();
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

checkUnnamed1302(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterRevisionSpec = 0;
buildRevisionSpec() {
  var o = new api.RevisionSpec();
  buildCounterRevisionSpec++;
  if (buildCounterRevisionSpec < 3) {
    o.containerConcurrency = 42;
    o.containers = buildUnnamed1301();
    o.serviceAccountName = "foo";
    o.timeoutSeconds = 42;
    o.volumes = buildUnnamed1302();
  }
  buildCounterRevisionSpec--;
  return o;
}

checkRevisionSpec(api.RevisionSpec o) {
  buildCounterRevisionSpec++;
  if (buildCounterRevisionSpec < 3) {
    unittest.expect(o.containerConcurrency, unittest.equals(42));
    checkUnnamed1301(o.containers);
    unittest.expect(o.serviceAccountName, unittest.equals('foo'));
    unittest.expect(o.timeoutSeconds, unittest.equals(42));
    checkUnnamed1302(o.volumes);
  }
  buildCounterRevisionSpec--;
}

buildUnnamed1303() {
  var o = new core.List<api.GoogleCloudRunV1Condition>();
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

checkUnnamed1303(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterRevisionStatus = 0;
buildRevisionStatus() {
  var o = new api.RevisionStatus();
  buildCounterRevisionStatus++;
  if (buildCounterRevisionStatus < 3) {
    o.conditions = buildUnnamed1303();
    o.imageDigest = "foo";
    o.logUrl = "foo";
    o.observedGeneration = 42;
    o.serviceName = "foo";
  }
  buildCounterRevisionStatus--;
  return o;
}

checkRevisionStatus(api.RevisionStatus o) {
  buildCounterRevisionStatus++;
  if (buildCounterRevisionStatus < 3) {
    checkUnnamed1303(o.conditions);
    unittest.expect(o.imageDigest, unittest.equals('foo'));
    unittest.expect(o.logUrl, unittest.equals('foo'));
    unittest.expect(o.observedGeneration, unittest.equals(42));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterRevisionStatus--;
}

core.int buildCounterRevisionTemplate = 0;
buildRevisionTemplate() {
  var o = new api.RevisionTemplate();
  buildCounterRevisionTemplate++;
  if (buildCounterRevisionTemplate < 3) {
    o.metadata = buildObjectMeta();
    o.spec = buildRevisionSpec();
  }
  buildCounterRevisionTemplate--;
  return o;
}

checkRevisionTemplate(api.RevisionTemplate o) {
  buildCounterRevisionTemplate++;
  if (buildCounterRevisionTemplate < 3) {
    checkObjectMeta(o.metadata);
    checkRevisionSpec(o.spec);
  }
  buildCounterRevisionTemplate--;
}

core.int buildCounterRoute = 0;
buildRoute() {
  var o = new api.Route();
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    o.apiVersion = "foo";
    o.kind = "foo";
    o.metadata = buildObjectMeta();
    o.spec = buildRouteSpec();
    o.status = buildRouteStatus();
  }
  buildCounterRoute--;
  return o;
}

checkRoute(api.Route o) {
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata);
    checkRouteSpec(o.spec);
    checkRouteStatus(o.status);
  }
  buildCounterRoute--;
}

buildUnnamed1304() {
  var o = new core.List<api.TrafficTarget>();
  o.add(buildTrafficTarget());
  o.add(buildTrafficTarget());
  return o;
}

checkUnnamed1304(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterRouteSpec = 0;
buildRouteSpec() {
  var o = new api.RouteSpec();
  buildCounterRouteSpec++;
  if (buildCounterRouteSpec < 3) {
    o.traffic = buildUnnamed1304();
  }
  buildCounterRouteSpec--;
  return o;
}

checkRouteSpec(api.RouteSpec o) {
  buildCounterRouteSpec++;
  if (buildCounterRouteSpec < 3) {
    checkUnnamed1304(o.traffic);
  }
  buildCounterRouteSpec--;
}

buildUnnamed1305() {
  var o = new core.List<api.GoogleCloudRunV1Condition>();
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

checkUnnamed1305(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

buildUnnamed1306() {
  var o = new core.List<api.TrafficTarget>();
  o.add(buildTrafficTarget());
  o.add(buildTrafficTarget());
  return o;
}

checkUnnamed1306(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterRouteStatus = 0;
buildRouteStatus() {
  var o = new api.RouteStatus();
  buildCounterRouteStatus++;
  if (buildCounterRouteStatus < 3) {
    o.address = buildAddressable();
    o.conditions = buildUnnamed1305();
    o.observedGeneration = 42;
    o.traffic = buildUnnamed1306();
    o.url = "foo";
  }
  buildCounterRouteStatus--;
  return o;
}

checkRouteStatus(api.RouteStatus o) {
  buildCounterRouteStatus++;
  if (buildCounterRouteStatus < 3) {
    checkAddressable(o.address);
    checkUnnamed1305(o.conditions);
    unittest.expect(o.observedGeneration, unittest.equals(42));
    checkUnnamed1306(o.traffic);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterRouteStatus--;
}

core.int buildCounterSecretEnvSource = 0;
buildSecretEnvSource() {
  var o = new api.SecretEnvSource();
  buildCounterSecretEnvSource++;
  if (buildCounterSecretEnvSource < 3) {
    o.localObjectReference = buildLocalObjectReference();
    o.name = "foo";
    o.optional = true;
  }
  buildCounterSecretEnvSource--;
  return o;
}

checkSecretEnvSource(api.SecretEnvSource o) {
  buildCounterSecretEnvSource++;
  if (buildCounterSecretEnvSource < 3) {
    checkLocalObjectReference(o.localObjectReference);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterSecretEnvSource--;
}

core.int buildCounterSecretKeySelector = 0;
buildSecretKeySelector() {
  var o = new api.SecretKeySelector();
  buildCounterSecretKeySelector++;
  if (buildCounterSecretKeySelector < 3) {
    o.key = "foo";
    o.localObjectReference = buildLocalObjectReference();
    o.name = "foo";
    o.optional = true;
  }
  buildCounterSecretKeySelector--;
  return o;
}

checkSecretKeySelector(api.SecretKeySelector o) {
  buildCounterSecretKeySelector++;
  if (buildCounterSecretKeySelector < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkLocalObjectReference(o.localObjectReference);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterSecretKeySelector--;
}

buildUnnamed1307() {
  var o = new core.List<api.KeyToPath>();
  o.add(buildKeyToPath());
  o.add(buildKeyToPath());
  return o;
}

checkUnnamed1307(core.List<api.KeyToPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyToPath(o[0]);
  checkKeyToPath(o[1]);
}

core.int buildCounterSecretVolumeSource = 0;
buildSecretVolumeSource() {
  var o = new api.SecretVolumeSource();
  buildCounterSecretVolumeSource++;
  if (buildCounterSecretVolumeSource < 3) {
    o.defaultMode = 42;
    o.items = buildUnnamed1307();
    o.optional = true;
    o.secretName = "foo";
  }
  buildCounterSecretVolumeSource--;
  return o;
}

checkSecretVolumeSource(api.SecretVolumeSource o) {
  buildCounterSecretVolumeSource++;
  if (buildCounterSecretVolumeSource < 3) {
    unittest.expect(o.defaultMode, unittest.equals(42));
    checkUnnamed1307(o.items);
    unittest.expect(o.optional, unittest.isTrue);
    unittest.expect(o.secretName, unittest.equals('foo'));
  }
  buildCounterSecretVolumeSource--;
}

core.int buildCounterSecurityContext = 0;
buildSecurityContext() {
  var o = new api.SecurityContext();
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    o.runAsUser = 42;
  }
  buildCounterSecurityContext--;
  return o;
}

checkSecurityContext(api.SecurityContext o) {
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    unittest.expect(o.runAsUser, unittest.equals(42));
  }
  buildCounterSecurityContext--;
}

core.int buildCounterService = 0;
buildService() {
  var o = new api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.apiVersion = "foo";
    o.kind = "foo";
    o.metadata = buildObjectMeta();
    o.spec = buildServiceSpec();
    o.status = buildServiceStatus();
  }
  buildCounterService--;
  return o;
}

checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata);
    checkServiceSpec(o.spec);
    checkServiceStatus(o.status);
  }
  buildCounterService--;
}

buildUnnamed1308() {
  var o = new core.List<api.TrafficTarget>();
  o.add(buildTrafficTarget());
  o.add(buildTrafficTarget());
  return o;
}

checkUnnamed1308(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterServiceSpec = 0;
buildServiceSpec() {
  var o = new api.ServiceSpec();
  buildCounterServiceSpec++;
  if (buildCounterServiceSpec < 3) {
    o.template = buildRevisionTemplate();
    o.traffic = buildUnnamed1308();
  }
  buildCounterServiceSpec--;
  return o;
}

checkServiceSpec(api.ServiceSpec o) {
  buildCounterServiceSpec++;
  if (buildCounterServiceSpec < 3) {
    checkRevisionTemplate(o.template);
    checkUnnamed1308(o.traffic);
  }
  buildCounterServiceSpec--;
}

buildUnnamed1309() {
  var o = new core.List<api.GoogleCloudRunV1Condition>();
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

checkUnnamed1309(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

buildUnnamed1310() {
  var o = new core.List<api.TrafficTarget>();
  o.add(buildTrafficTarget());
  o.add(buildTrafficTarget());
  return o;
}

checkUnnamed1310(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterServiceStatus = 0;
buildServiceStatus() {
  var o = new api.ServiceStatus();
  buildCounterServiceStatus++;
  if (buildCounterServiceStatus < 3) {
    o.address = buildAddressable();
    o.conditions = buildUnnamed1309();
    o.latestCreatedRevisionName = "foo";
    o.latestReadyRevisionName = "foo";
    o.observedGeneration = 42;
    o.traffic = buildUnnamed1310();
    o.url = "foo";
  }
  buildCounterServiceStatus--;
  return o;
}

checkServiceStatus(api.ServiceStatus o) {
  buildCounterServiceStatus++;
  if (buildCounterServiceStatus < 3) {
    checkAddressable(o.address);
    checkUnnamed1309(o.conditions);
    unittest.expect(o.latestCreatedRevisionName, unittest.equals('foo'));
    unittest.expect(o.latestReadyRevisionName, unittest.equals('foo'));
    unittest.expect(o.observedGeneration, unittest.equals(42));
    checkUnnamed1310(o.traffic);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterServiceStatus--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildStatusDetails();
    o.message = "foo";
    o.metadata = buildListMeta();
    o.reason = "foo";
    o.status = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkStatusDetails(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
    checkListMeta(o.metadata);
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStatusCause = 0;
buildStatusCause() {
  var o = new api.StatusCause();
  buildCounterStatusCause++;
  if (buildCounterStatusCause < 3) {
    o.field = "foo";
    o.message = "foo";
    o.reason = "foo";
  }
  buildCounterStatusCause--;
  return o;
}

checkStatusCause(api.StatusCause o) {
  buildCounterStatusCause++;
  if (buildCounterStatusCause < 3) {
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterStatusCause--;
}

buildUnnamed1311() {
  var o = new core.List<api.StatusCause>();
  o.add(buildStatusCause());
  o.add(buildStatusCause());
  return o;
}

checkUnnamed1311(core.List<api.StatusCause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCause(o[0]);
  checkStatusCause(o[1]);
}

core.int buildCounterStatusDetails = 0;
buildStatusDetails() {
  var o = new api.StatusDetails();
  buildCounterStatusDetails++;
  if (buildCounterStatusDetails < 3) {
    o.causes = buildUnnamed1311();
    o.group = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.retryAfterSeconds = 42;
    o.uid = "foo";
  }
  buildCounterStatusDetails--;
  return o;
}

checkStatusDetails(api.StatusDetails o) {
  buildCounterStatusDetails++;
  if (buildCounterStatusDetails < 3) {
    checkUnnamed1311(o.causes);
    unittest.expect(o.group, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.retryAfterSeconds, unittest.equals(42));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterStatusDetails--;
}

core.int buildCounterTCPSocketAction = 0;
buildTCPSocketAction() {
  var o = new api.TCPSocketAction();
  buildCounterTCPSocketAction++;
  if (buildCounterTCPSocketAction < 3) {
    o.host = "foo";
    o.port = buildIntOrString();
  }
  buildCounterTCPSocketAction--;
  return o;
}

checkTCPSocketAction(api.TCPSocketAction o) {
  buildCounterTCPSocketAction++;
  if (buildCounterTCPSocketAction < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    checkIntOrString(o.port);
  }
  buildCounterTCPSocketAction--;
}

buildUnnamed1312() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1312(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed1312();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1312(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed1313() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1313(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed1313();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1313(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTrafficTarget = 0;
buildTrafficTarget() {
  var o = new api.TrafficTarget();
  buildCounterTrafficTarget++;
  if (buildCounterTrafficTarget < 3) {
    o.configurationName = "foo";
    o.latestRevision = true;
    o.percent = 42;
    o.revisionName = "foo";
    o.tag = "foo";
    o.url = "foo";
  }
  buildCounterTrafficTarget--;
  return o;
}

checkTrafficTarget(api.TrafficTarget o) {
  buildCounterTrafficTarget++;
  if (buildCounterTrafficTarget < 3) {
    unittest.expect(o.configurationName, unittest.equals('foo'));
    unittest.expect(o.latestRevision, unittest.isTrue);
    unittest.expect(o.percent, unittest.equals(42));
    unittest.expect(o.revisionName, unittest.equals('foo'));
    unittest.expect(o.tag, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterTrafficTarget--;
}

core.int buildCounterVolume = 0;
buildVolume() {
  var o = new api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.configMap = buildConfigMapVolumeSource();
    o.name = "foo";
    o.secret = buildSecretVolumeSource();
  }
  buildCounterVolume--;
  return o;
}

checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    checkConfigMapVolumeSource(o.configMap);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSecretVolumeSource(o.secret);
  }
  buildCounterVolume--;
}

core.int buildCounterVolumeMount = 0;
buildVolumeMount() {
  var o = new api.VolumeMount();
  buildCounterVolumeMount++;
  if (buildCounterVolumeMount < 3) {
    o.mountPath = "foo";
    o.name = "foo";
    o.readOnly = true;
    o.subPath = "foo";
  }
  buildCounterVolumeMount--;
  return o;
}

checkVolumeMount(api.VolumeMount o) {
  buildCounterVolumeMount++;
  if (buildCounterVolumeMount < 3) {
    unittest.expect(o.mountPath, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.readOnly, unittest.isTrue);
    unittest.expect(o.subPath, unittest.equals('foo'));
  }
  buildCounterVolumeMount--;
}

main() {
  unittest.group("obj-schema-Addressable", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddressable();
      var od = new api.Addressable.fromJson(o.toJson());
      checkAddressable(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-AuthorizedDomain", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizedDomain();
      var od = new api.AuthorizedDomain.fromJson(o.toJson());
      checkAuthorizedDomain(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-ConfigMapEnvSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigMapEnvSource();
      var od = new api.ConfigMapEnvSource.fromJson(o.toJson());
      checkConfigMapEnvSource(od);
    });
  });

  unittest.group("obj-schema-ConfigMapKeySelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigMapKeySelector();
      var od = new api.ConfigMapKeySelector.fromJson(o.toJson());
      checkConfigMapKeySelector(od);
    });
  });

  unittest.group("obj-schema-ConfigMapVolumeSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigMapVolumeSource();
      var od = new api.ConfigMapVolumeSource.fromJson(o.toJson());
      checkConfigMapVolumeSource(od);
    });
  });

  unittest.group("obj-schema-Configuration", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfiguration();
      var od = new api.Configuration.fromJson(o.toJson());
      checkConfiguration(od);
    });
  });

  unittest.group("obj-schema-ConfigurationSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigurationSpec();
      var od = new api.ConfigurationSpec.fromJson(o.toJson());
      checkConfigurationSpec(od);
    });
  });

  unittest.group("obj-schema-ConfigurationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigurationStatus();
      var od = new api.ConfigurationStatus.fromJson(o.toJson());
      checkConfigurationStatus(od);
    });
  });

  unittest.group("obj-schema-Container", () {
    unittest.test("to-json--from-json", () {
      var o = buildContainer();
      var od = new api.Container.fromJson(o.toJson());
      checkContainer(od);
    });
  });

  unittest.group("obj-schema-ContainerPort", () {
    unittest.test("to-json--from-json", () {
      var o = buildContainerPort();
      var od = new api.ContainerPort.fromJson(o.toJson());
      checkContainerPort(od);
    });
  });

  unittest.group("obj-schema-DomainMapping", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainMapping();
      var od = new api.DomainMapping.fromJson(o.toJson());
      checkDomainMapping(od);
    });
  });

  unittest.group("obj-schema-DomainMappingSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainMappingSpec();
      var od = new api.DomainMappingSpec.fromJson(o.toJson());
      checkDomainMappingSpec(od);
    });
  });

  unittest.group("obj-schema-DomainMappingStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainMappingStatus();
      var od = new api.DomainMappingStatus.fromJson(o.toJson());
      checkDomainMappingStatus(od);
    });
  });

  unittest.group("obj-schema-EnvFromSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvFromSource();
      var od = new api.EnvFromSource.fromJson(o.toJson());
      checkEnvFromSource(od);
    });
  });

  unittest.group("obj-schema-EnvVar", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvVar();
      var od = new api.EnvVar.fromJson(o.toJson());
      checkEnvVar(od);
    });
  });

  unittest.group("obj-schema-EnvVarSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvVarSource();
      var od = new api.EnvVarSource.fromJson(o.toJson());
      checkEnvVarSource(od);
    });
  });

  unittest.group("obj-schema-ExecAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecAction();
      var od = new api.ExecAction.fromJson(o.toJson());
      checkExecAction(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRunV1Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRunV1Condition();
      var od = new api.GoogleCloudRunV1Condition.fromJson(o.toJson());
      checkGoogleCloudRunV1Condition(od);
    });
  });

  unittest.group("obj-schema-HTTPGetAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildHTTPGetAction();
      var od = new api.HTTPGetAction.fromJson(o.toJson());
      checkHTTPGetAction(od);
    });
  });

  unittest.group("obj-schema-HTTPHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildHTTPHeader();
      var od = new api.HTTPHeader.fromJson(o.toJson());
      checkHTTPHeader(od);
    });
  });

  unittest.group("obj-schema-Handler", () {
    unittest.test("to-json--from-json", () {
      var o = buildHandler();
      var od = new api.Handler.fromJson(o.toJson());
      checkHandler(od);
    });
  });

  unittest.group("obj-schema-IntOrString", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntOrString();
      var od = new api.IntOrString.fromJson(o.toJson());
      checkIntOrString(od);
    });
  });

  unittest.group("obj-schema-KeyToPath", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyToPath();
      var od = new api.KeyToPath.fromJson(o.toJson());
      checkKeyToPath(od);
    });
  });

  unittest.group("obj-schema-ListAuthorizedDomainsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAuthorizedDomainsResponse();
      var od = new api.ListAuthorizedDomainsResponse.fromJson(o.toJson());
      checkListAuthorizedDomainsResponse(od);
    });
  });

  unittest.group("obj-schema-ListConfigurationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListConfigurationsResponse();
      var od = new api.ListConfigurationsResponse.fromJson(o.toJson());
      checkListConfigurationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDomainMappingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDomainMappingsResponse();
      var od = new api.ListDomainMappingsResponse.fromJson(o.toJson());
      checkListDomainMappingsResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListMeta", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMeta();
      var od = new api.ListMeta.fromJson(o.toJson());
      checkListMeta(od);
    });
  });

  unittest.group("obj-schema-ListRevisionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListRevisionsResponse();
      var od = new api.ListRevisionsResponse.fromJson(o.toJson());
      checkListRevisionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListRoutesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListRoutesResponse();
      var od = new api.ListRoutesResponse.fromJson(o.toJson());
      checkListRoutesResponse(od);
    });
  });

  unittest.group("obj-schema-ListServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServicesResponse();
      var od = new api.ListServicesResponse.fromJson(o.toJson());
      checkListServicesResponse(od);
    });
  });

  unittest.group("obj-schema-LocalObjectReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocalObjectReference();
      var od = new api.LocalObjectReference.fromJson(o.toJson());
      checkLocalObjectReference(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-ObjectMeta", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjectMeta();
      var od = new api.ObjectMeta.fromJson(o.toJson());
      checkObjectMeta(od);
    });
  });

  unittest.group("obj-schema-OwnerReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildOwnerReference();
      var od = new api.OwnerReference.fromJson(o.toJson());
      checkOwnerReference(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-Probe", () {
    unittest.test("to-json--from-json", () {
      var o = buildProbe();
      var od = new api.Probe.fromJson(o.toJson());
      checkProbe(od);
    });
  });

  unittest.group("obj-schema-ResourceRecord", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceRecord();
      var od = new api.ResourceRecord.fromJson(o.toJson());
      checkResourceRecord(od);
    });
  });

  unittest.group("obj-schema-ResourceRequirements", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceRequirements();
      var od = new api.ResourceRequirements.fromJson(o.toJson());
      checkResourceRequirements(od);
    });
  });

  unittest.group("obj-schema-Revision", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevision();
      var od = new api.Revision.fromJson(o.toJson());
      checkRevision(od);
    });
  });

  unittest.group("obj-schema-RevisionSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevisionSpec();
      var od = new api.RevisionSpec.fromJson(o.toJson());
      checkRevisionSpec(od);
    });
  });

  unittest.group("obj-schema-RevisionStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevisionStatus();
      var od = new api.RevisionStatus.fromJson(o.toJson());
      checkRevisionStatus(od);
    });
  });

  unittest.group("obj-schema-RevisionTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevisionTemplate();
      var od = new api.RevisionTemplate.fromJson(o.toJson());
      checkRevisionTemplate(od);
    });
  });

  unittest.group("obj-schema-Route", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoute();
      var od = new api.Route.fromJson(o.toJson());
      checkRoute(od);
    });
  });

  unittest.group("obj-schema-RouteSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteSpec();
      var od = new api.RouteSpec.fromJson(o.toJson());
      checkRouteSpec(od);
    });
  });

  unittest.group("obj-schema-RouteStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteStatus();
      var od = new api.RouteStatus.fromJson(o.toJson());
      checkRouteStatus(od);
    });
  });

  unittest.group("obj-schema-SecretEnvSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecretEnvSource();
      var od = new api.SecretEnvSource.fromJson(o.toJson());
      checkSecretEnvSource(od);
    });
  });

  unittest.group("obj-schema-SecretKeySelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecretKeySelector();
      var od = new api.SecretKeySelector.fromJson(o.toJson());
      checkSecretKeySelector(od);
    });
  });

  unittest.group("obj-schema-SecretVolumeSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecretVolumeSource();
      var od = new api.SecretVolumeSource.fromJson(o.toJson());
      checkSecretVolumeSource(od);
    });
  });

  unittest.group("obj-schema-SecurityContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecurityContext();
      var od = new api.SecurityContext.fromJson(o.toJson());
      checkSecurityContext(od);
    });
  });

  unittest.group("obj-schema-Service", () {
    unittest.test("to-json--from-json", () {
      var o = buildService();
      var od = new api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });

  unittest.group("obj-schema-ServiceSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceSpec();
      var od = new api.ServiceSpec.fromJson(o.toJson());
      checkServiceSpec(od);
    });
  });

  unittest.group("obj-schema-ServiceStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceStatus();
      var od = new api.ServiceStatus.fromJson(o.toJson());
      checkServiceStatus(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-StatusCause", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatusCause();
      var od = new api.StatusCause.fromJson(o.toJson());
      checkStatusCause(od);
    });
  });

  unittest.group("obj-schema-StatusDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatusDetails();
      var od = new api.StatusDetails.fromJson(o.toJson());
      checkStatusDetails(od);
    });
  });

  unittest.group("obj-schema-TCPSocketAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildTCPSocketAction();
      var od = new api.TCPSocketAction.fromJson(o.toJson());
      checkTCPSocketAction(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-TrafficTarget", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrafficTarget();
      var od = new api.TrafficTarget.fromJson(o.toJson());
      checkTrafficTarget(od);
    });
  });

  unittest.group("obj-schema-Volume", () {
    unittest.test("to-json--from-json", () {
      var o = buildVolume();
      var od = new api.Volume.fromJson(o.toJson());
      checkVolume(od);
    });
  });

  unittest.group("obj-schema-VolumeMount", () {
    unittest.test("to-json--from-json", () {
      var o = buildVolumeMount();
      var od = new api.VolumeMount.fromJson(o.toJson());
      checkVolumeMount(od);
    });
  });

  unittest.group("resource-NamespacesAuthorizeddomainsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NamespacesAuthorizeddomainsResourceApi res =
          new api.RunApi(mock).namespaces.authorizeddomains;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAuthorizedDomainsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAuthorizedDomainsResponse(response);
      })));
    });
  });

  unittest.group("resource-NamespacesConfigurationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NamespacesConfigurationsResourceApi res =
          new api.RunApi(mock).namespaces.configurations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConfiguration(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NamespacesConfigurationsResourceApi res =
          new api.RunApi(mock).namespaces.configurations;
      var arg_parent = "foo";
      var arg_fieldSelector = "foo";
      var arg_includeUninitialized = true;
      var arg_resourceVersion = "foo";
      var arg_continue_ = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_labelSelector = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListConfigurationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              resourceVersion: arg_resourceVersion,
              continue_: arg_continue_,
              limit: arg_limit,
              watch: arg_watch,
              labelSelector: arg_labelSelector,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConfigurationsResponse(response);
      })));
    });
  });

  unittest.group("resource-NamespacesDomainmappingsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.NamespacesDomainmappingsResourceApi res =
          new api.RunApi(mock).namespaces.domainmappings;
      var arg_request = buildDomainMapping();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DomainMapping.fromJson(json);
        checkDomainMapping(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDomainMapping());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainMapping(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.NamespacesDomainmappingsResourceApi res =
          new api.RunApi(mock).namespaces.domainmappings;
      var arg_name = "foo";
      var arg_apiVersion = "foo";
      var arg_propagationPolicy = "foo";
      var arg_kind = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              propagationPolicy: arg_propagationPolicy,
              kind: arg_kind,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NamespacesDomainmappingsResourceApi res =
          new api.RunApi(mock).namespaces.domainmappings;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDomainMapping());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainMapping(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NamespacesDomainmappingsResourceApi res =
          new api.RunApi(mock).namespaces.domainmappings;
      var arg_parent = "foo";
      var arg_resourceVersion = "foo";
      var arg_includeUninitialized = true;
      var arg_fieldSelector = "foo";
      var arg_continue_ = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_labelSelector = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDomainMappingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              resourceVersion: arg_resourceVersion,
              includeUninitialized: arg_includeUninitialized,
              fieldSelector: arg_fieldSelector,
              continue_: arg_continue_,
              limit: arg_limit,
              watch: arg_watch,
              labelSelector: arg_labelSelector,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDomainMappingsResponse(response);
      })));
    });
  });

  unittest.group("resource-NamespacesRevisionsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.NamespacesRevisionsResourceApi res =
          new api.RunApi(mock).namespaces.revisions;
      var arg_name = "foo";
      var arg_apiVersion = "foo";
      var arg_propagationPolicy = "foo";
      var arg_kind = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              propagationPolicy: arg_propagationPolicy,
              kind: arg_kind,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NamespacesRevisionsResourceApi res =
          new api.RunApi(mock).namespaces.revisions;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NamespacesRevisionsResourceApi res =
          new api.RunApi(mock).namespaces.revisions;
      var arg_parent = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_labelSelector = "foo";
      var arg_fieldSelector = "foo";
      var arg_includeUninitialized = true;
      var arg_resourceVersion = "foo";
      var arg_continue_ = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRevisionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              limit: arg_limit,
              watch: arg_watch,
              labelSelector: arg_labelSelector,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              resourceVersion: arg_resourceVersion,
              continue_: arg_continue_,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRevisionsResponse(response);
      })));
    });
  });

  unittest.group("resource-NamespacesRoutesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NamespacesRoutesResourceApi res =
          new api.RunApi(mock).namespaces.routes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildRoute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoute(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NamespacesRoutesResourceApi res =
          new api.RunApi(mock).namespaces.routes;
      var arg_parent = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_labelSelector = "foo";
      var arg_fieldSelector = "foo";
      var arg_resourceVersion = "foo";
      var arg_includeUninitialized = true;
      var arg_continue_ = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRoutesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              limit: arg_limit,
              watch: arg_watch,
              labelSelector: arg_labelSelector,
              fieldSelector: arg_fieldSelector,
              resourceVersion: arg_resourceVersion,
              includeUninitialized: arg_includeUninitialized,
              continue_: arg_continue_,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRoutesResponse(response);
      })));
    });
  });

  unittest.group("resource-NamespacesServicesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.NamespacesServicesResourceApi res =
          new api.RunApi(mock).namespaces.services;
      var arg_request = buildService();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Service.fromJson(json);
        checkService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.NamespacesServicesResourceApi res =
          new api.RunApi(mock).namespaces.services;
      var arg_name = "foo";
      var arg_propagationPolicy = "foo";
      var arg_kind = "foo";
      var arg_apiVersion = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              propagationPolicy: arg_propagationPolicy,
              kind: arg_kind,
              apiVersion: arg_apiVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NamespacesServicesResourceApi res =
          new api.RunApi(mock).namespaces.services;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NamespacesServicesResourceApi res =
          new api.RunApi(mock).namespaces.services;
      var arg_parent = "foo";
      var arg_continue_ = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_labelSelector = "foo";
      var arg_resourceVersion = "foo";
      var arg_includeUninitialized = true;
      var arg_fieldSelector = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              limit: arg_limit,
              watch: arg_watch,
              labelSelector: arg_labelSelector,
              resourceVersion: arg_resourceVersion,
              includeUninitialized: arg_includeUninitialized,
              fieldSelector: arg_fieldSelector,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicesResponse(response);
      })));
    });

    unittest.test("method--replaceService", () {
      var mock = new HttpServerMock();
      api.NamespacesServicesResourceApi res =
          new api.RunApi(mock).namespaces.services;
      var arg_request = buildService();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Service.fromJson(json);
        checkService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceService(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.RunApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.RunApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsAuthorizeddomainsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsAuthorizeddomainsResourceApi res =
          new api.RunApi(mock).projects.locations.authorizeddomains;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAuthorizedDomainsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAuthorizedDomainsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsConfigurationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsConfigurationsResourceApi res =
          new api.RunApi(mock).projects.locations.configurations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConfiguration(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsConfigurationsResourceApi res =
          new api.RunApi(mock).projects.locations.configurations;
      var arg_parent = "foo";
      var arg_labelSelector = "foo";
      var arg_resourceVersion = "foo";
      var arg_includeUninitialized = true;
      var arg_fieldSelector = "foo";
      var arg_continue_ = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListConfigurationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              labelSelector: arg_labelSelector,
              resourceVersion: arg_resourceVersion,
              includeUninitialized: arg_includeUninitialized,
              fieldSelector: arg_fieldSelector,
              continue_: arg_continue_,
              limit: arg_limit,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConfigurationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDomainmappingsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDomainmappingsResourceApi res =
          new api.RunApi(mock).projects.locations.domainmappings;
      var arg_request = buildDomainMapping();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DomainMapping.fromJson(json);
        checkDomainMapping(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDomainMapping());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainMapping(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDomainmappingsResourceApi res =
          new api.RunApi(mock).projects.locations.domainmappings;
      var arg_name = "foo";
      var arg_apiVersion = "foo";
      var arg_propagationPolicy = "foo";
      var arg_kind = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              propagationPolicy: arg_propagationPolicy,
              kind: arg_kind,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDomainmappingsResourceApi res =
          new api.RunApi(mock).projects.locations.domainmappings;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDomainMapping());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainMapping(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDomainmappingsResourceApi res =
          new api.RunApi(mock).projects.locations.domainmappings;
      var arg_parent = "foo";
      var arg_labelSelector = "foo";
      var arg_resourceVersion = "foo";
      var arg_includeUninitialized = true;
      var arg_fieldSelector = "foo";
      var arg_continue_ = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDomainMappingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              labelSelector: arg_labelSelector,
              resourceVersion: arg_resourceVersion,
              includeUninitialized: arg_includeUninitialized,
              fieldSelector: arg_fieldSelector,
              continue_: arg_continue_,
              limit: arg_limit,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDomainMappingsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsRevisionsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRevisionsResourceApi res =
          new api.RunApi(mock).projects.locations.revisions;
      var arg_name = "foo";
      var arg_apiVersion = "foo";
      var arg_propagationPolicy = "foo";
      var arg_kind = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              propagationPolicy: arg_propagationPolicy,
              kind: arg_kind,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRevisionsResourceApi res =
          new api.RunApi(mock).projects.locations.revisions;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRevisionsResourceApi res =
          new api.RunApi(mock).projects.locations.revisions;
      var arg_parent = "foo";
      var arg_resourceVersion = "foo";
      var arg_includeUninitialized = true;
      var arg_fieldSelector = "foo";
      var arg_continue_ = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_labelSelector = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRevisionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              resourceVersion: arg_resourceVersion,
              includeUninitialized: arg_includeUninitialized,
              fieldSelector: arg_fieldSelector,
              continue_: arg_continue_,
              limit: arg_limit,
              watch: arg_watch,
              labelSelector: arg_labelSelector,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRevisionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsRoutesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRoutesResourceApi res =
          new api.RunApi(mock).projects.locations.routes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildRoute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoute(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRoutesResourceApi res =
          new api.RunApi(mock).projects.locations.routes;
      var arg_parent = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_labelSelector = "foo";
      var arg_resourceVersion = "foo";
      var arg_includeUninitialized = true;
      var arg_fieldSelector = "foo";
      var arg_continue_ = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRoutesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              limit: arg_limit,
              watch: arg_watch,
              labelSelector: arg_labelSelector,
              resourceVersion: arg_resourceVersion,
              includeUninitialized: arg_includeUninitialized,
              fieldSelector: arg_fieldSelector,
              continue_: arg_continue_,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRoutesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsServicesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsServicesResourceApi res =
          new api.RunApi(mock).projects.locations.services;
      var arg_request = buildService();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Service.fromJson(json);
        checkService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsServicesResourceApi res =
          new api.RunApi(mock).projects.locations.services;
      var arg_name = "foo";
      var arg_propagationPolicy = "foo";
      var arg_kind = "foo";
      var arg_apiVersion = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              propagationPolicy: arg_propagationPolicy,
              kind: arg_kind,
              apiVersion: arg_apiVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsServicesResourceApi res =
          new api.RunApi(mock).projects.locations.services;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsServicesResourceApi res =
          new api.RunApi(mock).projects.locations.services;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsServicesResourceApi res =
          new api.RunApi(mock).projects.locations.services;
      var arg_parent = "foo";
      var arg_continue_ = "foo";
      var arg_limit = 42;
      var arg_watch = true;
      var arg_labelSelector = "foo";
      var arg_fieldSelector = "foo";
      var arg_resourceVersion = "foo";
      var arg_includeUninitialized = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              limit: arg_limit,
              watch: arg_watch,
              labelSelector: arg_labelSelector,
              fieldSelector: arg_fieldSelector,
              resourceVersion: arg_resourceVersion,
              includeUninitialized: arg_includeUninitialized,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicesResponse(response);
      })));
    });

    unittest.test("method--replaceService", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsServicesResourceApi res =
          new api.RunApi(mock).projects.locations.services;
      var arg_request = buildService();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Service.fromJson(json);
        checkService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceService(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsServicesResourceApi res =
          new api.RunApi(mock).projects.locations.services;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsServicesResourceApi res =
          new api.RunApi(mock).projects.locations.services;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });
}
