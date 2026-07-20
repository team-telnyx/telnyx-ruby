# typed: strong

module Telnyx
  module Models
    module Storage
      class CloudfUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::CloudfUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # New filesystem name, unique within your organization. Names are trimmed and
        # lowercased; after normalization they may contain lowercase letters, numbers,
        # `.`, `_`, and `-` only.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            id: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # New filesystem name, unique within your organization. Names are trimmed and
          # lowercased; after normalization they may contain lowercase letters, numbers,
          # `.`, `_`, and `-` only.
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
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
