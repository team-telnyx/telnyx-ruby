# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAssignments#update
    class GlobalIPAssignmentUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute global_ip_assignment_update_request
      #
      #   @return [Telnyx::Models::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest]
      required :global_ip_assignment_update_request,
               -> { Telnyx::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest },
               api_name: :globalIpAssignmentUpdateRequest

      # @!method initialize(global_ip_assignment_update_request:, request_options: {})
      #   @param global_ip_assignment_update_request [Telnyx::Models::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class GlobalIPAssignmentUpdateRequest < Telnyx::Internal::Type::BaseModel
        # @!method initialize
      end
    end
  end
end
