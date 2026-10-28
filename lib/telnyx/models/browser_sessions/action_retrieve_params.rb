# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      # @see Telnyx::Resources::BrowserSessions::Actions#retrieve
      class ActionRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute action_id
        #
        #   @return [String]
        required :action_id, String

        # @!method initialize(id:, action_id:, request_options: {})
        #   @param id [String]
        #   @param action_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
