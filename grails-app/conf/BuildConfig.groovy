grails.project.work.dir = 'target'
grails.project.docs.output.dir = 'docs/manual' // for backwards-compatibility, the docs are checked into gh-pages branch

grails.project.dependency.resolution = {

	inherits 'global'
	log 'warn'

	repositories {
		mavenLocal()
		grailsCentral()
		mavenCentral()
	}

	plugins {
		compile ':spring-security-core:2.0-RC4'

		build ':release:3.0.1', ':rest-client-builder:2.0.3', {
			export = false
		}
	}
}
