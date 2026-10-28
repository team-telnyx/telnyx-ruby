# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::IPPools#create
      class IPPoolCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute name
        #   Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`,
        #   starting and ending with a letter or digit. Must be unique within the account
        #   and must not start with `dip_`.
        #
        #   @return [String]
        required :name, String

        # @!attribute domain_id
        #   Scope the pool to one of the account's email domains; the pool then carries that
        #   domain's mail. Scope at most one pool to each domain.
        #
        #   @return [String, nil]
        optional :domain_id, String

        # @!attribute is_default
        #   Make this the account's default pool, which carries mail for sending domains
        #   without a domain-scoped pool. An account can have one default pool. Defaults to
        #   `false`.
        #
        #   @return [Boolean, nil]
        optional :is_default, Telnyx::Internal::Type::Boolean

        # @!method initialize(name:, domain_id: nil, is_default: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::IPPoolCreateParams} for more details.
        #
        #   @param name [String] Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`, star
        #
        #   @param domain_id [String] Scope the pool to one of the account's email domains; the pool then carries that
        #
        #   @param is_default [Boolean] Make this the account's default pool, which carries mail for sending domains wit
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
