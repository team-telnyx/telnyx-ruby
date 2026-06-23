# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledCallSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::ScheduledCallSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # SIP region passed to Telnyx when initiating an outbound call. Values match the
          # Telnyx TeXML `SipRegion` parameter exactly. Telnyx defaults to `US` when
          # omitted.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::OrSymbol
              )
            )
          end
          attr_reader :sip_region

          sig do
            params(
              sip_region:
                Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::OrSymbol
            ).void
          end
          attr_writer :sip_region

          # Per-call telephony overrides applied when a scheduled phone-call event
          # dispatches. Phone-call events only. New per-call dispatch options should be
          # added here rather than as top-level event fields.
          sig do
            params(
              sip_region:
                Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # SIP region passed to Telnyx when initiating an outbound call. Values match the
            # Telnyx TeXML `SipRegion` parameter exactly. Telnyx defaults to `US` when
            # omitted.
            sip_region: nil
          )
          end

          sig do
            override.returns(
              {
                sip_region:
                  Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::OrSymbol
              }
            )
          end
          def to_hash
          end

          # SIP region passed to Telnyx when initiating an outbound call. Values match the
          # Telnyx TeXML `SipRegion` parameter exactly. Telnyx defaults to `US` when
          # omitted.
          module SipRegion
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            US =
              T.let(
                :US,
                Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::TaggedSymbol
              )
            EUROPE =
              T.let(
                :Europe,
                Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::TaggedSymbol
              )
            CANADA =
              T.let(
                :Canada,
                Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::TaggedSymbol
              )
            AUSTRALIA =
              T.let(
                :Australia,
                Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::TaggedSymbol
              )
            MIDDLE_EAST =
              T.let(
                :"Middle East",
                Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Assistants::ScheduledCallSettings::SipRegion::TaggedSymbol
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
end
