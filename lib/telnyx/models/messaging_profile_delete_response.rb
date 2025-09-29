# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#delete
    class MessagingProfileDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessagingProfile, nil]
      optional :data, -> { Telnyx::MessagingProfile }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessagingProfile]
    end
  end
end
