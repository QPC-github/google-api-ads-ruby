# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.8.0 on 2012-08-21 13:57:41.

require 'dfp_api/errors'

module DfpApi; module V201203; module InventoryService
  class InventoryServiceRegistry
    INVENTORYSERVICE_METHODS = {:create_ad_unit=>{:input=>[{:name=>:ad_unit, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"create_ad_unit_response", :fields=>[{:name=>:rval, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>1}]}}, :create_ad_units=>{:input=>[{:name=>:ad_units, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_ad_units_response", :fields=>[{:name=>:rval, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_ad_unit=>{:input=>[{:name=>:ad_unit_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_ad_unit_response", :fields=>[{:name=>:rval, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>1}]}}, :get_ad_unit_sizes=>{:input=>[], :output=>{:name=>"get_ad_unit_sizes_response", :fields=>[{:name=>:rval, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_ad_unit_sizes_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_ad_unit_sizes_by_statement_response", :fields=>[{:name=>:rval, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_ad_units_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_ad_units_by_statement_response", :fields=>[{:name=>:rval, :type=>"AdUnitPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_ad_unit_action=>{:input=>[{:name=>:ad_unit_action, :type=>"AdUnitAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_ad_unit_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_ad_unit=>{:input=>[{:name=>:ad_unit, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_ad_unit_response", :fields=>[{:name=>:rval, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>1}]}}, :update_ad_units=>{:input=>[{:name=>:ad_units, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_ad_units_response", :fields=>[{:name=>:rval, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    INVENTORYSERVICE_TYPES = {:ActivateAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :AdSenseSettings=>{:fields=>[{:name=>:ad_sense_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:border_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:title_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:background_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:text_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:url_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_type, :type=>"AdSenseSettings.AdType", :min_occurs=>0, :max_occurs=>1}, {:name=>:border_style, :type=>"AdSenseSettings.BorderStyle", :min_occurs=>0, :max_occurs=>1}, {:name=>:font_family, :type=>"AdSenseSettings.FontFamily", :min_occurs=>0, :max_occurs=>1}, {:name=>:font_size, :type=>"AdSenseSettings.FontSize", :min_occurs=>0, :max_occurs=>1}, {:name=>:afc_formats, :type=>"Size_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AdSenseSettingsInheritedProperty=>{:fields=>[{:name=>:value, :type=>"AdSenseSettings", :min_occurs=>0, :max_occurs=>1}]}, :AdUnitAction=>{:fields=>[{:name=>:ad_unit_action_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AdUnitAfcSizeError=>{:fields=>[{:name=>:reason, :type=>"AdUnitAfcSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdUnitCodeError=>{:fields=>[{:name=>:reason, :type=>"AdUnitCodeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdUnit=>{:fields=>[{:name=>:id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:parent_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_window, :type=>"AdUnit.TargetWindow", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"InventoryStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_unit_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_unit_sizes, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:target_platform, :type=>"TargetPlatform", :min_occurs=>0, :max_occurs=>1}, {:name=>:explicitly_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:inherited_ad_sense_settings, :type=>"AdSenseSettingsInheritedProperty", :min_occurs=>0, :max_occurs=>1}, {:name=>:applied_label_frequency_caps, :type=>"LabelFrequencyCap", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_label_frequency_caps, :type=>"LabelFrequencyCap", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}]}, :AdUnitHierarchyError=>{:fields=>[{:name=>:reason, :type=>"AdUnitHierarchyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdUnitPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ArchiveAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :AssignAdUnitsToPlacement=>{:fields=>[{:name=>:placement_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"AdUnitAction"}, :Authentication=>{:fields=>[{:name=>:authentication_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DeactivateAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :FrequencyCap=>{:fields=>[{:name=>:max_impressions, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_time_units, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_unit, :type=>"TimeUnit", :min_occurs=>0, :max_occurs=>1}]}, :FrequencyCapError=>{:fields=>[{:name=>:reason, :type=>"FrequencyCapError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidColorError=>{:fields=>[{:name=>:reason, :type=>"InvalidColorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryUnitError=>{:fields=>[{:name=>:reason, :type=>"InventoryUnitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryUnitPartnerAssociationError=>{:fields=>[{:name=>:reason, :type=>"InventoryUnitPartnerAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdUnitSize=>{:fields=>[{:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:environment_type, :type=>"EnvironmentType", :min_occurs=>0, :max_occurs=>1}, {:name=>:companions, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}]}, :InventoryUnitSizesError=>{:fields=>[{:name=>:reason, :type=>"InventoryUnitSizesError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdUnitTypeError=>{:fields=>[{:name=>:reason, :type=>"AdUnitTypeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelFrequencyCap=>{:fields=>[{:name=>:frequency_cap, :type=>"FrequencyCap", :min_occurs=>0, :max_occurs=>1}, {:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RegExError=>{:fields=>[{:name=>:reason, :type=>"RegExError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :Size_StringMapEntry=>{:fields=>[{:name=>:key, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[{:name=>:value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"AdSenseSettings.AdType"=>{:fields=>[]}, :"AdSenseSettings.BorderStyle"=>{:fields=>[]}, :"AdSenseSettings.FontFamily"=>{:fields=>[]}, :"AdSenseSettings.FontSize"=>{:fields=>[]}, :"AdUnitAfcSizeError.Reason"=>{:fields=>[]}, :"AdUnitCodeError.Reason"=>{:fields=>[]}, :"AdUnit.TargetWindow"=>{:fields=>[]}, :"AdUnitHierarchyError.Reason"=>{:fields=>[]}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :EnvironmentType=>{:fields=>[]}, :"FrequencyCapError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidColorError.Reason"=>{:fields=>[]}, :InventoryStatus=>{:fields=>[]}, :"InventoryUnitError.Reason"=>{:fields=>[]}, :"InventoryUnitPartnerAssociationError.Reason"=>{:fields=>[]}, :"InventoryUnitSizesError.Reason"=>{:fields=>[]}, :"AdUnitTypeError.Reason"=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RegExError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :TargetPlatform=>{:fields=>[]}, :"TeamError.Reason"=>{:fields=>[]}, :TimeUnit=>{:fields=>[]}}
    INVENTORYSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return INVENTORYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return INVENTORYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return INVENTORYSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, InventoryServiceRegistry)
    end
  end
end; end; end