# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberConfigurations#list
      class PhoneNumberConfigurationListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies this phone number configuration
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute porting_phone_number_id
        #   Identifies the associated porting phone number
        #
        #   @return [String, nil]
        optional :porting_phone_number_id, String

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute user_bundle_id
        #   Identifies the associated user bundle
        #
        #   @return [String, nil]
        optional :user_bundle_id, String

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(id: nil, created_at: nil, porting_phone_number_id: nil, record_type: nil, updated_at: nil, user_bundle_id: nil)
        #   @param id [String] Uniquely identifies this phone number configuration
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param porting_phone_number_id [String] Identifies the associated porting phone number
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @param user_bundle_id [String] Identifies the associated user bundle
      end
    end
  end
end
