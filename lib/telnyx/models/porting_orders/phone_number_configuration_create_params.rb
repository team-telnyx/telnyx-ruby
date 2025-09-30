# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberConfigurations#create
      class PhoneNumberConfigurationCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number_configurations
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration>, nil]
        optional :phone_number_configurations,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration] }

        # @!method initialize(phone_number_configurations: nil, request_options: {})
        #   @param phone_number_configurations [Array<Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration>]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class PhoneNumberConfiguration < Telnyx::Internal::Type::BaseModel
          # @!attribute porting_phone_number_id
          #   Identifies the porting phone number to be configured.
          #
          #   @return [String]
          required :porting_phone_number_id, String

          # @!attribute user_bundle_id
          #   Identifies the user bundle to be associated with the porting phone number.
          #
          #   @return [String]
          required :user_bundle_id, String

          # @!method initialize(porting_phone_number_id:, user_bundle_id:)
          #   @param porting_phone_number_id [String] Identifies the porting phone number to be configured.
          #
          #   @param user_bundle_id [String] Identifies the user bundle to be associated with the porting phone number.
        end
      end
    end
  end
end
