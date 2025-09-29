# typed: strong

module Telnyx
  module Models
    module VerifiedNumbers
      class ActionSubmitVerificationCodeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::VerifiedNumbers::ActionSubmitVerificationCodeParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :verification_code

        sig do
          params(
            verification_code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(verification_code:, request_options: {})
        end

        sig do
          override.returns(
            {
              verification_code: String,
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
