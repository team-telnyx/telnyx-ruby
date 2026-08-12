# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class VoicemailRequest < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::VoicemailRequest,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether voicemail is enabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        # Controls the greeting a caller hears before leaving a voicemail. Set `mode` to
        # `default` to play the standard system greeting, or to `custom_greeting` to play
        # your own audio. When `mode` is `custom_greeting`, `media_name` is required and
        # must reference an audio file already uploaded to your account through the Media
        # Storage API.
        sig do
          returns(T.nilable(Telnyx::PhoneNumbers::VoicemailRequest::Greeting))
        end
        attr_reader :greeting

        sig do
          params(
            greeting: Telnyx::PhoneNumbers::VoicemailRequest::Greeting::OrHash
          ).void
        end
        attr_writer :greeting

        # The pin used for voicemail
        sig { returns(T.nilable(String)) }
        attr_reader :pin

        sig { params(pin: String).void }
        attr_writer :pin

        sig do
          params(
            enabled: T::Boolean,
            greeting: Telnyx::PhoneNumbers::VoicemailRequest::Greeting::OrHash,
            pin: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether voicemail is enabled.
          enabled: nil,
          # Controls the greeting a caller hears before leaving a voicemail. Set `mode` to
          # `default` to play the standard system greeting, or to `custom_greeting` to play
          # your own audio. When `mode` is `custom_greeting`, `media_name` is required and
          # must reference an audio file already uploaded to your account through the Media
          # Storage API.
          greeting: nil,
          # The pin used for voicemail
          pin: nil
        )
        end

        sig do
          override.returns(
            {
              enabled: T::Boolean,
              greeting: Telnyx::PhoneNumbers::VoicemailRequest::Greeting,
              pin: String
            }
          )
        end
        def to_hash
        end

        class Greeting < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::VoicemailRequest::Greeting,
                Telnyx::Internal::AnyHash
              )
            end

          # The name of the media file to play as the greeting. Required when `mode` is
          # `custom_greeting`; ignored when `mode` is `default`. The value must match the
          # `media_name` of a file you previously uploaded with the Media Storage API
          # (`POST /v2/media`).
          sig { returns(T.nilable(String)) }
          attr_accessor :media_name

          # The greeting mode. `default` plays the standard system greeting.
          # `custom_greeting` plays the audio referenced by `media_name`.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::VoicemailRequest::Greeting::Mode::OrSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                Telnyx::PhoneNumbers::VoicemailRequest::Greeting::Mode::OrSymbol
            ).void
          end
          attr_writer :mode

          # Controls the greeting a caller hears before leaving a voicemail. Set `mode` to
          # `default` to play the standard system greeting, or to `custom_greeting` to play
          # your own audio. When `mode` is `custom_greeting`, `media_name` is required and
          # must reference an audio file already uploaded to your account through the Media
          # Storage API.
          sig do
            params(
              media_name: T.nilable(String),
              mode:
                Telnyx::PhoneNumbers::VoicemailRequest::Greeting::Mode::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the media file to play as the greeting. Required when `mode` is
            # `custom_greeting`; ignored when `mode` is `default`. The value must match the
            # `media_name` of a file you previously uploaded with the Media Storage API
            # (`POST /v2/media`).
            media_name: nil,
            # The greeting mode. `default` plays the standard system greeting.
            # `custom_greeting` plays the audio referenced by `media_name`.
            mode: nil
          )
          end

          sig do
            override.returns(
              {
                media_name: T.nilable(String),
                mode:
                  Telnyx::PhoneNumbers::VoicemailRequest::Greeting::Mode::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The greeting mode. `default` plays the standard system greeting.
          # `custom_greeting` plays the audio referenced by `media_name`.
          module Mode
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumbers::VoicemailRequest::Greeting::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEFAULT =
              T.let(
                :default,
                Telnyx::PhoneNumbers::VoicemailRequest::Greeting::Mode::TaggedSymbol
              )
            CUSTOM_GREETING =
              T.let(
                :custom_greeting,
                Telnyx::PhoneNumbers::VoicemailRequest::Greeting::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::VoicemailRequest::Greeting::Mode::TaggedSymbol
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
