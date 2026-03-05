# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DialogflowConnections#delete
    class DialogflowConnectionDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connection_id
      #
      #   @return [String]
      required :connection_id, String

      # @!method initialize(connection_id:, request_options: {})
      #   @param connection_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
