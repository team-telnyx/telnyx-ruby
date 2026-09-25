# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        # @see Telnyx::Resources::AI::Memory::Namespaces#retrieve
        class NamespaceRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute namespace
          #
          #   @return [String]
          required :namespace, String

          # @!attribute operation_id
          #
          #   @return [String]
          required :operation_id, String

          # @!method initialize(namespace:, operation_id:, request_options: {})
          #   @param namespace [String]
          #   @param operation_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
