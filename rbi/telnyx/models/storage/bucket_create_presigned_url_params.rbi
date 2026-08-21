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

        sig { returns(String) }
        attr_accessor :object_name

        sig do
          returns(
            T.nilable(Telnyx::Storage::BucketCreatePresignedURLParams::Body)
          )
        end
        attr_reader :body

        sig do
          params(
            body: Telnyx::Storage::BucketCreatePresignedURLParams::Body::OrHash
          ).void
        end
        attr_writer :body

        sig do
          params(
            bucket_name: String,
            object_name: String,
            body: Telnyx::Storage::BucketCreatePresignedURLParams::Body::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(bucket_name:, object_name:, body: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              bucket_name: String,
              object_name: String,
              body: Telnyx::Storage::BucketCreatePresignedURLParams::Body,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Body < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::BucketCreatePresignedURLParams::Body,
                Telnyx::Internal::AnyHash
              )
            end

          # The time to live of the token in seconds
          sig { returns(T.nilable(Integer)) }
          attr_reader :ttl

          sig { params(ttl: Integer).void }
          attr_writer :ttl

          sig { params(ttl: Integer).returns(T.attached_class) }
          def self.new(
            # The time to live of the token in seconds
            ttl: nil
          )
          end

          sig { override.returns({ ttl: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
