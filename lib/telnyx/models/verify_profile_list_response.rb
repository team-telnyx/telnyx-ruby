# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#list
    class VerifyProfileListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::VerifyProfile>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::VerifyProfile] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::Verifications::VerifyMeta]
      required :meta, -> { Telnyx::Verifications::VerifyMeta }

      # @!method initialize(data:, meta:)
      #   A paginated list of Verify profiles
      #
      #   @param data [Array<Telnyx::Models::VerifyProfile>]
      #   @param meta [Telnyx::Models::Verifications::VerifyMeta]
    end
  end
end
