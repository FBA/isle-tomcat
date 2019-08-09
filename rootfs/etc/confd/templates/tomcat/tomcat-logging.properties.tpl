# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

handlers = java.util.logging.ConsoleHandler

.handlers = java.util.logging.ConsoleHandler

############################################################
# Handler specific properties.
# Describes specific configuration info for Handlers.
############################################################

java.util.logging.ConsoleHandler.level = {{getv "/tomcat/java/util/logging/console/handler"}}
java.util.logging.ConsoleHandler.formatter = org.apache.juli.OneLineFormatter
java.util.logging.ConsoleHandler.encoding = UTF-8


############################################################
# Facility specific properties.
# Provides extra control for each logger.
############################################################

org.apache.catalina.core.ContainerBase.[Catalina].[localhost].level = {{getv "/tomcat/localhost/log"}}
org.apache.catalina.core.ContainerBase.[Catalina].[localhost].handlers = java.util.logging.ConsoleHandler

org.apache.catalina.core.ContainerBase.[Catalina].[localhost].[/manager].level = {{getv "/tomcat/localhost/manager/log"}}
org.apache.catalina.core.ContainerBase.[Catalina].[localhost].[/manager].handlers = java.util.logging.ConsoleHandler

org.apache.catalina.core.ContainerBase.[Catalina].[localhost].[/host-manager].level = {{getv "/tomcat/localhost/host/manager/log"}}
org.apache.catalina.core.ContainerBase.[Catalina].[localhost].[/host-manager].handlers = java.util.logging.ConsoleHandler

# Start - Comment from GDM of Born-Digital during ISLE Phase II Dashboards Sprint
# These logs below have not been defined in confd and are not within scope (as of 4/24/2019)
# additional tomcat_envs would need to be created and defined here.
# Please also note by default these entries below are commented out in Tomcat
# End - Comment from GDM of Born-Digital during ISLE Phase II Dashboards Sprint

# For example, set the org.apache.catalina.util.LifecycleBase logger to log
# each component that extends LifecycleBase changing state:
#org.apache.catalina.util.LifecycleBase.level = FINE

# To see debug messages in TldLocationsCache, uncomment the following line:
#org.apache.jasper.compiler.TldLocationsCache.level = FINE

# To see debug messages for HTTP/2 handling, uncomment the following line:
#org.apache.coyote.http2.level = FINE

# To see debug messages for WebSocket handling, uncomment the following line:
#org.apache.tomcat.websocket.level = FINE