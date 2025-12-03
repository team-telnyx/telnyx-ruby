# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Fqdns#list
    class FqdnListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::Fqdn>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Fqdn] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::ConnectionsPaginationMeta, nil]
      optional :meta, -> { Telnyx::ConnectionsPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::Fqdn>]
      #   @param meta [Telnyx::Models::ConnectionsPaginationMeta]
    end
  end
end
