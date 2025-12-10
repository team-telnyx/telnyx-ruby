# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::VerificationCodes#list
      class VerificationCodeListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PortingOrders::VerificationCodeListResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingOrders::VerificationCodeListResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::PortingOrders::VerificationCodeListResponse::Data>]
        #   @param meta [Telnyx::Models::PaginationMeta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies this porting verification code
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute phone_number
          #   E164 formatted phone number
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute porting_order_id
          #   Identifies the associated porting order
          #
          #   @return [String, nil]
          optional :porting_order_id, String

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute verified
          #   Indicates whether the verification code has been verified
          #
          #   @return [Boolean, nil]
          optional :verified, Telnyx::Internal::Type::Boolean

          response_only do
            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(id: nil, created_at: nil, phone_number: nil, porting_order_id: nil, record_type: nil, updated_at: nil, verified: nil)
          #   @param id [String] Uniquely identifies this porting verification code
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param phone_number [String] E164 formatted phone number
          #
          #   @param porting_order_id [String] Identifies the associated porting order
          #
          #   @param record_type [String] Identifies the type of the resource.
          #
          #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @param verified [Boolean] Indicates whether the verification code has been verified
        end
      end
    end
  end
end
