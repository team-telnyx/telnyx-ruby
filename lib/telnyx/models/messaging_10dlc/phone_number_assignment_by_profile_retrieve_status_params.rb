# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::PhoneNumberAssignmentByProfile#retrieve_status
      class PhoneNumberAssignmentByProfileRetrieveStatusParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute task_id
        #
        #   @return [String]
        required :task_id, String

        # @!method initialize(task_id:, request_options: {})
        #   @param task_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
