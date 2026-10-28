# typed: strong

module Telnyx
  module Models
    module Email
      class IPPoolUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Email::IPPoolUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # Scope the pool to one of the account's email domains, or `null` to remove the
        # scope.
        sig { returns(T.nilable(String)) }
        attr_accessor :domain_id

        # Set or clear the account default flag. An account can have one default pool.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_default

        sig { params(is_default: T::Boolean).void }
        attr_writer :is_default

        # Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`,
        # starting and ending with a letter or digit. Must be unique within the account
        # and must not start with `dip_`.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            id: String,
            domain_id: T.nilable(String),
            is_default: T::Boolean,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Scope the pool to one of the account's email domains, or `null` to remove the
          # scope.
          domain_id: nil,
          # Set or clear the account default flag. An account can have one default pool.
          is_default: nil,
          # Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`,
          # starting and ending with a letter or digit. Must be unique within the account
          # and must not start with `dip_`.
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              domain_id: T.nilable(String),
              is_default: T::Boolean,
              name: String,
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
