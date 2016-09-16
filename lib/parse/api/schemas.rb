# encoding: UTF-8
# frozen_string_literal: true

module Parse

  module API
    #object fetch methods
    module Schema
      SCHEMA_PREFIX = "schemas/"
      def schema(className)
        request :get, "#{SCHEMA_PREFIX}#{className}"
      end

      def create_schema(className, schema)
        request :post, "#{SCHEMA_PREFIX}#{className}", body: schema
      end

      def update_schema(className, schema)
        request :put, "#{SCHEMA_PREFIX}#{className}", body: schema
      end

    end #Schema

  end #API

end
