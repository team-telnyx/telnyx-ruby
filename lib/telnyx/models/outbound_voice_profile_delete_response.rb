# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OutboundVoiceProfiles#delete
    class OutboundVoiceProfileDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::OutboundVoiceProfile, nil]
      optional :data, -> { Telnyx::OutboundVoiceProfile }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::OutboundVoiceProfile]
    end
  end
end
