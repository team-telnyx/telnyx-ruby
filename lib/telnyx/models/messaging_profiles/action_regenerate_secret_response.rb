# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      # @see Telnyx::Resources::MessagingProfiles::Actions#regenerate_secret
      class ActionRegenerateSecretResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::MessagingProfile, nil]
        optional :data, -> { Telnyx::MessagingProfile }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::MessagingProfile]
      end
    end
  end
end
