# typed: strong

module Telnyx
  module Models
    class MachinePaymentAccountCreditResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MachinePaymentAccountCreditResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # An account-credit transaction settled through the Machine Payment Protocol.
      sig do
        returns(
          T.nilable(Telnyx::Models::MachinePaymentAccountCreditResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::MachinePaymentAccountCreditResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::MachinePaymentAccountCreditResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An account-credit transaction settled through the Machine Payment Protocol.
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::MachinePaymentAccountCreditResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier of the account-credit transaction.
        sig { returns(String) }
        attr_accessor :id

        # Identifier of the credited Telnyx account. Derived from the authenticated user
        # on the initial request and from the verified payment credential on a paid retry
        # — never from the request body.
        sig { returns(String) }
        attr_accessor :account_id

        # Credited amount as a decimal string with two fractional digits.
        sig { returns(String) }
        attr_accessor :amount

        # ISO 4217 currency code of the credited amount (currently always USD).
        sig { returns(String) }
        attr_accessor :currency

        # Payment source identifier distinguishing machine payments from other
        # account-credit sources.
        sig do
          returns(
            Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource::TaggedSymbol
          )
        end
        attr_accessor :payment_source

        # Record type identifier.
        sig do
          returns(
            Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # True when this response created a new account credit, false when an existing
        # transaction was returned for a duplicate paid retry.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :created

        sig { params(created: T::Boolean).void }
        attr_writer :created

        # ISO 8601 timestamp when the transaction was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Machine Payment Protocol resource identifier the payment credential was bound
        # to.
        sig { returns(T.nilable(String)) }
        attr_accessor :mpp_resource

        # Stripe PaymentIntent identifier for Stripe settlements. Absent for Tempo
        # settlements.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_intent_id

        # Payment method used by the provider: `stripe_spt` for Stripe Shared Payment
        # Token payments, `tempo_usdc` for Tempo USDC payments.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod::TaggedSymbol
            )
          )
        end
        attr_accessor :payment_method

        # Upstream payment provider that settled the payment.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider::TaggedSymbol
            )
          )
        end
        attr_accessor :provider

        # Provider receipt reference: the Stripe PaymentIntent identifier for Stripe
        # settlements, or the on-chain transaction hash for Tempo settlements.
        sig { returns(T.nilable(String)) }
        attr_accessor :receipt_reference

        # Status of the transaction. Successful machine payment credits are recorded as
        # `settled`.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_accessor :status

        # An account-credit transaction settled through the Machine Payment Protocol.
        sig do
          params(
            id: String,
            account_id: String,
            amount: String,
            currency: String,
            payment_source:
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource::OrSymbol,
            record_type:
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType::OrSymbol,
            created: T::Boolean,
            created_at: Time,
            mpp_resource: T.nilable(String),
            payment_intent_id: T.nilable(String),
            payment_method:
              T.nilable(
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod::OrSymbol
              ),
            provider:
              T.nilable(
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider::OrSymbol
              ),
            receipt_reference: T.nilable(String),
            status:
              T.nilable(
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier of the account-credit transaction.
          id:,
          # Identifier of the credited Telnyx account. Derived from the authenticated user
          # on the initial request and from the verified payment credential on a paid retry
          # — never from the request body.
          account_id:,
          # Credited amount as a decimal string with two fractional digits.
          amount:,
          # ISO 4217 currency code of the credited amount (currently always USD).
          currency:,
          # Payment source identifier distinguishing machine payments from other
          # account-credit sources.
          payment_source:,
          # Record type identifier.
          record_type:,
          # True when this response created a new account credit, false when an existing
          # transaction was returned for a duplicate paid retry.
          created: nil,
          # ISO 8601 timestamp when the transaction was created.
          created_at: nil,
          # Machine Payment Protocol resource identifier the payment credential was bound
          # to.
          mpp_resource: nil,
          # Stripe PaymentIntent identifier for Stripe settlements. Absent for Tempo
          # settlements.
          payment_intent_id: nil,
          # Payment method used by the provider: `stripe_spt` for Stripe Shared Payment
          # Token payments, `tempo_usdc` for Tempo USDC payments.
          payment_method: nil,
          # Upstream payment provider that settled the payment.
          provider: nil,
          # Provider receipt reference: the Stripe PaymentIntent identifier for Stripe
          # settlements, or the on-chain transaction hash for Tempo settlements.
          receipt_reference: nil,
          # Status of the transaction. Successful machine payment credits are recorded as
          # `settled`.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account_id: String,
              amount: String,
              currency: String,
              payment_source:
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource::TaggedSymbol,
              record_type:
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType::TaggedSymbol,
              created: T::Boolean,
              created_at: Time,
              mpp_resource: T.nilable(String),
              payment_intent_id: T.nilable(String),
              payment_method:
                T.nilable(
                  Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod::TaggedSymbol
                ),
              provider:
                T.nilable(
                  Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider::TaggedSymbol
                ),
              receipt_reference: T.nilable(String),
              status:
                T.nilable(
                  Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # Payment source identifier distinguishing machine payments from other
        # account-credit sources.
        module PaymentSource
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MACHINE_PAYMENT =
            T.let(
              :machine_payment,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Record type identifier.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MACHINE_PAYMENT_ACCOUNT_CREDIT =
            T.let(
              :machine_payment_account_credit,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Payment method used by the provider: `stripe_spt` for Stripe Shared Payment
        # Token payments, `tempo_usdc` for Tempo USDC payments.
        module PaymentMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE_SPT =
            T.let(
              :stripe_spt,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod::TaggedSymbol
            )
          TEMPO_USDC =
            T.let(
              :tempo_usdc,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Upstream payment provider that settled the payment.
        module Provider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider::TaggedSymbol
            )
          TEMPO =
            T.let(
              :tempo,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Status of the transaction. Successful machine payment credits are recorded as
        # `settled`.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEW =
            T.let(
              :new,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :settled,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::TaggedSymbol
            )
          INVALID =
            T.let(
              :invalid,
              Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status::TaggedSymbol
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
