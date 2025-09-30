# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionValidateRegistrationCodesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCards::ActionValidateRegistrationCodesParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :registration_codes

        sig { params(registration_codes: T::Array[String]).void }
        attr_writer :registration_codes

        sig do
          params(
            registration_codes: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(registration_codes: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              registration_codes: T::Array[String],
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
