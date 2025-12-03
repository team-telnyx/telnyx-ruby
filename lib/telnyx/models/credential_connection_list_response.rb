# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CredentialConnections#list
    class CredentialConnectionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::CredentialConnection>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CredentialConnection] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::ConnectionsPaginationMeta, nil]
      optional :meta, -> { Telnyx::ConnectionsPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::CredentialConnection>]
      #   @param meta [Telnyx::Models::ConnectionsPaginationMeta]
    end
  end
end
