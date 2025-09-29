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
            Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Variants
          ]
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              T.any(
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::OrHash,
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeError::OrHash
              )
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
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Variants
              ]
          }
        )
      end
      def to_hash
      end

      # Successful verification code creation response
      module Data
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess,
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeError
            )
          end

        class VerificationCodeSuccess < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess,
                Telnyx::Internal::AnyHash
              )
            end

          # Phone number for which the verification code was created
          sig { returns(String) }
          attr_accessor :phone_number

          # Type of verification method used
          sig do
            returns(
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # Unique identifier for the verification code
          sig { returns(String) }
          attr_accessor :verification_code_id

          # Successful verification code creation response
          sig do
            params(
              phone_number: String,
              type:
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type::OrSymbol,
              verification_code_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Phone number for which the verification code was created
            phone_number:,
            # Type of verification method used
            type:,
            # Unique identifier for the verification code
            verification_code_id:
          )
          end

          sig do
            override.returns(
              {
                phone_number: String,
                type:
                  Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type::TaggedSymbol,
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
                  Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SMS =
              T.let(
                :sms,
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type::TaggedSymbol
              )
            CALL =
              T.let(
                :call,
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type::TaggedSymbol
              )
            FLASHCALL =
              T.let(
                :flashcall,
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class VerificationCodeError < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeError,
                Telnyx::Internal::AnyHash
              )
            end

          # Error message describing why the verification code creation failed
          sig { returns(String) }
          attr_accessor :error

          # Phone number for which the verification code creation failed
          sig { returns(String) }
          attr_accessor :phone_number

          # Failed verification code creation response
          sig do
            params(error: String, phone_number: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Error message describing why the verification code creation failed
            error:,
            # Phone number for which the verification code creation failed
            phone_number:
          )
          end

          sig { override.returns({ error: String, phone_number: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
