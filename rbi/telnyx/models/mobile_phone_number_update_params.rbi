# typed: strong

module Telnyx
  module Models
    class MobilePhoneNumberUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MobilePhoneNumberUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::MobilePhoneNumberUpdateParams::CallForwarding)
        )
      end
      attr_reader :call_forwarding

      sig do
        params(
          call_forwarding:
            Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::OrHash
        ).void
      end
      attr_writer :call_forwarding

      sig do
        returns(T.nilable(Telnyx::MobilePhoneNumberUpdateParams::CallRecording))
      end
      attr_reader :call_recording

      sig do
        params(
          call_recording:
            Telnyx::MobilePhoneNumberUpdateParams::CallRecording::OrHash
        ).void
      end
      attr_writer :call_recording

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :caller_id_name_enabled

      sig { params(caller_id_name_enabled: T::Boolean).void }
      attr_writer :caller_id_name_enabled

      sig do
        returns(T.nilable(Telnyx::MobilePhoneNumberUpdateParams::CnamListing))
      end
      attr_reader :cnam_listing

      sig do
        params(
          cnam_listing:
            Telnyx::MobilePhoneNumberUpdateParams::CnamListing::OrHash
        ).void
      end
      attr_writer :cnam_listing

      sig { returns(T.nilable(String)) }
      attr_accessor :connection_id

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_reference

      sig { returns(T.nilable(Telnyx::MobilePhoneNumberUpdateParams::Inbound)) }
      attr_reader :inbound

      sig do
        params(
          inbound: Telnyx::MobilePhoneNumberUpdateParams::Inbound::OrHash
        ).void
      end
      attr_writer :inbound

      sig do
        returns(
          T.nilable(
            Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::OrSymbol
          )
        )
      end
      attr_reader :inbound_call_screening

      sig do
        params(
          inbound_call_screening:
            Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::OrSymbol
        ).void
      end
      attr_writer :inbound_call_screening

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :noise_suppression

      sig { params(noise_suppression: T::Boolean).void }
      attr_writer :noise_suppression

      sig do
        returns(T.nilable(Telnyx::MobilePhoneNumberUpdateParams::Outbound))
      end
      attr_reader :outbound

      sig do
        params(
          outbound: Telnyx::MobilePhoneNumberUpdateParams::Outbound::OrHash
        ).void
      end
      attr_writer :outbound

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          call_forwarding:
            Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::OrHash,
          call_recording:
            Telnyx::MobilePhoneNumberUpdateParams::CallRecording::OrHash,
          caller_id_name_enabled: T::Boolean,
          cnam_listing:
            Telnyx::MobilePhoneNumberUpdateParams::CnamListing::OrHash,
          connection_id: T.nilable(String),
          customer_reference: T.nilable(String),
          inbound: Telnyx::MobilePhoneNumberUpdateParams::Inbound::OrHash,
          inbound_call_screening:
            Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::OrSymbol,
          noise_suppression: T::Boolean,
          outbound: Telnyx::MobilePhoneNumberUpdateParams::Outbound::OrHash,
          tags: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        call_forwarding: nil,
        call_recording: nil,
        caller_id_name_enabled: nil,
        cnam_listing: nil,
        connection_id: nil,
        customer_reference: nil,
        inbound: nil,
        inbound_call_screening: nil,
        noise_suppression: nil,
        outbound: nil,
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            call_forwarding:
              Telnyx::MobilePhoneNumberUpdateParams::CallForwarding,
            call_recording:
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording,
            caller_id_name_enabled: T::Boolean,
            cnam_listing: Telnyx::MobilePhoneNumberUpdateParams::CnamListing,
            connection_id: T.nilable(String),
            customer_reference: T.nilable(String),
            inbound: Telnyx::MobilePhoneNumberUpdateParams::Inbound,
            inbound_call_screening:
              Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::OrSymbol,
            noise_suppression: T::Boolean,
            outbound: Telnyx::MobilePhoneNumberUpdateParams::Outbound,
            tags: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CallForwarding < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MobilePhoneNumberUpdateParams::CallForwarding,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :call_forwarding_enabled

        sig { params(call_forwarding_enabled: T::Boolean).void }
        attr_writer :call_forwarding_enabled

        sig do
          returns(
            T.nilable(
              Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType::OrSymbol
            )
          )
        end
        attr_accessor :forwarding_type

        sig { returns(T.nilable(String)) }
        attr_accessor :forwards_to

        sig do
          params(
            call_forwarding_enabled: T::Boolean,
            forwarding_type:
              T.nilable(
                Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType::OrSymbol
              ),
            forwards_to: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          call_forwarding_enabled: nil,
          forwarding_type: nil,
          forwards_to: nil
        )
        end

        sig do
          override.returns(
            {
              call_forwarding_enabled: T::Boolean,
              forwarding_type:
                T.nilable(
                  Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType::OrSymbol
                ),
              forwards_to: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module ForwardingType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALWAYS =
            T.let(
              :always,
              Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType::TaggedSymbol
            )
          ON_FAILURE =
            T.let(
              :"on-failure",
              Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class CallRecording < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels::OrSymbol
            )
          )
        end
        attr_reader :inbound_call_recording_channels

        sig do
          params(
            inbound_call_recording_channels:
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels::OrSymbol
          ).void
        end
        attr_writer :inbound_call_recording_channels

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :inbound_call_recording_enabled

        sig { params(inbound_call_recording_enabled: T::Boolean).void }
        attr_writer :inbound_call_recording_enabled

        sig do
          returns(
            T.nilable(
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat::OrSymbol
            )
          )
        end
        attr_reader :inbound_call_recording_format

        sig do
          params(
            inbound_call_recording_format:
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat::OrSymbol
          ).void
        end
        attr_writer :inbound_call_recording_format

        sig do
          params(
            inbound_call_recording_channels:
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels::OrSymbol,
            inbound_call_recording_enabled: T::Boolean,
            inbound_call_recording_format:
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          inbound_call_recording_channels: nil,
          inbound_call_recording_enabled: nil,
          inbound_call_recording_format: nil
        )
        end

        sig do
          override.returns(
            {
              inbound_call_recording_channels:
                Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels::OrSymbol,
              inbound_call_recording_enabled: T::Boolean,
              inbound_call_recording_format:
                Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat::OrSymbol
            }
          )
        end
        def to_hash
        end

        module InboundCallRecordingChannels
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE =
            T.let(
              :single,
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels::TaggedSymbol
            )
          DUAL =
            T.let(
              :dual,
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module InboundCallRecordingFormat
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAV =
            T.let(
              :wav,
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat::TaggedSymbol
            )
          MP3 =
            T.let(
              :mp3,
              Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class CnamListing < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MobilePhoneNumberUpdateParams::CnamListing,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :cnam_listing_details

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cnam_listing_enabled

        sig { params(cnam_listing_enabled: T::Boolean).void }
        attr_writer :cnam_listing_enabled

        sig do
          params(
            cnam_listing_details: T.nilable(String),
            cnam_listing_enabled: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(cnam_listing_details: nil, cnam_listing_enabled: nil)
        end

        sig do
          override.returns(
            {
              cnam_listing_details: T.nilable(String),
              cnam_listing_enabled: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MobilePhoneNumberUpdateParams::Inbound,
              Telnyx::Internal::AnyHash
            )
          end

        # The ID of the CallControl or TeXML Application that will intercept inbound
        # calls.
        sig { returns(T.nilable(String)) }
        attr_accessor :interception_app_id

        sig do
          params(interception_app_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the CallControl or TeXML Application that will intercept inbound
          # calls.
          interception_app_id: nil
        )
        end

        sig { override.returns({ interception_app_id: T.nilable(String) }) }
        def to_hash
        end
      end

      module InboundCallScreening
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::TaggedSymbol
          )
        REJECT_CALLS =
          T.let(
            :reject_calls,
            Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::TaggedSymbol
          )
        FLAG_CALLS =
          T.let(
            :flag_calls,
            Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MobilePhoneNumberUpdateParams::Outbound,
              Telnyx::Internal::AnyHash
            )
          end

        # The ID of the CallControl or TeXML Application that will intercept outbound
        # calls.
        sig { returns(T.nilable(String)) }
        attr_accessor :interception_app_id

        sig do
          params(interception_app_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the CallControl or TeXML Application that will intercept outbound
          # calls.
          interception_app_id: nil
        )
        end

        sig { override.returns({ interception_app_id: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
