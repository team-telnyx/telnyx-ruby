# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#delete
          class ProfileDeleteParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute namespace
            #   The namespace. `default` exists for every organization.
            #
            #   @return [String]
            required :namespace, String

            # @!attribute profile_id
            #
            #   @return [String]
            required :profile_id, String

            # @!method initialize(namespace:, profile_id:, request_options: {})
            #   @param namespace [String] The namespace. `default` exists for every organization.
            #
            #   @param profile_id [String]
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
