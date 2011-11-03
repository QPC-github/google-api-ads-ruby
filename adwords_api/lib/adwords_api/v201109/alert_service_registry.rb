#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:38:26.

require 'adwords_api/errors'

module AdwordsApi; module V201109; module AlertService
  class AlertServiceRegistry
    ALERTSERVICE_METHODS = {:get=>{:input=>[{:type=>"AlertSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"AlertPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}}
    ALERTSERVICE_TYPES = {:AlertQuery=>{:fields=>[{:type=>"ClientSpec", :max_occurs=>1, :min_occurs=>0, :name=>:client_spec}, {:type=>"FilterSpec", :max_occurs=>1, :min_occurs=>0, :name=>:filter_spec}, {:type=>"AlertType", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:types}, {:type=>"AlertSeverity", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:severities}, {:type=>"TriggerTimeSpec", :max_occurs=>1, :min_occurs=>0, :name=>:trigger_time_spec}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:trigger_time}, {:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:client_customer_ids}]}, :AlertSelector=>{:fields=>[{:type=>"AlertQuery", :max_occurs=>1, :min_occurs=>0, :name=>:query}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :Detail=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:trigger_time}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}], :ns=>0}, :Alert=>{:fields=>[{:type=>"AlertSeverity", :max_occurs=>1, :min_occurs=>0, :name=>:alert_severity}, {:type=>"AlertType", :max_occurs=>1, :min_occurs=>0, :name=>:alert_type}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"Detail", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:details}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:service_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:method_name}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}], :ns=>0}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :ns=>0, :abstract=>true}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}], :ns=>0}, :AlertPage=>{:fields=>[{:type=>"Alert", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"NoStatsPage"}, :NoStatsPage=>{:fields=>[], :abstract=>true, :base=>"Page"}}
    ALERTSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201109"]

    def self.get_method_signature(method_name)
      return ALERTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ALERTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ALERTSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end