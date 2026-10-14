# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#delete
      class AssistantDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute assistant_id
        #
        #   @return [String]
        required :assistant_id, String

        # @!attribute hard_delete
        #   Permanently delete the assistant immediately instead of soft-deleting it to the
        #   Recently Deleted list, where it stays restorable for 30 days.
        #
        #   @return [Boolean, nil]
        optional :hard_delete, Telnyx::Internal::Type::Boolean

        # @!method initialize(assistant_id:, hard_delete: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantDeleteParams} for more details.
        #
        #   @param assistant_id [String]
        #
        #   @param hard_delete [Boolean] Permanently delete the assistant immediately instead of soft-deleting it to the
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
