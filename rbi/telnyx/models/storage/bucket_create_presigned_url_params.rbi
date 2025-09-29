# typed: strong

module Telnyx
  module Models
    module Storage
      class BucketCreatePresignedURLParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::BucketCreatePresignedURLParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :bucket_name

        # The time to live of the token in seconds
        sig { returns(T.nilable(Integer)) }
        attr_reader :ttl

        sig { params(ttl: Integer).void }
        attr_writer :ttl

        sig do
          params(
            bucket_name: String,
            ttl: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          bucket_name:,
          # The time to live of the token in seconds
          ttl: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              bucket_name: String,
              ttl: Integer,
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
