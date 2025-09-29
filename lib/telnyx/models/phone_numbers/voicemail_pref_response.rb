# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      class VoicemailPrefResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute enabled
        #   Whether voicemail is enabled.
        #
        #   @return [Boolean, nil]
        optional :enabled, Telnyx::Internal::Type::Boolean

        # @!attribute pin
        #   The pin used for the voicemail.
        #
        #   @return [String, nil]
        optional :pin, String

        # @!method initialize(enabled: nil, pin: nil)
        #   @param enabled [Boolean] Whether voicemail is enabled.
        #
        #   @param pin [String] The pin used for the voicemail.
      end
    end
  end
end
