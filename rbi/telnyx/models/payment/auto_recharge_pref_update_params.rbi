# typed: strong

module Telnyx
  module Models
    module Payment
      class AutoRechargePrefUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Payment::AutoRechargePrefUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

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
              Telnyx::Payment::AutoRechargePrefUpdateParams::Preference::OrSymbol
            )
          )
        end
        attr_reader :preference

        sig do
          params(
            preference:
              Telnyx::Payment::AutoRechargePrefUpdateParams::Preference::OrSymbol
          ).void
        end
        attr_writer :preference

        # The amount to recharge the account, the actual recharge amount will be the
        # amount necessary to reach the threshold amount plus the recharge amount.
        sig { returns(T.nilable(String)) }
        attr_reader :recharge_amount

        sig { params(recharge_amount: String).void }
        attr_writer :recharge_amount

        # The threshold amount at which the account will be recharged.
        sig { returns(T.nilable(String)) }
        attr_reader :threshold_amount

        sig { params(threshold_amount: String).void }
        attr_writer :threshold_amount

        sig do
          params(
            enabled: T::Boolean,
            invoice_enabled: T::Boolean,
            preference:
              Telnyx::Payment::AutoRechargePrefUpdateParams::Preference::OrSymbol,
            recharge_amount: String,
            threshold_amount: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether auto recharge is enabled.
          enabled: nil,
          invoice_enabled: nil,
          # The payment preference for auto recharge.
          preference: nil,
          # The amount to recharge the account, the actual recharge amount will be the
          # amount necessary to reach the threshold amount plus the recharge amount.
          recharge_amount: nil,
          # The threshold amount at which the account will be recharged.
          threshold_amount: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enabled: T::Boolean,
              invoice_enabled: T::Boolean,
              preference:
                Telnyx::Payment::AutoRechargePrefUpdateParams::Preference::OrSymbol,
              recharge_amount: String,
              threshold_amount: String,
              request_options: Telnyx::RequestOptions
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
                Telnyx::Payment::AutoRechargePrefUpdateParams::Preference
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_PAYPAL =
            T.let(
              :credit_paypal,
              Telnyx::Payment::AutoRechargePrefUpdateParams::Preference::TaggedSymbol
            )
          ACH =
            T.let(
              :ach,
              Telnyx::Payment::AutoRechargePrefUpdateParams::Preference::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Payment::AutoRechargePrefUpdateParams::Preference::TaggedSymbol
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
