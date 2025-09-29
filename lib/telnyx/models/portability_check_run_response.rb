# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortabilityChecks#run
    class PortabilityCheckRunResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortabilityCheckRunResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortabilityCheckRunResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::PortabilityCheckRunResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        response_only do
          # @!attribute fast_portable
          #   Indicates whether this phone number is FastPort eligible
          #
          #   @return [Boolean, nil]
          optional :fast_portable, Telnyx::Internal::Type::Boolean

          # @!attribute not_portable_reason
          #   If this phone number is not portable, explains why. Empty string if the number
          #   is portable.
          #
          #   @return [String, nil]
          optional :not_portable_reason, String

          # @!attribute phone_number
          #   The +E.164 formatted phone number this result is about
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute portable
          #   Indicates whether this phone number is portable
          #
          #   @return [Boolean, nil]
          optional :portable, Telnyx::Internal::Type::Boolean

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(fast_portable: nil, not_portable_reason: nil, phone_number: nil, portable: nil, record_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortabilityCheckRunResponse::Data} for more details.
        #
        #   @param fast_portable [Boolean] Indicates whether this phone number is FastPort eligible
        #
        #   @param not_portable_reason [String] If this phone number is not portable, explains why. Empty string if the number i
        #
        #   @param phone_number [String] The +E.164 formatted phone number this result is about
        #
        #   @param portable [Boolean] Indicates whether this phone number is portable
        #
        #   @param record_type [String] Identifies the type of the resource.
      end
    end
  end
end
