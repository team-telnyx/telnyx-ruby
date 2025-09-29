# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Actions#verify_ownership
      class ActionVerifyOwnershipResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data, nil]
        optional :data, -> { Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data]

        # @see Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute found
          #   The list of phone numbers which you own and are in an editable state
          #
          #   @return [Array<Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::Found>, nil]
          optional :found,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::Found] }

          # @!attribute not_found
          #   Phone numbers that are not found in the account
          #
          #   @return [Array<String>, nil]
          optional :not_found, Telnyx::Internal::Type::ArrayOf[String]

          response_only do
            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(found: nil, not_found: nil, record_type: nil)
          #   @param found [Array<Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::Found>] The list of phone numbers which you own and are in an editable state
          #
          #   @param not_found [Array<String>] Phone numbers that are not found in the account
          #
          #   @param record_type [String] Identifies the type of the resource.

          class Found < Telnyx::Internal::Type::BaseModel
            # @!attribute number_val_e164
            #   The phone number in E.164 format
            #
            #   @return [String, nil]
            optional :number_val_e164, String

            response_only do
              # @!attribute id
              #   Identifies the resource.
              #
              #   @return [String, nil]
              optional :id, String
            end

            # @!method initialize(id: nil, number_val_e164: nil)
            #   @param id [String] Identifies the resource.
            #
            #   @param number_val_e164 [String] The phone number in E.164 format
          end
        end
      end
    end
  end
end
