# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        # @see Telnyx::Resources::AI::Memory::Namespaces#delete
        class NamespaceDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute namespace
          #   The namespace to delete. `default` cannot be deleted.
          #
          #   @return [String]
          required :namespace, String

          # @!method initialize(namespace:, request_options: {})
          #   @param namespace [String] The namespace to delete. `default` cannot be deleted.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
