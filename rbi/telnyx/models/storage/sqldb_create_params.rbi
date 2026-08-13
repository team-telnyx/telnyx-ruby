# typed: strong

module Telnyx
  module Models
    module Storage
      class SqldbCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Storage::SqldbCreateParams, Telnyx::Internal::AnyHash)
          end

        # Database name. Lowercase letters, numbers, and hyphens only; must start and end
        # with a letter or number.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Database name. Lowercase letters, numbers, and hyphens only; must start and end
          # with a letter or number.
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { name: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
