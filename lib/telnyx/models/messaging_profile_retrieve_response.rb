# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#retrieve
    class MessagingProfileRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessagingMessagingProfile, nil]
      optional :data, -> { Telnyx::MessagingMessagingProfile }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessagingMessagingProfile]
    end
  end
end
