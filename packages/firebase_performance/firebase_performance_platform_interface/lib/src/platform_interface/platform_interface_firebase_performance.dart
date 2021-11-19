// Copyright 2021 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_performance_platform_interface/firebase_performance_platform_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../method_channel/method_channel_firebase_performance.dart';

enum HttpMethod { Connect, Delete, Get, Head, Options, Patch, Post, Put, Trace }

/// The interface that implementations of `firebase_performance` must
/// extend.
///
/// Platform implementations should extend this class rather than implement it
/// as `firebase_performance` does not consider newly added methods to be breaking
/// changes. Extending this class (using `extends`) ensures that the subclass
/// will get the default implementation, while platform implementations that
/// `implements` this interface will be broken by newly added
/// [FirebasePerformancePlatform] methods.
abstract class FirebasePerformancePlatform extends PlatformInterface {
  /// Create an instance using [app].
  FirebasePerformancePlatform({this.appInstance}) : super(token: _token);

  static FirebasePerformancePlatform? _instance;

  static final Object _token = Object();

  /// The current default [FirebasePerformancePlatform] instance.
  ///
  /// It will always default to [MethodChannelFirebasePerformance]
  /// if no other implementation was provided.
  static FirebasePerformancePlatform get instance {
    return _instance ??= MethodChannelFirebasePerformance.instance;
  }

  /// Sets the [FirebasePerformancePlatform] instance.
  static set instance(FirebasePerformancePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Create an instance with a [FirebaseApp] using an existing instance.
  factory FirebasePerformancePlatform.instanceFor({
    required FirebaseApp app,
  }) {
    return FirebasePerformancePlatform.instance.delegateFor(app: app);
  }

  /// The [FirebaseApp] this instance was initialized with.
  @protected
  final FirebaseApp? appInstance;

  /// Returns the [FirebaseApp] for the current instance.
  FirebaseApp get app => appInstance ?? Firebase.app();

  /// Enables delegates to create new instances of themselves if a none default
  /// [FirebaseApp] instance is required by the user. Currently only default Firebase app only.
  @protected
  FirebasePerformancePlatform delegateFor({required FirebaseApp app}) {
    throw UnimplementedError('delegateFor() is not implemented');
  }

  /// Determines whether custom performance monitoring is enabled or disabled.
  ///
  /// True if custom performance monitoring is enabled and false if performance
  /// monitoring is disabled. This is for dynamic enable/disable state. This
  /// does not reflect whether instrumentation is enabled/disabled.
  Future<bool> isPerformanceCollectionEnabled() async {
    throw UnimplementedError(
      'isPerformanceCollectionEnabled() is not implemented',
    );
  }

  /// Enables or disables custom performance monitoring setup.
  ///
  /// This setting is persisted and applied on future invocations of your
  /// application. By default, custom performance monitoring is enabled.
  Future<void> setPerformanceCollectionEnabled(bool enabled) async {
    throw UnimplementedError(
      'setPerformanceCollectionEnabled() is not implemented',
    );
  }

  /// Creates a Trace object with given name.
  TracePlatform newTrace(String name) {
    throw UnimplementedError('newTrace() is not implemented');
  }

  /// Creates a HttpMetric object for collecting network performance data for one
  /// request/response. Only works for native apps. Does nothing for web apps.
  HttpMetricPlatform newHttpMetric(String url, HttpMethod httpMethod) {
    throw UnimplementedError('newHttpMetric() is not implemented');
  }

  /// Creates a Trace object with the given name and starts it.
  static Future<TracePlatform> startTrace(String name) async {
    final trace = FirebasePerformancePlatform.instance.newTrace(name);
    await trace.start();
    return trace;
  }
}
