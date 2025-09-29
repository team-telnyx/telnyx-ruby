# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class ConferenceUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::ConferenceUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account_sid

          # The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::OrSymbol
              )
            )
          end
          attr_reader :announce_method

          sig do
            params(
              announce_method:
                Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::OrSymbol
            ).void
          end
          attr_writer :announce_method

          # The URL we should call to announce something into the conference. The URL may
          # return an MP3 file, a WAV file, or a TwiML document that contains `<Play>`,
          # `<Say>`, `<Pause>`, or `<Redirect>` verbs.
          sig { returns(T.nilable(String)) }
          attr_reader :announce_url

          sig { params(announce_url: String).void }
          attr_writer :announce_url

          # The new status of the resource. Specifying `completed` will end the conference
          # and hang up all participants.
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              account_sid: String,
              announce_method:
                Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::OrSymbol,
              announce_url: String,
              status: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account_sid:,
            # The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
            announce_method: nil,
            # The URL we should call to announce something into the conference. The URL may
            # return an MP3 file, a WAV file, or a TwiML document that contains `<Play>`,
            # `<Say>`, `<Pause>`, or `<Redirect>` verbs.
            announce_url: nil,
            # The new status of the resource. Specifying `completed` will end the conference
            # and hang up all participants.
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account_sid: String,
                announce_method:
                  Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::OrSymbol,
                announce_url: String,
                status: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
          module AnnounceMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::TaggedSymbol
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
