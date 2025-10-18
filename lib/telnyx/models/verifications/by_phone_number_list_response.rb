# frozen_string_literal: true

module Telnyx
  module Models
    module Verifications
      # @see Telnyx::Resources::Verifications::ByPhoneNumber#list
      class ByPhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Verification>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Verification] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Verifications::VerifyMeta]
        required :meta, -> { Telnyx::Verifications::VerifyMeta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::Verification>]
        #   @param meta [Telnyx::Models::Verifications::VerifyMeta]
      end
    end
  end
end
