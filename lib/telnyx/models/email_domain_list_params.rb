# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#list
    class EmailDomainListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_domain
      #   Partial match on domain name (case-insensitive)
      #
      #   @return [String, nil]
      optional :filter_domain, String

      # @!attribute filter_profile_id
      #   Filter by profile UUID
      #
      #   @return [String, nil]
      optional :filter_profile_id, String

      # @!attribute filter_status
      #   Filter domains by verification status: pending, verifying, verified, failed,
      #   degraded, or suspended.
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainStatus, nil]
      optional :filter_status, enum: -> { Telnyx::EmailDomainStatus }

      # @!attribute filter_type
      #   Filter domains by type: custom, shared, or shared_inbound.
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainType, nil]
      optional :filter_type, enum: -> { Telnyx::EmailDomainType }

      # @!attribute filter_usable_for_inbound
      #   Filter domains by whether they can currently receive inbound email.
      #
      #   @return [Boolean, nil]
      optional :filter_usable_for_inbound, Telnyx::Internal::Type::Boolean

      # @!attribute filter_usable_for_sending
      #   Filter domains by whether they can currently be used to send email.
      #
      #   @return [Boolean, nil]
      optional :filter_usable_for_sending, Telnyx::Internal::Type::Boolean

      # @!attribute page_after
      #   Cursor for records after the provided value (cursor pagination)
      #
      #   @return [String, nil]
      optional :page_after, String

      # @!attribute page_before
      #   Cursor for records before the provided value (cursor pagination)
      #
      #   @return [String, nil]
      optional :page_before, String

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
      #   @return [Symbol, Telnyx::Models::EmailDomainListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::EmailDomainListParams::Sort }

      # @!method initialize(filter_domain: nil, filter_profile_id: nil, filter_status: nil, filter_type: nil, filter_usable_for_inbound: nil, filter_usable_for_sending: nil, page_after: nil, page_before: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailDomainListParams} for more details.
      #
      #   @param filter_domain [String] Partial match on domain name (case-insensitive)
      #
      #   @param filter_profile_id [String] Filter by profile UUID
      #
      #   @param filter_status [Symbol, Telnyx::Models::EmailDomainStatus] Filter domains by verification status: pending, verifying, verified, failed, deg
      #
      #   @param filter_type [Symbol, Telnyx::Models::EmailDomainType] Filter domains by type: custom, shared, or shared_inbound.
      #
      #   @param filter_usable_for_inbound [Boolean] Filter domains by whether they can currently receive inbound email.
      #
      #   @param filter_usable_for_sending [Boolean] Filter domains by whether they can currently be used to send email.
      #
      #   @param page_after [String] Cursor for records after the provided value (cursor pagination)
      #
      #   @param page_before [String] Cursor for records before the provided value (cursor pagination)
      #
      #   @param page_number [Integer] Page number to return (offset pagination)
      #
      #   @param page_size [Integer] Number of records per page
      #
      #   @param sort [Symbol, Telnyx::Models::EmailDomainListParams::Sort] Field to sort by. Prefix with `-` for descending order.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Field to sort by. Prefix with `-` for descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"
        DOMAIN = :domain
        MINUS_DOMAIN = :"-domain"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
