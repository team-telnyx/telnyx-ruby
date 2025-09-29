# frozen_string_literal: true

module Telnyx
  module Models
    class CallControlApplicationOutbound < Telnyx::Internal::Type::BaseModel
      # @!attribute channel_limit
      #   When set, this will limit the total number of outbound calls to phone numbers
      #   associated with this connection.
      #
      #   @return [Integer, nil]
      optional :channel_limit, Integer

      # @!attribute outbound_voice_profile_id
      #   Identifies the associated outbound voice profile.
      #
      #   @return [String, nil]
      optional :outbound_voice_profile_id, String

      # @!method initialize(channel_limit: nil, outbound_voice_profile_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallControlApplicationOutbound} for more details.
      #
      #   @param channel_limit [Integer] When set, this will limit the total number of outbound calls to phone numbers as
      #
      #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
    end
  end
end
