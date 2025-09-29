# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class TfPhoneNumber < Telnyx::Internal::Type::BaseModel
          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String, api_name: :phoneNumber

          # @!method initialize(phone_number:)
          #   A phone number
          #
          #   @param phone_number [String]
        end
      end
    end
  end
end
