# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Filters#create
      class FilterCreateParams < Telnyx::Models::EmailInboxes::MutateInboxFiltersRequest
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!method initialize(inbox_id:, request_options: {})
        #   @param inbox_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
