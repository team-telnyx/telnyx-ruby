# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Uploads#list
      class UploadListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::ExternalConnections::Upload>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnections::Upload] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::ExternalVoiceIntegrationsPaginationMeta, nil]
        optional :meta, -> { Telnyx::ExternalVoiceIntegrationsPaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::ExternalConnections::Upload>]
        #   @param meta [Telnyx::Models::ExternalVoiceIntegrationsPaginationMeta]
      end
    end
  end
end
