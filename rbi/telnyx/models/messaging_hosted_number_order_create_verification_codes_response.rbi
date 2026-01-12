# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberOrderCreateVerificationCodesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data
          ]
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Phone number for which the verification code was created
        sig { returns(String) }
        attr_accessor :phone_number

        # Error message describing why the verification code creation failed
        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        # Type of verification method used
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Unique identifier for the verification code
        sig { returns(T.nilable(String)) }
        attr_reader :verification_code_id

        sig { params(verification_code_id: String).void }
        attr_writer :verification_code_id

        # Verification code result response
        sig do
          params(
            phone_number: String,
            error: String,
            type:
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type::OrSymbol,
            verification_code_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Phone number for which the verification code was created
          phone_number:,
          # Error message describing why the verification code creation failed
          error: nil,
          # Type of verification method used
          type: nil,
          # Unique identifier for the verification code
          verification_code_id: nil
        )
        end

        sig do
          override.returns(
            {
              phone_number: String,
              error: String,
              type:
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type::TaggedSymbol,
              verification_code_id: String
            }
          )
        end
        def to_hash
        end

        # Type of verification method used
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type::TaggedSymbol
            )
          CALL =
            T.let(
              :call,
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type::TaggedSymbol
            )
          FLASHCALL =
            T.let(
              :flashcall,
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type::TaggedSymbol
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
