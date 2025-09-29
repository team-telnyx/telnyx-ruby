# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionPlayParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionPlayParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The URL of a file to be played back in the conference. media_name and audio_url
        # cannot be used together in one request.
        sig { returns(T.nilable(String)) }
        attr_reader :audio_url

        sig { params(audio_url: String).void }
        attr_writer :audio_url

        # List of call control ids identifying participants the audio file should be
        # played to. If not given, the audio file will be played to the entire conference.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_control_ids

        sig { params(call_control_ids: T::Array[String]).void }
        attr_writer :call_control_ids

        # The number of times the audio file should be played. If supplied, the value must
        # be an integer between 1 and 100, or the special string `infinity` for an endless
        # loop.
        sig { returns(T.nilable(Telnyx::Calls::Loopcount::Variants)) }
        attr_reader :loop_

        sig { params(loop_: Telnyx::Calls::Loopcount::Variants).void }
        attr_writer :loop_

        # The media_name of a file to be played back in the conference. The media_name
        # must point to a file previously uploaded to api.telnyx.com/v2/media by the same
        # user/organization. The file must either be a WAV or MP3 file.
        sig { returns(T.nilable(String)) }
        attr_reader :media_name

        sig { params(media_name: String).void }
        attr_writer :media_name

        sig do
          params(
            audio_url: String,
            call_control_ids: T::Array[String],
            loop_: Telnyx::Calls::Loopcount::Variants,
            media_name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The URL of a file to be played back in the conference. media_name and audio_url
          # cannot be used together in one request.
          audio_url: nil,
          # List of call control ids identifying participants the audio file should be
          # played to. If not given, the audio file will be played to the entire conference.
          call_control_ids: nil,
          # The number of times the audio file should be played. If supplied, the value must
          # be an integer between 1 and 100, or the special string `infinity` for an endless
          # loop.
          loop_: nil,
          # The media_name of a file to be played back in the conference. The media_name
          # must point to a file previously uploaded to api.telnyx.com/v2/media by the same
          # user/organization. The file must either be a WAV or MP3 file.
          media_name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              audio_url: String,
              call_control_ids: T::Array[String],
              loop_: Telnyx::Calls::Loopcount::Variants,
              media_name: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
