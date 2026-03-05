# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class VoicemailRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::VoicemailRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :phone_number_id

        sig do
          params(
            phone_number_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(phone_number_id:, request_options: {})
        end

        sig do
          override.returns(
            { phone_number_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
