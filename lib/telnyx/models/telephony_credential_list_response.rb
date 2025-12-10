# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TelephonyCredentials#list
    class TelephonyCredentialListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::TelephonyCredential>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::TelephonyCredential] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::TelephonyCredential>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
