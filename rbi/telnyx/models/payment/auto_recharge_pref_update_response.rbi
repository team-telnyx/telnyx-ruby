# typed: strong

module Telnyx
  module Models
    module Payment
      class AutoRechargePrefUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Payment::AutoRechargePrefUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The unique identifier for the auto recharge preference.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Whether auto recharge is enabled.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :enabled

          sig { params(enabled: T::Boolean).void }
          attr_writer :enabled

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :invoice_enabled

          sig { params(invoice_enabled: T::Boolean).void }
          attr_writer :invoice_enabled

          # The payment preference for auto recharge.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::Preference::TaggedSymbol
              )
            )
          end
          attr_reader :preference

          sig do
            params(
              preference:
                Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::Preference::OrSymbol
            ).void
          end
          attr_writer :preference

          # The amount to recharge the account, the actual recharge amount will be the
          # amount necessary to reach the threshold amount plus the recharge amount.
          sig { returns(T.nilable(String)) }
          attr_reader :recharge_amount

          sig { params(recharge_amount: String).void }
          attr_writer :recharge_amount

          # The record type.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # The threshold amount at which the account will be recharged.
          sig { returns(T.nilable(String)) }
          attr_reader :threshold_amount

          sig { params(threshold_amount: String).void }
          attr_writer :threshold_amount

          sig do
            params(
              id: String,
              enabled: T::Boolean,
              invoice_enabled: T::Boolean,
              preference:
                Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::Preference::OrSymbol,
              recharge_amount: String,
              record_type: String,
              threshold_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the auto recharge preference.
            id: nil,
            # Whether auto recharge is enabled.
            enabled: nil,
            invoice_enabled: nil,
            # The payment preference for auto recharge.
            preference: nil,
            # The amount to recharge the account, the actual recharge amount will be the
            # amount necessary to reach the threshold amount plus the recharge amount.
            recharge_amount: nil,
            # The record type.
            record_type: nil,
            # The threshold amount at which the account will be recharged.
            threshold_amount: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                enabled: T::Boolean,
                invoice_enabled: T::Boolean,
                preference:
                  Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::Preference::TaggedSymbol,
                recharge_amount: String,
                record_type: String,
                threshold_amount: String
              }
            )
          end
          def to_hash
          end

          # The payment preference for auto recharge.
          module Preference
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::Preference
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_PAYPAL =
              T.let(
                :credit_paypal,
                Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::Preference::TaggedSymbol
              )
            ACH =
              T.let(
                :ach,
                Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::Preference::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data::Preference::TaggedSymbol
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
