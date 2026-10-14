# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpendLimits#delete
    class SpendLimitDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute product
      #
      #   @return [String]
      required :product, String

      # @!attribute period
      #   Limit period. Defaults to `daily`; send it explicitly.
      #
      #   @return [Symbol, Telnyx::Models::SpendLimitPeriod, nil]
      optional :period, enum: -> { Telnyx::SpendLimitPeriod }

      # @!attribute reason
      #   Why the limit is removed, kept for audit. At most 500 characters.
      #
      #   @return [String, nil]
      optional :reason, String

      # @!method initialize(product:, period: nil, reason: nil, request_options: {})
      #   @param product [String]
      #
      #   @param period [Symbol, Telnyx::Models::SpendLimitPeriod] Limit period. Defaults to `daily`; send it explicitly.
      #
      #   @param reason [String] Why the limit is removed, kept for audit. At most 500 characters.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
