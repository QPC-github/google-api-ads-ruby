# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2021, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2021-08-11 23:14:47.

require 'ads_common/savon_service'
require 'ad_manager_api/v202108/creative_service_registry'

module AdManagerApi; module V202108; module CreativeService
  class CreativeService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202108'
      super(config, endpoint, namespace, :v202108)
    end

    def create_creatives(*args, &block)
      return execute_action('create_creatives', args, &block)
    end

    def create_creatives_to_xml(*args)
      return get_soap_xml('create_creatives', args)
    end

    def get_creatives_by_statement(*args, &block)
      return execute_action('get_creatives_by_statement', args, &block)
    end

    def get_creatives_by_statement_to_xml(*args)
      return get_soap_xml('get_creatives_by_statement', args)
    end

    def perform_creative_action(*args, &block)
      return execute_action('perform_creative_action', args, &block)
    end

    def perform_creative_action_to_xml(*args)
      return get_soap_xml('perform_creative_action', args)
    end

    def update_creatives(*args, &block)
      return execute_action('update_creatives', args, &block)
    end

    def update_creatives_to_xml(*args)
      return get_soap_xml('update_creatives', args)
    end

    private

    def get_service_registry()
      return CreativeServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202108::CreativeService
    end
  end
end; end; end