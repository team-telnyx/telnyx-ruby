# typed: strong

module Telnyx
  module Models
    module Storage
      class KvCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Storage::KvCreateParams, Telnyx::Internal::AnyHash)
          end

        # Namespace name. May contain lowercase letters, numbers, and hyphens only.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Namespace name. May contain lowercase letters, numbers, and hyphens only.
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
