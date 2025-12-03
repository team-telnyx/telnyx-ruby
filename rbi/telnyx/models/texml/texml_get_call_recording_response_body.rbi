# typed: strong

module Telnyx
  module Models
    TexmlGetCallRecordingResponseBody = Texml::TexmlGetCallRecordingResponseBody

    module Texml
      class TexmlGetCallRecordingResponseBody < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Texml::TexmlGetCallRecordingResponseBody,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :account_sid

        sig { params(account_sid: String).void }
        attr_writer :account_sid

        sig { returns(T.nilable(String)) }
        attr_reader :call_sid

        sig { params(call_sid: String).void }
        attr_writer :call_sid

        sig do
          returns(
            T.nilable(
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels::TaggedInteger
            )
          )
        end
        attr_reader :channels

        sig do
          params(
            channels:
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels::OrInteger
          ).void
        end
        attr_writer :channels

        sig { returns(T.nilable(String)) }
        attr_accessor :conference_sid

        sig { returns(T.nilable(Time)) }
        attr_reader :date_created

        sig { params(date_created: Time).void }
        attr_writer :date_created

        sig { returns(T.nilable(Time)) }
        attr_reader :date_updated

        sig { params(date_updated: Time).void }
        attr_writer :date_updated

        # The duration of this recording, given in seconds.
        sig { returns(T.nilable(String)) }
        attr_accessor :duration

        sig { returns(T.nilable(String)) }
        attr_accessor :error_code

        sig { returns(T.nilable(String)) }
        attr_reader :media_url

        sig { params(media_url: String).void }
        attr_writer :media_url

        # Identifier of a resource.
        sig { returns(T.nilable(String)) }
        attr_reader :sid

        sig { params(sid: String).void }
        attr_writer :sid

        # Defines how the recording was created.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
            )
          )
        end
        attr_reader :source

        sig do
          params(
            source:
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::OrSymbol
          ).void
        end
        attr_writer :source

        sig { returns(T.nilable(Time)) }
        attr_reader :start_time

        sig { params(start_time: Time).void }
        attr_writer :start_time

        sig do
          returns(
            T.nilable(
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Subresources details for a recording if available.
        sig do
          returns(T.nilable(Telnyx::Texml::TexmlRecordingSubresourcesUris))
        end
        attr_reader :subresources_uris

        sig do
          params(
            subresources_uris:
              Telnyx::Texml::TexmlRecordingSubresourcesUris::OrHash
          ).void
        end
        attr_writer :subresources_uris

        # The relative URI for this recording resource.
        sig { returns(T.nilable(String)) }
        attr_reader :uri

        sig { params(uri: String).void }
        attr_writer :uri

        sig do
          params(
            account_sid: String,
            call_sid: String,
            channels:
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels::OrInteger,
            conference_sid: T.nilable(String),
            date_created: Time,
            date_updated: Time,
            duration: T.nilable(String),
            error_code: T.nilable(String),
            media_url: String,
            sid: String,
            source:
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::OrSymbol,
            start_time: Time,
            status:
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::OrSymbol,
            subresources_uris:
              Telnyx::Texml::TexmlRecordingSubresourcesUris::OrHash,
            uri: String
          ).returns(T.attached_class)
        end
        def self.new(
          account_sid: nil,
          call_sid: nil,
          channels: nil,
          conference_sid: nil,
          date_created: nil,
          date_updated: nil,
          # The duration of this recording, given in seconds.
          duration: nil,
          error_code: nil,
          media_url: nil,
          # Identifier of a resource.
          sid: nil,
          # Defines how the recording was created.
          source: nil,
          start_time: nil,
          status: nil,
          # Subresources details for a recording if available.
          subresources_uris: nil,
          # The relative URI for this recording resource.
          uri: nil
        )
        end

        sig do
          override.returns(
            {
              account_sid: String,
              call_sid: String,
              channels:
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels::TaggedInteger,
              conference_sid: T.nilable(String),
              date_created: Time,
              date_updated: Time,
              duration: T.nilable(String),
              error_code: T.nilable(String),
              media_url: String,
              sid: String,
              source:
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol,
              start_time: Time,
              status:
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::TaggedSymbol,
              subresources_uris: Telnyx::Texml::TexmlRecordingSubresourcesUris,
              uri: String
            }
          )
        end
        def to_hash
        end

        module Channels
          extend Telnyx::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(
                Integer,
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels
              )
            end
          OrInteger = T.type_alias { Integer }

          CHANNEL_1 =
            T.let(
              1,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels::TaggedInteger
            )
          CHANNEL_2 =
            T.let(
              2,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels::TaggedInteger
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end

        # Defines how the recording was created.
        module Source
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          START_CALL_RECORDING_API =
            T.let(
              :StartCallRecordingAPI,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
            )
          START_CONFERENCE_RECORDING_API =
            T.let(
              :StartConferenceRecordingAPI,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
            )
          OUTBOUND_API =
            T.let(
              :OutboundAPI,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
            )
          DIAL_VERB =
            T.let(
              :DialVerb,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
            )
          CONFERENCE =
            T.let(
              :Conference,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
            )
          RECORD_VERB =
            T.let(
              :RecordVerb,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
            )
          TRUNKING =
            T.let(
              :Trunking,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_PROGRESS =
            T.let(
              :"in-progress",
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::TaggedSymbol
            )
          STOPPED =
            T.let(
              :stopped,
              Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status::TaggedSymbol
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
