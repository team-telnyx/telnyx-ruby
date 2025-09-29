# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AdvancedOrders#create
    class AdvancedOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute area_code
      #
      #   @return [String, nil]
      optional :area_code, String

      # @!attribute comments
      #
      #   @return [String, nil]
      optional :comments, String

      # @!attribute country_code
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute customer_reference
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute features
      #
      #   @return [Array<Symbol, Telnyx::Models::AdvancedOrderCreateParams::Feature>, nil]
      optional :features,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AdvancedOrderCreateParams::Feature] }

      # @!attribute phone_number_type
      #
      #   @return [Symbol, Telnyx::Models::AdvancedOrderCreateParams::PhoneNumberType, nil]
      optional :phone_number_type, enum: -> { Telnyx::AdvancedOrderCreateParams::PhoneNumberType }

      # @!attribute quantity
      #
      #   @return [Integer, nil]
      optional :quantity, Integer

      # @!attribute requirement_group_id
      #   The ID of the requirement group to associate with this advanced order
      #
      #   @return [String, nil]
      optional :requirement_group_id, String

      # @!method initialize(area_code: nil, comments: nil, country_code: nil, customer_reference: nil, features: nil, phone_number_type: nil, quantity: nil, requirement_group_id: nil, request_options: {})
      #   @param area_code [String]
      #
      #   @param comments [String]
      #
      #   @param country_code [String]
      #
      #   @param customer_reference [String]
      #
      #   @param features [Array<Symbol, Telnyx::Models::AdvancedOrderCreateParams::Feature>]
      #
      #   @param phone_number_type [Symbol, Telnyx::Models::AdvancedOrderCreateParams::PhoneNumberType]
      #
      #   @param quantity [Integer]
      #
      #   @param requirement_group_id [String] The ID of the requirement group to associate with this advanced order
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Feature
        extend Telnyx::Internal::Type::Enum

        SMS = :sms
        MMS = :mms
        VOICE = :voice
        FAX = :fax
        EMERGENCY = :emergency

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        LOCAL = :local
        MOBILE = :mobile
        TOLL_FREE = :toll_free
        SHARED_COST = :shared_cost
        NATIONAL = :national
        LANDLINE = :landline

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
