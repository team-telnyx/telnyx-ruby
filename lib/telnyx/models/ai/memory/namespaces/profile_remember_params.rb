# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#remember
          class ProfileRememberParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute namespace
            #
            #   @return [String]
            required :namespace, String

            # @!attribute profile_id
            #
            #   @return [String]
            required :profile_id, String

            # @!attribute text
            #
            #   @return [String]
            required :text, String

            # @!method initialize(namespace:, profile_id:, text:, request_options: {})
            #   @param namespace [String]
            #   @param profile_id [String]
            #   @param text [String]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
