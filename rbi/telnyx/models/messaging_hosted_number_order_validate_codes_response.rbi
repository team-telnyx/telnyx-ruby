# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberOrderValidateCodesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :order_id

        sig do
          returns(
            T::Array[
              Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber
            ]
          )
        end
        attr_accessor :phone_numbers

        sig do
          params(
            order_id: String,
            phone_numbers:
              T::Array[
                Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(order_id:, phone_numbers:)
        end

        sig do
          override.returns(
            {
              order_id: String,
              phone_numbers:
                T::Array[
                  Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber
                ]
            }
          )
        end
        def to_hash
        end

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :phone_number

          sig do
            returns(
              Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig do
            params(
              phone_number: String,
              status:
                Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(phone_number:, status:)
          end

          sig do
            override.returns(
              {
                phone_number: String,
                status:
                  Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VERIFIED =
              T.let(
                :verified,
                Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status::TaggedSymbol
              )
            ALREADY_VERIFIED =
              T.let(
                :already_verified,
                Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data::PhoneNumber::Status::TaggedSymbol
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
end
