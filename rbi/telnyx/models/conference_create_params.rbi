# typed: strong

module Telnyx
  module Models
    class ConferenceCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ConferenceCreateParams, Telnyx::Internal::AnyHash)
        end

      # Unique identifier and token for controlling the call
      sig { returns(String) }
      attr_accessor :call_control_id

      # Name of the conference
      sig { returns(String) }
      attr_accessor :name

      # Whether a beep sound should be played when participants join and/or leave the
      # conference.
      sig do
        returns(
          T.nilable(Telnyx::ConferenceCreateParams::BeepEnabled::OrSymbol)
        )
      end
      attr_reader :beep_enabled

      sig do
        params(
          beep_enabled: Telnyx::ConferenceCreateParams::BeepEnabled::OrSymbol
        ).void
      end
      attr_writer :beep_enabled

      # Use this field to add state to every subsequent webhook. It must be a valid
      # Base-64 encoded string. The client_state will be updated for the creator call
      # leg and will be used for all webhooks related to the created conference.
      sig { returns(T.nilable(String)) }
      attr_reader :client_state

      sig { params(client_state: String).void }
      attr_writer :client_state

      # Toggle background comfort noise.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :comfort_noise

      sig { params(comfort_noise: T::Boolean).void }
      attr_writer :comfort_noise

      # Use this field to avoid execution of duplicate commands. Telnyx will ignore
      # subsequent commands with the same `command_id` as one that has already been
      # executed.
      sig { returns(T.nilable(String)) }
      attr_reader :command_id

      sig { params(command_id: String).void }
      attr_writer :command_id

      # Time length (minutes) after which the conference will end.
      sig { returns(T.nilable(Integer)) }
      attr_reader :duration_minutes

      sig { params(duration_minutes: Integer).void }
      attr_writer :duration_minutes

      # The URL of a file to be played to participants joining the conference. The URL
      # can point to either a WAV or MP3 file. hold_media_name and hold_audio_url cannot
      # be used together in one request. Takes effect only when
      # "start_conference_on_create" is set to "false".
      sig { returns(T.nilable(String)) }
      attr_reader :hold_audio_url

      sig { params(hold_audio_url: String).void }
      attr_writer :hold_audio_url

      # The media_name of a file to be played to participants joining the conference.
      # The media_name must point to a file previously uploaded to
      # api.telnyx.com/v2/media by the same user/organization. The file must either be a
      # WAV or MP3 file. Takes effect only when "start_conference_on_create" is set to
      # "false".
      sig { returns(T.nilable(String)) }
      attr_reader :hold_media_name

      sig { params(hold_media_name: String).void }
      attr_writer :hold_media_name

      # The maximum number of active conference participants to allow. Must be between 2
      # and 800. Defaults to 250
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_participants

      sig { params(max_participants: Integer).void }
      attr_writer :max_participants

      # Sets the region where the conference data will be hosted. Defaults to the region
      # defined in user's data locality settings (Europe or US).
      sig do
        returns(T.nilable(Telnyx::ConferenceCreateParams::Region::OrSymbol))
      end
      attr_reader :region

      sig do
        params(region: Telnyx::ConferenceCreateParams::Region::OrSymbol).void
      end
      attr_writer :region

      # Whether the conference should be started on creation. If the conference isn't
      # started all participants that join are automatically put on hold. Defaults to
      # "true".
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :start_conference_on_create

      sig { params(start_conference_on_create: T::Boolean).void }
      attr_writer :start_conference_on_create

      sig do
        params(
          call_control_id: String,
          name: String,
          beep_enabled: Telnyx::ConferenceCreateParams::BeepEnabled::OrSymbol,
          client_state: String,
          comfort_noise: T::Boolean,
          command_id: String,
          duration_minutes: Integer,
          hold_audio_url: String,
          hold_media_name: String,
          max_participants: Integer,
          region: Telnyx::ConferenceCreateParams::Region::OrSymbol,
          start_conference_on_create: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier and token for controlling the call
        call_control_id:,
        # Name of the conference
        name:,
        # Whether a beep sound should be played when participants join and/or leave the
        # conference.
        beep_enabled: nil,
        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string. The client_state will be updated for the creator call
        # leg and will be used for all webhooks related to the created conference.
        client_state: nil,
        # Toggle background comfort noise.
        comfort_noise: nil,
        # Use this field to avoid execution of duplicate commands. Telnyx will ignore
        # subsequent commands with the same `command_id` as one that has already been
        # executed.
        command_id: nil,
        # Time length (minutes) after which the conference will end.
        duration_minutes: nil,
        # The URL of a file to be played to participants joining the conference. The URL
        # can point to either a WAV or MP3 file. hold_media_name and hold_audio_url cannot
        # be used together in one request. Takes effect only when
        # "start_conference_on_create" is set to "false".
        hold_audio_url: nil,
        # The media_name of a file to be played to participants joining the conference.
        # The media_name must point to a file previously uploaded to
        # api.telnyx.com/v2/media by the same user/organization. The file must either be a
        # WAV or MP3 file. Takes effect only when "start_conference_on_create" is set to
        # "false".
        hold_media_name: nil,
        # The maximum number of active conference participants to allow. Must be between 2
        # and 800. Defaults to 250
        max_participants: nil,
        # Sets the region where the conference data will be hosted. Defaults to the region
        # defined in user's data locality settings (Europe or US).
        region: nil,
        # Whether the conference should be started on creation. If the conference isn't
        # started all participants that join are automatically put on hold. Defaults to
        # "true".
        start_conference_on_create: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            call_control_id: String,
            name: String,
            beep_enabled: Telnyx::ConferenceCreateParams::BeepEnabled::OrSymbol,
            client_state: String,
            comfort_noise: T::Boolean,
            command_id: String,
            duration_minutes: Integer,
            hold_audio_url: String,
            hold_media_name: String,
            max_participants: Integer,
            region: Telnyx::ConferenceCreateParams::Region::OrSymbol,
            start_conference_on_create: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Whether a beep sound should be played when participants join and/or leave the
      # conference.
      module BeepEnabled
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ConferenceCreateParams::BeepEnabled)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALWAYS =
          T.let(
            :always,
            Telnyx::ConferenceCreateParams::BeepEnabled::TaggedSymbol
          )
        NEVER =
          T.let(
            :never,
            Telnyx::ConferenceCreateParams::BeepEnabled::TaggedSymbol
          )
        ON_ENTER =
          T.let(
            :on_enter,
            Telnyx::ConferenceCreateParams::BeepEnabled::TaggedSymbol
          )
        ON_EXIT =
          T.let(
            :on_exit,
            Telnyx::ConferenceCreateParams::BeepEnabled::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ConferenceCreateParams::BeepEnabled::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sets the region where the conference data will be hosted. Defaults to the region
      # defined in user's data locality settings (Europe or US).
      module Region
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ConferenceCreateParams::Region) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUSTRALIA =
          T.let(
            :Australia,
            Telnyx::ConferenceCreateParams::Region::TaggedSymbol
          )
        EUROPE =
          T.let(:Europe, Telnyx::ConferenceCreateParams::Region::TaggedSymbol)
        MIDDLE_EAST =
          T.let(
            :"Middle East",
            Telnyx::ConferenceCreateParams::Region::TaggedSymbol
          )
        US = T.let(:US, Telnyx::ConferenceCreateParams::Region::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ConferenceCreateParams::Region::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
