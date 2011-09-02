||| Copyright (C) 1998-2009, Sumisho Computer Systems Corp.  All Rights Reserved.
|||
||| An OpenCurl project.

||| Licensed under the Apache License, Version 2.0 (the "License");
||| you may not use this file except in compliance with the License.
||| You may obtain a copy of the License at
||| 
|||     http://www.apache.org/licenses/LICENSE-2.0
||| 
||| Unless required by applicable law or agreed to in writing, software
||| distributed under the License is distributed on an "AS IS" BASIS,
||| WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
||| See the License for the specific language governing permissions and
||| limitations under the License.

====================
Curl Utilities 1.1 for Curl API Version 8.0, 7.0 and 6.0. 
====================

This directory contains the 1.1 release of the Curl Utilities Library

The Curl Utilities Library contains useful common functionality.
Arbitrary precision arithmetic, using BigDecimal and BigInt classes,
is provided by the COM.CURL.UTIL.BIGNUM package.

To install the library, unzip the distribution onto your machine.

The following sections describe the included material in more detail


DIRECTORIES
====================

The distribution is organized into directories 
which each serve a specific purpose.

Deployable Library
--------------------
 
The 'deploy' directory contains a preprocessed library 
for use in deployed applications.

- COM.CURL.UTIL.1.1/manifest.mcurl   	CURL-UTIL library definition

Documentation
--------------------

The 'docs-install' directory contains library directory prepared for
addition to the Curl Documentation Viewer using the IDE 'Install
Documentation' command.  The directories include both documentation
and preprocessed library.

- COM.CURL.UTIL.1.1/manifest.mcurl   	CURL-UTIL library doc definition

Source Code
--------------------

The 'src' directory contains all source code for CURL-UTIL modules,
and could be used for modifying the CURL-UTIL itself.  It also
includes test suites, and build applets.

- code			source code
-- code/project.cprj	Curl IDE project

- tests			test suite
-- start-tests.curl	test suite

- build			build applets

 
CHANGES
====================

CURL-UTIL 1.1 CHANGES
--------------------
The only change in this release was to add 8.0 as a supported
version of the Curl RTE.

CURL-UTIL 1.0 CHANGES
--------------------
This is the first CURL-UTIL Release.

- COM.CURL.UTIL.BUGNUM package
-- 'BigDecimal' represents arbitrary-precision signed decimal numbers
-- 'BigInt' represents arbitrary-precision signed integers

- CURL-UTIL 1.0 is supported for both Curl API Version 7.0 and 6.0
-- get the appropriate distribution for your Curl API Version

