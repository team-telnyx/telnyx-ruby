# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class PhoneNumberGetConversationWindowParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::PhoneNumberGetConversationWindowParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :phone_number

        # Destination phone number in E.164 format
        sig { returns(String) }
        attr_accessor :destination_number

        sig do
          params(
            phone_number: String,
            destination_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          phone_number:,
          # Destination phone number in E.164 format
          destination_number:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              phone_number: String,
              destination_number: String,
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
