# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAssignments#update
    class GlobalIPAssignmentUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Telnyx::Models::GlobalIPAssignmentUpdateParams::Body]
      required :body, -> { Telnyx::GlobalIPAssignmentUpdateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Telnyx::Models::GlobalIPAssignmentUpdateParams::Body]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Body < Telnyx::Models::GlobalIPAssignment
        # @!method initialize
      end
    end
  end
end
