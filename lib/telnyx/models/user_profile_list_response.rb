# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserProfile#list
    class UserProfileListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   The authenticated user's profile.
      #
      #   @return [Telnyx::Models::UserProfileAPI]
      required :data, -> { Telnyx::UserProfileAPI }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::UserProfileAPI] The authenticated user's profile.
    end
  end
end
