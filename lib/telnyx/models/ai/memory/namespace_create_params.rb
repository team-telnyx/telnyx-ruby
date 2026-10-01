# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        # @see Telnyx::Resources::AI::Memory::Namespaces#create
        class NamespaceCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute name
          #   A name for the new namespace, unique within your organization.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(name:, request_options: {})
          #   @param name [String] A name for the new namespace, unique within your organization.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
