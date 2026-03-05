# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingNumbersBulkUpdates#retrieve
    class MessagingNumbersBulkUpdateRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute order_id
      #
      #   @return [String]
      required :order_id, String

      # @!method initialize(order_id:, request_options: {})
      #   @param order_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
