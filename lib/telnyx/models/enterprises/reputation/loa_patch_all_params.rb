# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Loa#patch_all
        class LoaPatchAllParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute loa_document_id
          #   Id of the new signed LOA document (from the Telnyx Documents API). Changing it
          #   resets LOA approval; the new document must be approved before more numbers can
          #   be added.
          #
          #   @return [String]
          required :loa_document_id, String

          # @!method initialize(enterprise_id:, loa_document_id:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::LoaPatchAllParams} for more details.
          #
          #   @param enterprise_id [String]
          #
          #   @param loa_document_id [String] Id of the new signed LOA document (from the Telnyx Documents API). Changing it r
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
