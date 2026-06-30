# typed: strong

module Telnyx
  module Models
    module Dir
      class VerifyEmailConfirmParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Dir::VerifyEmailConfirmParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # The 6-digit code sent to the authorizer email.
        sig { returns(String) }
        attr_accessor :code

        sig do
          params(
            dir_id: String,
            code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # The 6-digit code sent to the authorizer email.
          code:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
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
