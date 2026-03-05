# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module FineTuning
        # @see Telnyx::Resources::AI::FineTuning::Jobs#retrieve
        class JobRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute job_id
          #
          #   @return [String]
          required :job_id, String

          # @!method initialize(job_id:, request_options: {})
          #   @param job_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
