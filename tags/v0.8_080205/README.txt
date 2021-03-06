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
CDK Preview Release 0.8 for Curl API Version 6.0. 
====================

This directory contains the 0.8 preview of the Curl Data Kit (CDK)

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

- COM.CURL.CDK.0.8/manifest.mcurl   	CDK library definition

Documentation
--------------------

The 'docs-install' directory contains library directory
prepared for addition to the Curl Documentation Viewer
using the IDE 'Install Documentation' command.
The directories include both documentation
and linked source code

- COM.CURL.CDK.0.8/manifest.mcurl   	CDK library doc definition

Source Code
--------------------

The 'src' directory contains all source code for CDK modules,
and could be used for modifying the CDK itself. 
It also inclides test suites, and some sample applets.

- code			source code
-- code/project.cprj	Curl IDE project

- samples		sample applets

- tests			test suite
-- start-tests.curl	test suite

- tools			build applets


KNOWN ISSUES
====================




