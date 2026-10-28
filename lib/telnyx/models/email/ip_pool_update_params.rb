# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::IPPools#update
      class IPPoolUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute domain_id
        #   Scope the pool to one of the account's email domains, or `null` to remove the
        #   scope.
        #
        #   @return [String, nil]
        optional :domain_id, String, nil?: true

        # @!attribute is_default
        #   Set or clear the account default flag. An account can have one default pool.
        #
        #   @return [Boolean, nil]
        optional :is_default, Telnyx::Internal::Type::Boolean

        # @!attribute name
        #   Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`,
        #   starting and ending with a letter or digit. Must be unique within the account
        #   and must not start with `dip_`.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, domain_id: nil, is_default: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::IPPoolUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param domain_id [String, nil] Scope the pool to one of the account's email domains, or `null` to remove the sc
        #
        #   @param is_default [Boolean] Set or clear the account default flag. An account can have one default pool.
        #
        #   @param name [String] Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`, star
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
