# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tools#test_
        class ToolTestResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   Response model for webhook tool test results
          #
          #   @return [Telnyx::Models::AI::Assistants::ToolTestResponse::Data]
          required :data, -> { Telnyx::Models::AI::Assistants::ToolTestResponse::Data }

          # @!method initialize(data:)
          #   Response model for webhook tool test results
          #
          #   @param data [Telnyx::Models::AI::Assistants::ToolTestResponse::Data] Response model for webhook tool test results

          # @see Telnyx::Models::AI::Assistants::ToolTestResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute content_type
            #
            #   @return [String]
            required :content_type, String

            # @!attribute request
            #
            #   @return [Hash{Symbol=>Object}]
            required :request, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute response
            #
            #   @return [String]
            required :response, String

            # @!attribute status_code
            #
            #   @return [Integer]
            required :status_code, Integer

            # @!attribute success
            #
            #   @return [Boolean]
            required :success, Telnyx::Internal::Type::Boolean

            # @!method initialize(content_type:, request:, response:, status_code:, success:)
            #   Response model for webhook tool test results
            #
            #   @param content_type [String]
            #   @param request [Hash{Symbol=>Object}]
            #   @param response [String]
            #   @param status_code [Integer]
            #   @param success [Boolean]
          end
        end
      end
    end
  end
end
