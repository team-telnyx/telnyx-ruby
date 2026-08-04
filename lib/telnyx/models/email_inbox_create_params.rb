# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailInboxes#create
    class EmailInboxCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute domain_id
      #   Account-owned, inbound-enabled domain UUID. The account's shared inbound
      #   subdomain is allocated when omitted.
      #
      #   @return [String, nil]
      optional :domain_id, String

      # @!attribute username
      #   Inbox local part. Trimmed and lowercased before validation; the normalized value
      #   must be 1-64 characters, start and end with a letter or digit, and contain only
      #   letters, digits, dots, hyphens, and underscores. Generated when omitted.
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(domain_id: nil, username: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailInboxCreateParams} for more details.
      #
      #   @param domain_id [String] Account-owned, inbound-enabled domain UUID. The account's shared inbound subdoma
      #
      #   @param username [String] Inbox local part. Trimmed and lowercased before validation; the normalized value
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
