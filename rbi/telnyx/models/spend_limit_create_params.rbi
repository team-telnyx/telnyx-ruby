# typed: strong

module Telnyx
  module Models
    class SpendLimitCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SpendLimitCreateParams, Telnyx::Internal::AnyHash)
        end

      # Send exactly one of `amount` and `unlimited: true`.
      sig do
        returns(
          T.any(
            Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount,
            Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::OrHash,
              Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Send exactly one of `amount` and `unlimited: true`.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body:
              T.any(
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount,
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited
              ),
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
              Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount,
              Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited
            )
          end

        class CreateSpendLimitWithAmount < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount,
                Telnyx::Internal::AnyHash
              )
            end

          # Limit in USD. `0` blocks at the first cent of spend.
          sig { returns(Float) }
          attr_accessor :amount

          # Product to limit, as returned in `product` by the list operation.
          sig { returns(String) }
          attr_accessor :product

          # `daily` is the current UTC day; `monthly` is the current UTC calendar month.
          sig { returns(T.nilable(Telnyx::SpendLimitPeriod::OrSymbol)) }
          attr_reader :period

          sig { params(period: Telnyx::SpendLimitPeriod::OrSymbol).void }
          attr_writer :period

          # Why the limit is set or changed, kept for audit.
          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          # Optional; only `false` is allowed together with `amount`.
          sig do
            returns(
              T.nilable(
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited::OrBoolean
              )
            )
          end
          attr_reader :unlimited

          sig do
            params(
              unlimited:
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited::OrBoolean
            ).void
          end
          attr_writer :unlimited

          # A limit in USD.
          sig do
            params(
              amount: Float,
              product: String,
              period: Telnyx::SpendLimitPeriod::OrSymbol,
              reason: String,
              unlimited:
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited::OrBoolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Limit in USD. `0` blocks at the first cent of spend.
            amount:,
            # Product to limit, as returned in `product` by the list operation.
            product:,
            # `daily` is the current UTC day; `monthly` is the current UTC calendar month.
            period: nil,
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
                product: String,
                period: Telnyx::SpendLimitPeriod::OrSymbol,
                reason: String,
                unlimited:
                  Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited::OrBoolean
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
                  Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited
                )
              end
            OrBoolean = T.type_alias { T::Boolean }

            FALSE =
              T.let(
                false,
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited::TaggedBoolean
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited::TaggedBoolean
                ]
              )
            end
            def self.values
            end
          end
        end

        class CreateSpendLimitUnlimited < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited,
                Telnyx::Internal::AnyHash
              )
            end

          # Product to limit, as returned in `product` by the list operation.
          sig { returns(String) }
          attr_accessor :product

          # `true`: explicitly no cap.
          sig do
            returns(
              Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited::OrBoolean
            )
          end
          attr_accessor :unlimited

          # `daily` is the current UTC day; `monthly` is the current UTC calendar month.
          sig { returns(T.nilable(Telnyx::SpendLimitPeriod::OrSymbol)) }
          attr_reader :period

          sig { params(period: Telnyx::SpendLimitPeriod::OrSymbol).void }
          attr_writer :period

          # Why the limit is set or changed, kept for audit.
          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          # Explicitly no cap.
          sig do
            params(
              product: String,
              unlimited:
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited::OrBoolean,
              period: Telnyx::SpendLimitPeriod::OrSymbol,
              reason: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Product to limit, as returned in `product` by the list operation.
            product:,
            # `true`: explicitly no cap.
            unlimited:,
            # `daily` is the current UTC day; `monthly` is the current UTC calendar month.
            period: nil,
            # Why the limit is set or changed, kept for audit.
            reason: nil
          )
          end

          sig do
            override.returns(
              {
                product: String,
                unlimited:
                  Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited::OrBoolean,
                period: Telnyx::SpendLimitPeriod::OrSymbol,
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
                  Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited
                )
              end
            OrBoolean = T.type_alias { T::Boolean }

            TRUE =
              T.let(
                true,
                Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited::TaggedBoolean
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited::TaggedBoolean
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::SpendLimitCreateParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
