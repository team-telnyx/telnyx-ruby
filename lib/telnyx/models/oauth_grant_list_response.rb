# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthGrants#list
    class OAuthGrantListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::OAuthGrant>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::OAuthGrant] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMetaOAuth, nil]
      optional :meta, -> { Telnyx::PaginationMetaOAuth }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::OAuthGrant>]
      #   @param meta [Telnyx::Models::PaginationMetaOAuth]
    end
  end
end
