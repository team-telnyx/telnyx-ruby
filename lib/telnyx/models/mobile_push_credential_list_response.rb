# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePushCredentials#list
    class MobilePushCredentialListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PushCredential>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PushCredential] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   Mobile mobile push credentials
      #
      #   @param data [Array<Telnyx::Models::PushCredential>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
