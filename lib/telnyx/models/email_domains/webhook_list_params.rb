# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomains
      # @see Telnyx::Resources::EmailDomains::Webhooks#list
      class WebhookListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute domain_id
        #
        #   @return [String]
        required :domain_id, String

        # @!attribute page_number
        #   Page number to return (offset pagination)
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of records per page
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute sort
        #   Field to sort by. Prefix with `-` for descending order.
        #
        #   @return [Symbol, Telnyx::Models::EmailDomains::WebhookListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::EmailDomains::WebhookListParams::Sort }

        # @!method initialize(domain_id:, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #   @param domain_id [String]
        #
        #   @param page_number [Integer] Page number to return (offset pagination)
        #
        #   @param page_size [Integer] Number of records per page
        #
        #   @param sort [Symbol, Telnyx::Models::EmailDomains::WebhookListParams::Sort] Field to sort by. Prefix with `-` for descending order.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Field to sort by. Prefix with `-` for descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          CREATED_AT = :created_at
          CREATED_AT_DESC = :"-created_at"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
