/* Copyright 2011-2015 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package grails.plugin.springsecurity.appinfo

import grails.plugins.Plugin

/**
 * @author <a href='mailto:burt@burtbeckwith.com'>Burt Beckwith</a>
 */
class SpringSecurityAppinfoGrailsPlugin extends Plugin {
	String grailsVersion = '3.0.0 > *'
	String author = 'Burt Beckwith'
	String authorEmail = 'burt@burtbeckwith.com'
	String title = 'Spring Security Configuration Info plugin'
	String description = 'Spring Security Configuration Info plugin'
	String documentation = 'http://grails-plugins.github.io/grails-spring-security-appinfo/'
	String license = 'APACHE'
	def organization = [name: 'SpringSource', url: 'http://www.springsource.org/']
	def issueManagement = [system: 'GITHUB', url: 'https://github.com/grails-plugins/grails-spring-security-appinfo/issues']
	def scm = [url: 'https://github.com/grails-plugins/grails-spring-security-appinfo']
	def loadAfter = ['springSecurityCore']
	def profiles = ['web']
}
