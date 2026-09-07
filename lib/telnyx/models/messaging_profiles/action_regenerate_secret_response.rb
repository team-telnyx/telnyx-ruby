# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      # @see Telnyx::Resources::MessagingProfiles::Actions#regenerate_secret
      class ActionRegenerateSecretResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::MessagingMessagingProfile, nil]
        optional :data, -> { Telnyx::MessagingMessagingProfile }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::MessagingMessagingProfile]
      end
    end
  end
end
