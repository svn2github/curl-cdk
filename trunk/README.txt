||| Copyright (C) 1998-2008, Sumisho Computer Systems Corp.  All Rights Reserved.
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
CDK Preview Release 0.9.1 for Curl API Version 7.0. 
====================

This directory contains the 0.9.1 preview of the Curl Data Kit (CDK)

The Curl Data Kit (CDK) library facilitates building data-centric
applications in Curl. It provides support for local SQL databases,
using the popular SQLite SQL engine.

To install the CDK, unzip the distribution onto your machine.

The following sections describe the included material in more detail


DIRECTORIES
====================

The distribution is organized into directories 
which each serve a specific purpose.

Deployable Library
--------------------
 
The 'deploy' directory contains a preprocessed library 
for use in deployed applications.

- COM.CURL.CDK.0.9.1/manifest.mcurl   	CDK library definition

Documentation
--------------------

The 'docs-install' directory contains library directory
prepared for addition to the Curl Documentation Viewer
using the IDE 'Install Documentation' command.
The directories include both documentation
and preprocessed library.

- COM.CURL.CDK.0.9.1/manifest.mcurl   	CDK library doc definition

Source Code
--------------------

The 'src' directory contains all source code for CDK modules,
and could be used for modifying the CDK itself. 
It also includes test suites, and some sample applets.

- code			source code
-- code/project.cprj	Curl IDE project

- samples		sample applets

- tests			test suite
-- start-tests.curl	test suite

- tools			build applets

 
CHANGES
====================

CDK 0.9 CHANGES
--------------------

Curl Release 7 incorporates the SQLite engine 
(as package CURL.IO.SQLITE-LIBRARY).

This change eliminates the need for privilege to use SQLite, which had
been necessary in earlier releases, when the SQLite library was
included in the CDK using CURL.LANGUAGE.DLL-INTERFACE.

CDK 0.9 CHANGES
--------------------

There have been a few API changes since Version 0.8

- SQLiteRecordSet.fields are created using default values
  specified in underlying database.

- SQLiteStatement.bind supports named parameters
  (as keyword arguments) as well as numbered parameters.

- SQLiteDatabase.busy-timeout is set by default.

- SQLiteRecordSet.use-transaction? was added.

- SQLiteDatabase is now target for notification events 
  (like SQLiteUpdateEvent) rather than SQLiteConnection.

- uses SQLite version 3.5.6 library.

- added SQLiteDatabase.attach and SQLiteDatabase.detach methods.

- SQLiteDatabase.default accepts additional keyword arguments:
  read-only?, auto-vacuum?, page-size

Several bugs have been fixed.
