# typed: strong

module Telnyx
  module Models
    module Verifications
      class ActionVerifyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Verifications::ActionVerifyParams,
              Telnyx::Internal::AnyHash
            )
          end

        # This is the code the user submits for verification.
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        # Identifies if the verification code has been accepted or rejected. Only
        # permitted if custom_code was used for the verification.
        sig do
          returns(
            T.nilable(
              Telnyx::Verifications::ActionVerifyParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::Verifications::ActionVerifyParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            code: String,
            status: Telnyx::Verifications::ActionVerifyParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # This is the code the user submits for verification.
          code: nil,
          # Identifies if the verification code has been accepted or rejected. Only
          # permitted if custom_code was used for the verification.
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              code: String,
              status:
                Telnyx::Verifications::ActionVerifyParams::Status::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Identifies if the verification code has been accepted or rejected. Only
        # permitted if custom_code was used for the verification.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Verifications::ActionVerifyParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPTED =
            T.let(
              :accepted,
              Telnyx::Verifications::ActionVerifyParams::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::Verifications::ActionVerifyParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Verifications::ActionVerifyParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
