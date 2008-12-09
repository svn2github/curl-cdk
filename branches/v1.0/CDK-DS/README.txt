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
CDK Data Services Release 1.0 for Curl API Version 6.0. 
====================

This directory contains the 1.0 release of the Curl Data Kit Data
Services (CDK-DS)

The Curl Data Kit (CDK) library facilitates building data-centric
applications in Curl. With Curl Data Kit (CDK) library Data Services
packages, you can use remoting and messaging to interact with servers
supporting AMF protocols.

To install the CDK-DS, unzip the distribution onto your machine.

The following sections describe the included material in more detail


DIRECTORIES
====================

The distribution is organized into directories 
which each serve a specific purpose.

Deployable Library
--------------------
 
The 'deploy' directory contains a preprocessed library 
for use in deployed applications.

- COM.CURL.CDK.DATA-SERVICES.1.0/manifest.mcurl   	
			CDK library definition

Documentation
--------------------

The 'docs-install' directory contains library directory
prepared for addition to the Curl Documentation Viewer
using the IDE 'Install Documentation' command.
The directories include both documentation
and preprocessed library.

- COM.CURL.CDK-DATA-SERVICES.1.0/manifest.mcurl
			CDK-DS library doc definition

Source Code
--------------------

The 'src' directory contains all source code for CDK-DS modules,
and could be used for modifying the CDK-DS itself. 
It also includes test suites, and some sample applets.

- code			source code
-- code/project.cprj	Curl IDE project

- samples		sample applets

- tests			test suite
-- start-tests.curl	test suite

- tools			build applets

 
CHANGES
====================

CDK-DS 1.0 CHANGES
--------------------

This is the initial release.
