# typed: strong

module Telnyx
  module Models
    module Email
      class IPPoolCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Email::IPPoolCreateParams, Telnyx::Internal::AnyHash)
          end

        # Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`,
        # starting and ending with a letter or digit. Must be unique within the account
        # and must not start with `dip_`.
        sig { returns(String) }
        attr_accessor :name

        # Scope the pool to one of the account's email domains; the pool then carries that
        # domain's mail. Scope at most one pool to each domain.
        sig { returns(T.nilable(String)) }
        attr_reader :domain_id

        sig { params(domain_id: String).void }
        attr_writer :domain_id

        # Make this the account's default pool, which carries mail for sending domains
        # without a domain-scoped pool. An account can have one default pool. Defaults to
        # `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_default

        sig { params(is_default: T::Boolean).void }
        attr_writer :is_default

        sig do
          params(
            name: String,
            domain_id: String,
            is_default: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`,
          # starting and ending with a letter or digit. Must be unique within the account
          # and must not start with `dip_`.
          name:,
          # Scope the pool to one of the account's email domains; the pool then carries that
          # domain's mail. Scope at most one pool to each domain.
          domain_id: nil,
          # Make this the account's default pool, which carries mail for sending domains
          # without a domain-scoped pool. An account can have one default pool. Defaults to
          # `false`.
          is_default: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              domain_id: String,
              is_default: T::Boolean,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
