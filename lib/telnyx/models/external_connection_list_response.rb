# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ExternalConnections#list
    class ExternalConnectionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::ExternalConnection>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnection] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::ExternalVoiceIntegrationsPaginationMeta, nil]
      optional :meta, -> { Telnyx::ExternalVoiceIntegrationsPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::ExternalConnection>]
      #   @param meta [Telnyx::Models::ExternalVoiceIntegrationsPaginationMeta]
    end
  end
end
