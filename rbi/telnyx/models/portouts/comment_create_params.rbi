# typed: strong

module Telnyx
  module Models
    module Portouts
      class CommentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Portouts::CommentCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Comment to post on this portout request
        sig { returns(T.nilable(String)) }
        attr_reader :body

        sig { params(body: String).void }
        attr_writer :body

        sig do
          params(
            body: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Comment to post on this portout request
          body: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { body: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
