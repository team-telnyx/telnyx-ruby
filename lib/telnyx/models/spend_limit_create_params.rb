# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpendLimits#create
    class SpendLimitCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute body
      #   Send exactly one of `amount` and `unlimited: true`.
      #
      #   @return [Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount, Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited]
      required :body, union: -> { Telnyx::SpendLimitCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount, Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited] Send exactly one of `amount` and `unlimited: true`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Send exactly one of `amount` and `unlimited: true`.
      module Body
        extend Telnyx::Internal::Type::Union

        # A limit in USD.
        variant -> { Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount }

        # Explicitly no cap. Not available for API key limits.
        variant -> { Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited }

        class CreateSpendLimitWithAmount < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   Limit in USD. `0` blocks at the first cent of spend.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute product
          #   Product to limit, as returned in `product` by the list operation.
          #
          #   @return [String]
          required :product, String

          # @!attribute credential_id
          #   Optional. Identifier of one API key as recorded on usage, never the key's
          #   secret: the limit then applies to that key only. Absent or `null` sets the total
          #   limit. A blank value, or one with control characters, is refused; it never means
          #   the total limit. An API key limit always has an `amount`.
          #
          #   @return [String, nil]
          optional :credential_id, String, nil?: true

          # @!attribute period
          #   `daily` is the current UTC day; `monthly` is the current UTC calendar month.
          #
          #   @return [Symbol, Telnyx::Models::SpendLimitPeriod, nil]
          optional :period, enum: -> { Telnyx::SpendLimitPeriod }

          # @!attribute reason
          #   Why the limit is set or changed, kept for audit.
          #
          #   @return [String, nil]
          optional :reason, String

          # @!attribute unlimited
          #   Optional; only `false` is allowed together with `amount`.
          #
          #   @return [Boolean, Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited, nil]
          optional :unlimited,
                   enum: -> { Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited }

          # @!method initialize(amount:, product:, credential_id: nil, period: nil, reason: nil, unlimited: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount} for
          #   more details.
          #
          #   A limit in USD.
          #
          #   @param amount [Float] Limit in USD. `0` blocks at the first cent of spend.
          #
          #   @param product [String] Product to limit, as returned in `product` by the list operation.
          #
          #   @param credential_id [String, nil] Optional. Identifier of one API key as recorded on usage, never the key's secret
          #
          #   @param period [Symbol, Telnyx::Models::SpendLimitPeriod] `daily` is the current UTC day; `monthly` is the current UTC calendar month.
          #
          #   @param reason [String] Why the limit is set or changed, kept for audit.
          #
          #   @param unlimited [Boolean, Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::Unlimited] Optional; only `false` is allowed together with `amount`.

          # Optional; only `false` is allowed together with `amount`.
          #
          # @see Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount#unlimited
          module Unlimited
            extend Telnyx::Internal::Type::Enum

            FALSE = false

            # @!method self.values
            #   @return [Array<Boolean>]
          end
        end

        class CreateSpendLimitUnlimited < Telnyx::Internal::Type::BaseModel
          # @!attribute product
          #   Product to limit, as returned in `product` by the list operation.
          #
          #   @return [String]
          required :product, String

          # @!attribute unlimited
          #   `true`: explicitly no cap.
          #
          #   @return [Boolean, Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited]
          required :unlimited,
                   enum: -> { Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited }

          # @!attribute period
          #   `daily` is the current UTC day; `monthly` is the current UTC calendar month.
          #
          #   @return [Symbol, Telnyx::Models::SpendLimitPeriod, nil]
          optional :period, enum: -> { Telnyx::SpendLimitPeriod }

          # @!attribute reason
          #   Why the limit is set or changed, kept for audit.
          #
          #   @return [String, nil]
          optional :reason, String

          # @!method initialize(product:, unlimited:, period: nil, reason: nil)
          #   Explicitly no cap. Not available for API key limits.
          #
          #   @param product [String] Product to limit, as returned in `product` by the list operation.
          #
          #   @param unlimited [Boolean, Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::Unlimited] `true`: explicitly no cap.
          #
          #   @param period [Symbol, Telnyx::Models::SpendLimitPeriod] `daily` is the current UTC day; `monthly` is the current UTC calendar month.
          #
          #   @param reason [String] Why the limit is set or changed, kept for audit.

          # `true`: explicitly no cap.
          #
          # @see Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited#unlimited
          module Unlimited
            extend Telnyx::Internal::Type::Enum

            TRUE = true

            # @!method self.values
            #   @return [Array<Boolean>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount, Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited)]
      end
    end
  end
end
