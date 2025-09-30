# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Voicemail#retrieve
      class VoicemailRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PhoneNumbers::VoicemailPrefResponse, nil]
        optional :data, -> { Telnyx::PhoneNumbers::VoicemailPrefResponse }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PhoneNumbers::VoicemailPrefResponse]
      end
    end
  end
end
