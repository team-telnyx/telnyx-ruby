# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Calls#retrieve_status
    class CallRetrieveStatusParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute call_control_id
      #
      #   @return [String]
      required :call_control_id, String

      # @!method initialize(call_control_id:, request_options: {})
      #   @param call_control_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
