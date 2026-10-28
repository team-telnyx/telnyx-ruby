# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Results#rerun
            class ResultRerunParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute id
              #
              #   @return [Integer]
              required :id, Integer

              # @!method initialize(id:, request_options: {})
              #   @param id [Integer]
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
