# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          class RecordingsJsonRecordingsJsonResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse,
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
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Channels::TaggedInteger
                )
              )
            end
            attr_reader :channels

            sig do
              params(
                channels:
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Channels::OrInteger
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

            # The price of this recording, the currency is specified in the price_unit field.
            sig { returns(T.nilable(String)) }
            attr_accessor :price

            # The unit in which the price is given.
            sig { returns(T.nilable(String)) }
            attr_accessor :price_unit

            # Identifier of a resource.
            sig { returns(T.nilable(String)) }
            attr_reader :sid

            sig { params(sid: String).void }
            attr_writer :sid

            # Defines how the recording was created.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                )
              )
            end
            attr_reader :source

            sig do
              params(
                source:
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::OrSymbol
              ).void
            end
            attr_writer :source

            sig { returns(T.nilable(Time)) }
            attr_reader :start_time

            sig { params(start_time: Time).void }
            attr_writer :start_time

            # The audio track to record for the call. The default is `both`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track::TaggedSymbol
                )
              )
            end
            attr_reader :track

            sig do
              params(
                track:
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track::OrSymbol
              ).void
            end
            attr_writer :track

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
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Channels::OrInteger,
                conference_sid: T.nilable(String),
                date_created: Time,
                date_updated: Time,
                duration: T.nilable(String),
                error_code: T.nilable(String),
                price: T.nilable(String),
                price_unit: T.nilable(String),
                sid: String,
                source:
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::OrSymbol,
                start_time: Time,
                track:
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track::OrSymbol,
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
              # The price of this recording, the currency is specified in the price_unit field.
              price: nil,
              # The unit in which the price is given.
              price_unit: nil,
              # Identifier of a resource.
              sid: nil,
              # Defines how the recording was created.
              source: nil,
              start_time: nil,
              # The audio track to record for the call. The default is `both`.
              track: nil,
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
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Channels::TaggedInteger,
                  conference_sid: T.nilable(String),
                  date_created: Time,
                  date_updated: Time,
                  duration: T.nilable(String),
                  error_code: T.nilable(String),
                  price: T.nilable(String),
                  price_unit: T.nilable(String),
                  sid: String,
                  source:
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol,
                  start_time: Time,
                  track:
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track::TaggedSymbol,
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
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Channels
                  )
                end
              OrInteger = T.type_alias { Integer }

              CHANNEL_1 =
                T.let(
                  1,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Channels::TaggedInteger
                )
              CHANNEL_2 =
                T.let(
                  2,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Channels::TaggedInteger
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Channels::TaggedInteger
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
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              START_CALL_RECORDING_API =
                T.let(
                  :StartCallRecordingAPI,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                )
              START_CONFERENCE_RECORDING_API =
                T.let(
                  :StartConferenceRecordingAPI,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                )
              OUTBOUND_API =
                T.let(
                  :OutboundAPI,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                )
              DIAL_VERB =
                T.let(
                  :DialVerb,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                )
              CONFERENCE =
                T.let(
                  :Conference,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                )
              RECORD_VERB =
                T.let(
                  :RecordVerb,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                )
              TRUNKING =
                T.let(
                  :Trunking,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Source::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The audio track to record for the call. The default is `both`.
            module Track
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INBOUND =
                T.let(
                  :inbound,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track::TaggedSymbol
                )
              OUTBOUND =
                T.let(
                  :outbound,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track::TaggedSymbol
                )
              BOTH =
                T.let(
                  :both,
                  Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse::Track::TaggedSymbol
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
end
