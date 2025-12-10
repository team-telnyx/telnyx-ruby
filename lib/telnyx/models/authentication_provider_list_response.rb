# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AuthenticationProviders#list
    class AuthenticationProviderListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AuthenticationProvider>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AuthenticationProvider] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::AuthenticationProvider>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
