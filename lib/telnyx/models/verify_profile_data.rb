# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#create
    class VerifyProfileData < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VerifyProfile, nil]
      optional :data, -> { Telnyx::VerifyProfile }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VerifyProfile]
    end
  end
end
