# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tags#create
        class TagCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute assistant_id
          #
          #   @return [String]
          required :assistant_id, String

          # @!attribute tag
          #
          #   @return [String]
          required :tag, String

          # @!method initialize(assistant_id:, tag:, request_options: {})
          #   @param assistant_id [String]
          #   @param tag [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
