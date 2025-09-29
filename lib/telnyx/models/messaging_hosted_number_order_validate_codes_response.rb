# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#validate_codes
    class MessagingHostedNumberOrderValidateCodesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data, nil]
      optional :data, -> { Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data]

      # @see Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute order_id
        #
        #   @return [String]
        required :order_id, String

        # @!attribute phone_numbers
        #
        #   @return [Array<Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber>]
        required :phone_numbers,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber] }

        # @!method initialize(order_id:, phone_numbers:)
        #   @param order_id [String]
        #   @param phone_numbers [Array<Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber>]

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status]
          required :status,
                   enum: -> { Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status }

          # @!method initialize(phone_number:, status:)
          #   @param phone_number [String]
          #   @param status [Symbol, Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status]

          # @see Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber#status
          module Status
            extend Telnyx::Internal::Type::Enum

            VERIFIED = :verified
            REJECTED = :rejected
            ALREADY_VERIFIED = :already_verified

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
