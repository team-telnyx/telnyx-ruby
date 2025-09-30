# typed: strong

module Telnyx
  module Models
    module Verifications
      module ByPhoneNumber
        class ActionVerifyParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Verifications::ByPhoneNumber::ActionVerifyParams,
                Telnyx::Internal::AnyHash
              )
            end

          # This is the code the user submits for verification.
          sig { returns(String) }
          attr_accessor :code

          # The identifier of the associated Verify profile.
          sig { returns(String) }
          attr_accessor :verify_profile_id

          sig do
            params(
              code: String,
              verify_profile_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # This is the code the user submits for verification.
            code:,
            # The identifier of the associated Verify profile.
            verify_profile_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                code: String,
                verify_profile_id: String,
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
end
