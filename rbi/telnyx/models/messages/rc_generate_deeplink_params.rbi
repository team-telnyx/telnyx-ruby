# typed: strong

module Telnyx
  module Models
    module Messages
      class RcGenerateDeeplinkParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messages::RcGenerateDeeplinkParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Pre-filled message body (URL encoded)
        sig { returns(T.nilable(String)) }
        attr_reader :body

        sig { params(body: String).void }
        attr_writer :body

        # Phone number in E164 format (URL encoded)
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          params(
            body: String,
            phone_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Pre-filled message body (URL encoded)
          body: nil,
          # Phone number in E164 format (URL encoded)
          phone_number: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body: String,
              phone_number: String,
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
