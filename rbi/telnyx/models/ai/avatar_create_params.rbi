# typed: strong

module Telnyx
  module Models
    module AI
      class AvatarCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AvatarCreateParams, Telnyx::Internal::AnyHash)
          end

        # JPEG, PNG, or WebP image file. The maximum file size is 10 MiB.
        sig { returns(Telnyx::Internal::FileInput) }
        attr_accessor :image_file

        # Customer-facing name of the custom avatar.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            image_file: Telnyx::Internal::FileInput,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # JPEG, PNG, or WebP image file. The maximum file size is 10 MiB.
          image_file:,
          # Customer-facing name of the custom avatar.
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              image_file: Telnyx::Internal::FileInput,
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
