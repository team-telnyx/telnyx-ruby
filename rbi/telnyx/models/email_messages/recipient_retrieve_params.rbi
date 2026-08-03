# typed: strong

module Telnyx
  module Models
    module EmailMessages
      class RecipientRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailMessages::RecipientRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_id

        sig { returns(String) }
        attr_accessor :recipient_id

        sig do
          params(
            email_id: String,
            recipient_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(email_id:, recipient_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              email_id: String,
              recipient_id: String,
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
