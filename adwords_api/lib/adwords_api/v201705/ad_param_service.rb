# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.14.0 on 2017-05-31 12:32:25.

require 'ads_common/savon_service'
require 'adwords_api/v201705/ad_param_service_registry'

module AdwordsApi; module V201705; module AdParamService
  class AdParamService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201705'
      super(config, endpoint, namespace, :v201705)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return AdParamServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201705::AdParamService
    end
  end
end; end; end