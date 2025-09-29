# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#validate_registration_codes
      class ActionValidateRegistrationCodesResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute invalid_detail
          #   The validation message
          #
          #   @return [String, nil]
          optional :invalid_detail, String, nil?: true

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute registration_code
          #   The 10-digit SIM card registration code
          #
          #   @return [String, nil]
          optional :registration_code, String

          # @!attribute valid
          #   The attribute that denotes whether the code is valid or not
          #
          #   @return [Boolean, nil]
          optional :valid, Telnyx::Internal::Type::Boolean

          # @!method initialize(invalid_detail: nil, record_type: nil, registration_code: nil, valid: nil)
          #   @param invalid_detail [String, nil] The validation message
          #
          #   @param record_type [String]
          #
          #   @param registration_code [String] The 10-digit SIM card registration code
          #
          #   @param valid [Boolean] The attribute that denotes whether the code is valid or not
        end
      end
    end
  end
end
