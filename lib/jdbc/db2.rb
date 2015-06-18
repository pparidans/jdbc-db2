warn "Jdbc-DB2 is only for use with JRuby" if (JRUBY_VERSION.nil? rescue true)
require "jdbc/db2/version"

module Jdbc
  module DB2

    def self.driver_jars
      %w[db2jcc.jar db2jcc_license_cu.jar]
    end

    def self.load_driver(method = :load)
      driver_jars.each do |jar|
        send method, jar
      end
    end

    def self.driver_name
      "com.ibm.db2.jcc.DB2Driver"
    end

    if defined?(JRUBY_VERSION) &&
      ( Java::JavaLang::Boolean.get_boolean("jdbc.driver.autoload") ||
        Java::JavaLang::Boolean.get_boolean("jdbc.ifx.autoload") )
      warn "autoloading JDBC driver on require 'jdbc/db2'" if $VERBOSE
      load_driver :require
    end

  end
end
