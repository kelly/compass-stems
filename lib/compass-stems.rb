require 'compass'
require File.join(File.dirname(__FILE__), 'compass-stems', 'compass-stems')
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))

Compass::Frameworks.register('compass-stems', :path => extension_path)