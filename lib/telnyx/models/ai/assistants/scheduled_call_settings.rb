# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledCallSettings < Telnyx::Internal::Type::BaseModel
          # @!attribute sip_region
          #   SIP region passed to Telnyx when initiating an outbound call. Values match the
          #   Telnyx TeXML `SipRegion` parameter exactly. Telnyx defaults to `US` when
          #   omitted.
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::ScheduledCallSettings::SipRegion, nil]
          optional :sip_region, enum: -> { Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion }

          # @!method initialize(sip_region: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::ScheduledCallSettings} for more details.
          #
          #   Per-call telephony overrides applied when a scheduled phone-call event
          #   dispatches. Phone-call events only. New per-call dispatch options should be
          #   added here rather than as top-level event fields.
          #
          #   @param sip_region [Symbol, Telnyx::Models::AI::Assistants::ScheduledCallSettings::SipRegion] SIP region passed to Telnyx when initiating an outbound call. Values

          # SIP region passed to Telnyx when initiating an outbound call. Values match the
          # Telnyx TeXML `SipRegion` parameter exactly. Telnyx defaults to `US` when
          # omitted.
          #
          # @see Telnyx::Models::AI::Assistants::ScheduledCallSettings#sip_region
          module SipRegion
            extend Telnyx::Internal::Type::Enum

            US = :US
            EUROPE = :Europe
            CANADA = :Canada
            AUSTRALIA = :Australia
            MIDDLE_EAST = :"Middle East"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
