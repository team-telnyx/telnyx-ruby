# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#unhold
      class ActionUnholdParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_ids
        #   List of unique identifiers and tokens for controlling the call. Enter each call
        #   control ID to be unheld.
        #
        #   @return [Array<String>]
        required :call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(call_control_ids:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionUnholdParams} for more details.
        #
        #   @param call_control_ids [Array<String>] List of unique identifiers and tokens for controlling the call. Enter each call
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
