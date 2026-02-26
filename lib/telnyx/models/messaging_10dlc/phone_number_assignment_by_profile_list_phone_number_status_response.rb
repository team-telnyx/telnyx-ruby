# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::PhoneNumberAssignmentByProfile#list_phone_number_status
      class PhoneNumberAssignmentByProfileListPhoneNumberStatusResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute records
        #
        #   @return [Array<Telnyx::Models::Messaging10dlc::ProfileAssignmentPhoneNumbers>]
        required :records,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Messaging10dlc::ProfileAssignmentPhoneNumbers] }

        # @!method initialize(records:)
        #   @param records [Array<Telnyx::Models::Messaging10dlc::ProfileAssignmentPhoneNumbers>]
      end
    end
  end
end
