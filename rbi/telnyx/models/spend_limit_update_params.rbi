# typed: strong

module Telnyx
  module Models
    class SpendLimitUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SpendLimitUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :product

      # Send exactly one of `amount` and `unlimited: true`.
      sig do
        returns(
          T.any(
            Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount,
            Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited
          )
        )
      end
      attr_accessor :body

      # Limit period. Defaults to `daily`; send it explicitly.
      sig { returns(T.nilable(Telnyx::SpendLimitPeriod::OrSymbol)) }
      attr_reader :period

      sig { params(period: Telnyx::SpendLimitPeriod::OrSymbol).void }
      attr_writer :period

      sig do
        params(
          product: String,
          body:
            T.any(
              Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::OrHash,
              Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::OrHash
            ),
          period: Telnyx::SpendLimitPeriod::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        product:,
        # Send exactly one of `amount` and `unlimited: true`.
        body:,
        # Limit period. Defaults to `daily`; send it explicitly.
        period: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product: String,
            body:
              T.any(
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount,
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited
              ),
            period: Telnyx::SpendLimitPeriod::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Send exactly one of `amount` and `unlimited: true`.
      module Body
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount,
              Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited
            )
          end

        class UpdateSpendLimitWithAmount < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount,
                Telnyx::Internal::AnyHash
              )
            end

          # Limit in USD. `0` blocks at the first cent of spend.
          sig { returns(Float) }
          attr_accessor :amount

          # Why the limit is set or changed, kept for audit.
          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          # Optional; only `false` is allowed together with `amount`.
          sig do
            returns(
              T.nilable(
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited::OrBoolean
              )
            )
          end
          attr_reader :unlimited

          sig do
            params(
              unlimited:
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited::OrBoolean
            ).void
          end
          attr_writer :unlimited

          # A new limit in USD.
          sig do
            params(
              amount: Float,
              reason: String,
              unlimited:
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited::OrBoolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Limit in USD. `0` blocks at the first cent of spend.
            amount:,
            # Why the limit is set or changed, kept for audit.
            reason: nil,
            # Optional; only `false` is allowed together with `amount`.
            unlimited: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                reason: String,
                unlimited:
                  Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited::OrBoolean
              }
            )
          end
          def to_hash
          end

          # Optional; only `false` is allowed together with `amount`.
          module Unlimited
            extend Telnyx::Internal::Type::Enum

            TaggedBoolean =
              T.type_alias do
                T.all(
                  T::Boolean,
                  Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited
                )
              end
            OrBoolean = T.type_alias { T::Boolean }

            FALSE =
              T.let(
                false,
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited::TaggedBoolean
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited::TaggedBoolean
                ]
              )
            end
            def self.values
            end
          end
        end

        class UpdateSpendLimitUnlimited < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited,
                Telnyx::Internal::AnyHash
              )
            end

          # `true`: explicitly no cap.
          sig do
            returns(
              Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited::OrBoolean
            )
          end
          attr_accessor :unlimited

          # Why the limit is set or changed, kept for audit.
          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          # Explicitly no cap.
          sig do
            params(
              unlimited:
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited::OrBoolean,
              reason: String
            ).returns(T.attached_class)
          end
          def self.new(
            # `true`: explicitly no cap.
            unlimited:,
            # Why the limit is set or changed, kept for audit.
            reason: nil
          )
          end

          sig do
            override.returns(
              {
                unlimited:
                  Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited::OrBoolean,
                reason: String
              }
            )
          end
          def to_hash
          end

          # `true`: explicitly no cap.
          module Unlimited
            extend Telnyx::Internal::Type::Enum

            TaggedBoolean =
              T.type_alias do
                T.all(
                  T::Boolean,
                  Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited
                )
              end
            OrBoolean = T.type_alias { T::Boolean }

            TRUE =
              T.let(
                true,
                Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited::TaggedBoolean
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited::TaggedBoolean
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::SpendLimitUpdateParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
