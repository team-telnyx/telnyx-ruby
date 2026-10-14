# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpendLimits#update
    class SpendLimitUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute product
      #
      #   @return [String]
      required :product, String

      # @!attribute body
      #   Send exactly one of `amount` and `unlimited: true`.
      #
      #   @return [Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount, Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited]
      required :body, union: -> { Telnyx::SpendLimitUpdateParams::Body }

      # @!attribute period
      #   Limit period. Defaults to `daily`; send it explicitly.
      #
      #   @return [Symbol, Telnyx::Models::SpendLimitPeriod, nil]
      optional :period, enum: -> { Telnyx::SpendLimitPeriod }

      # @!method initialize(product:, body:, period: nil, request_options: {})
      #   @param product [String]
      #
      #   @param body [Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount, Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited] Send exactly one of `amount` and `unlimited: true`.
      #
      #   @param period [Symbol, Telnyx::Models::SpendLimitPeriod] Limit period. Defaults to `daily`; send it explicitly.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Send exactly one of `amount` and `unlimited: true`.
      module Body
        extend Telnyx::Internal::Type::Union

        # A new limit in USD.
        variant -> { Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount }

        # Explicitly no cap.
        variant -> { Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited }

        class UpdateSpendLimitWithAmount < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   Limit in USD. `0` blocks at the first cent of spend.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute reason
          #   Why the limit is set or changed, kept for audit.
          #
          #   @return [String, nil]
          optional :reason, String

          # @!attribute unlimited
          #   Optional; only `false` is allowed together with `amount`.
          #
          #   @return [Boolean, Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited, nil]
          optional :unlimited,
                   enum: -> { Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited }

          # @!method initialize(amount:, reason: nil, unlimited: nil)
          #   A new limit in USD.
          #
          #   @param amount [Float] Limit in USD. `0` blocks at the first cent of spend.
          #
          #   @param reason [String] Why the limit is set or changed, kept for audit.
          #
          #   @param unlimited [Boolean, Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::Unlimited] Optional; only `false` is allowed together with `amount`.

          # Optional; only `false` is allowed together with `amount`.
          #
          # @see Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount#unlimited
          module Unlimited
            extend Telnyx::Internal::Type::Enum

            FALSE = false

            # @!method self.values
            #   @return [Array<Boolean>]
          end
        end

        class UpdateSpendLimitUnlimited < Telnyx::Internal::Type::BaseModel
          # @!attribute unlimited
          #   `true`: explicitly no cap.
          #
          #   @return [Boolean, Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited]
          required :unlimited,
                   enum: -> { Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited }

          # @!attribute reason
          #   Why the limit is set or changed, kept for audit.
          #
          #   @return [String, nil]
          optional :reason, String

          # @!method initialize(unlimited:, reason: nil)
          #   Explicitly no cap.
          #
          #   @param unlimited [Boolean, Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::Unlimited] `true`: explicitly no cap.
          #
          #   @param reason [String] Why the limit is set or changed, kept for audit.

          # `true`: explicitly no cap.
          #
          # @see Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited#unlimited
          module Unlimited
            extend Telnyx::Internal::Type::Enum

            TRUE = true

            # @!method self.values
            #   @return [Array<Boolean>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount, Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited)]
      end
    end
  end
end
