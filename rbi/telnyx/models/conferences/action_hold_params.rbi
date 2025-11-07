# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionHoldParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionHoldParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The URL of a file to be played to the participants when they are put on hold.
        # media_name and audio_url cannot be used together in one request.
        sig { returns(T.nilable(String)) }
        attr_reader :audio_url

        sig { params(audio_url: String).void }
        attr_writer :audio_url

        # List of unique identifiers and tokens for controlling the call. When empty all
        # participants will be placed on hold.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_control_ids

        sig { params(call_control_ids: T::Array[String]).void }
        attr_writer :call_control_ids

        # The media_name of a file to be played to the participants when they are put on
        # hold. The media_name must point to a file previously uploaded to
        # api.telnyx.com/v2/media by the same user/organization. The file must either be a
        # WAV or MP3 file.
        sig { returns(T.nilable(String)) }
        attr_reader :media_name

        sig { params(media_name: String).void }
        attr_writer :media_name

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        sig do
          returns(
            T.nilable(Telnyx::Conferences::ActionHoldParams::Region::OrSymbol)
          )
        end
        attr_reader :region

        sig do
          params(
            region: Telnyx::Conferences::ActionHoldParams::Region::OrSymbol
          ).void
        end
        attr_writer :region

        sig do
          params(
            audio_url: String,
            call_control_ids: T::Array[String],
            media_name: String,
            region: Telnyx::Conferences::ActionHoldParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The URL of a file to be played to the participants when they are put on hold.
          # media_name and audio_url cannot be used together in one request.
          audio_url: nil,
          # List of unique identifiers and tokens for controlling the call. When empty all
          # participants will be placed on hold.
          call_control_ids: nil,
          # The media_name of a file to be played to the participants when they are put on
          # hold. The media_name must point to a file previously uploaded to
          # api.telnyx.com/v2/media by the same user/organization. The file must either be a
          # WAV or MP3 file.
          media_name: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              audio_url: String,
              call_control_ids: T::Array[String],
              media_name: String,
              region: Telnyx::Conferences::ActionHoldParams::Region::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Conferences::ActionHoldParams::Region)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUSTRALIA =
            T.let(
              :Australia,
              Telnyx::Conferences::ActionHoldParams::Region::TaggedSymbol
            )
          EUROPE =
            T.let(
              :Europe,
              Telnyx::Conferences::ActionHoldParams::Region::TaggedSymbol
            )
          MIDDLE_EAST =
            T.let(
              :"Middle East",
              Telnyx::Conferences::ActionHoldParams::Region::TaggedSymbol
            )
          US =
            T.let(
              :US,
              Telnyx::Conferences::ActionHoldParams::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionHoldParams::Region::TaggedSymbol
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
