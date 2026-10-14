# typed: strong

module Telnyx
  module Models
    module Enterprises
      class VerifyEmailConfirmParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::VerifyEmailConfirmParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :enterprise_id

        # The 6-digit code sent to the enterprise account's contact email.
        sig { returns(String) }
        attr_accessor :code

        sig do
          params(
            enterprise_id: String,
            code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          enterprise_id:,
          # The 6-digit code sent to the enterprise account's contact email.
          code:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enterprise_id: String,
              code: String,
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
