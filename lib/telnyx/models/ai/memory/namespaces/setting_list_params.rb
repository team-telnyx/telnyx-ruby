# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Settings#list
          class SettingListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute namespace
            #   The namespace. `default` exists for every organization.
            #
            #   @return [String]
            required :namespace, String

            # @!method initialize(namespace:, request_options: {})
            #   @param namespace [String] The namespace. `default` exists for every organization.
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
