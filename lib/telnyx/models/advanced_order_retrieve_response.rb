# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AdvancedOrders#retrieve
    class AdvancedOrderRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

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
      #   @return [Array<Symbol, Telnyx::Models::AdvancedOrderRetrieveResponse::Feature>, nil]
      optional :features,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderRetrieveResponse::Feature] }

      # @!attribute orders
      #
      #   @return [Array<String>, nil]
      optional :orders, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute phone_number_type
      #
      #   @return [Array<Symbol, Telnyx::Models::AdvancedOrderRetrieveResponse::PhoneNumberType>, nil]
      optional :phone_number_type,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderRetrieveResponse::PhoneNumberType] }

      # @!attribute quantity
      #
      #   @return [Integer, nil]
      optional :quantity, Integer

      # @!attribute requirement_group_id
      #   The ID of the requirement group associated with this advanced order
      #
      #   @return [String, nil]
      optional :requirement_group_id, String

      # @!attribute status
      #
      #   @return [Array<Symbol, Telnyx::Models::AdvancedOrderRetrieveResponse::Status>, nil]
      optional :status,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderRetrieveResponse::Status] }

      # @!method initialize(id: nil, area_code: nil, comments: nil, country_code: nil, customer_reference: nil, features: nil, orders: nil, phone_number_type: nil, quantity: nil, requirement_group_id: nil, status: nil)
      #   @param id [String]
      #
      #   @param area_code [String]
      #
      #   @param comments [String]
      #
      #   @param country_code [String]
      #
      #   @param customer_reference [String]
      #
      #   @param features [Array<Symbol, Telnyx::Models::AdvancedOrderRetrieveResponse::Feature>]
      #
      #   @param orders [Array<String>]
      #
      #   @param phone_number_type [Array<Symbol, Telnyx::Models::AdvancedOrderRetrieveResponse::PhoneNumberType>]
      #
      #   @param quantity [Integer]
      #
      #   @param requirement_group_id [String] The ID of the requirement group associated with this advanced order
      #
      #   @param status [Array<Symbol, Telnyx::Models::AdvancedOrderRetrieveResponse::Status>]

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

      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        PROCESSING = :processing
        ORDERED = :ordered

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
