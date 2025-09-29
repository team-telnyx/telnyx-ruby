# typed: strong

module Telnyx
  module Models
    module Storage
      class BucketCreatePresignedURLResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Storage::BucketCreatePresignedURLResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content
            )
          )
        end
        attr_reader :content

        sig do
          params(
            content:
              Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content::OrHash
          ).void
        end
        attr_writer :content

        sig do
          params(
            content:
              Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content::OrHash
          ).returns(T.attached_class)
        end
        def self.new(content: nil)
        end

        sig do
          override.returns(
            {
              content:
                Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content
            }
          )
        end
        def to_hash
        end

        class Content < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content,
                Telnyx::Internal::AnyHash
              )
            end

          # The token for the object
          sig { returns(T.nilable(String)) }
          attr_reader :token

          sig { params(token: String).void }
          attr_writer :token

          # The expiration time of the token
          sig { returns(T.nilable(Time)) }
          attr_reader :expires_at

          sig { params(expires_at: Time).void }
          attr_writer :expires_at

          # The presigned URL for the object
          sig { returns(T.nilable(String)) }
          attr_reader :presigned_url

          sig { params(presigned_url: String).void }
          attr_writer :presigned_url

          sig do
            params(
              token: String,
              expires_at: Time,
              presigned_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The token for the object
            token: nil,
            # The expiration time of the token
            expires_at: nil,
            # The presigned URL for the object
            presigned_url: nil
          )
          end

          sig do
            override.returns(
              { token: String, expires_at: Time, presigned_url: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
