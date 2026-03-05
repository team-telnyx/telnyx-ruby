# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice#delete
          class VoiceDeleteParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:, request_options: {})
            #   @param id [String]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
