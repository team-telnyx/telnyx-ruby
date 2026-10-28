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

      # @!attribute credential_id
      #   Identifier of one API key as recorded on usage, never the key's secret,
      #   percent-encoded: the request is then about that key's limit. Absent means the
      #   total limit; present but blank is refused.
      #
      #   @return [String, nil]
      optional :credential_id, String

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

      # @!method initialize(product:, credential_id: nil, period: nil, reason: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SpendLimitDeleteParams} for more details.
      #
      #   @param product [String]
      #
      #   @param credential_id [String] Identifier of one API key as recorded on usage, never the key's secret, percent-
      #
      #   @param period [Symbol, Telnyx::Models::SpendLimitPeriod] Limit period. Defaults to `daily`; send it explicitly.
      #
      #   @param reason [String] Why the limit is removed, kept for audit. At most 500 characters.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
