# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthClients#list
    class OAuthClientListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::OAuthClient>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::OAuthClient] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMetaOAuth, nil]
      optional :meta, -> { Telnyx::PaginationMetaOAuth }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::OAuthClient>]
      #   @param meta [Telnyx::Models::PaginationMetaOAuth]
    end
  end
end
