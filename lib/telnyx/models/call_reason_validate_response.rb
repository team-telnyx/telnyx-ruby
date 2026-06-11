# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallReasons#validate
    class CallReasonValidateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallReasonValidateResponse::Data]
      required :data, -> { Telnyx::Models::CallReasonValidateResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::CallReasonValidateResponse::Data]

      # @see Telnyx::Models::CallReasonValidateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute all_pre_approved
        #   `true` when every supplied reason matches a pre-vetted entry in the call-reason
        #   library. When `true`, the DIR will sail through the call-reasons portion of
        #   vetting.
        #
        #   @return [Boolean]
        required :all_pre_approved, Telnyx::Internal::Type::Boolean

        # @!attribute non_approved_reasons
        #   Subset of the input that does NOT match the pre-vetted library. The DIR can
        #   still be submitted with these - they will go through manual review.
        #
        #   @return [Array<String>]
        required :non_approved_reasons, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute requires_manual_vetting
        #   `true` when at least one supplied reason is in `non_approved_reasons`.
        #   Equivalent to `non_approved_reasons.length > 0` and the inverse of
        #   `all_pre_approved`.
        #
        #   @return [Boolean]
        required :requires_manual_vetting, Telnyx::Internal::Type::Boolean

        # @!method initialize(all_pre_approved:, non_approved_reasons:, requires_manual_vetting:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallReasonValidateResponse::Data} for more details.
        #
        #   @param all_pre_approved [Boolean] `true` when every supplied reason matches a pre-vetted entry in the call-reason
        #
        #   @param non_approved_reasons [Array<String>] Subset of the input that does NOT match the pre-vetted library. The DIR can stil
        #
        #   @param requires_manual_vetting [Boolean] `true` when at least one supplied reason is in `non_approved_reasons`. Equivalen
      end
    end
  end
end
