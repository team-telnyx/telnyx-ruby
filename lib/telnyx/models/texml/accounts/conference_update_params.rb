# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Conferences#update
        class ConferenceUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute account_sid
          #
          #   @return [String]
          required :account_sid, String

          # @!attribute announce_method
          #   The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod, nil]
          optional :announce_method,
                   enum: -> { Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod },
                   api_name: :AnnounceMethod

          # @!attribute announce_url
          #   The URL we should call to announce something into the conference. The URL may
          #   return an MP3 file, a WAV file, or a TwiML document that contains `<Play>`,
          #   `<Say>`, `<Pause>`, or `<Redirect>` verbs.
          #
          #   @return [String, nil]
          optional :announce_url, String, api_name: :AnnounceUrl

          # @!attribute status
          #   The new status of the resource. Specifying `completed` will end the conference
          #   and hang up all participants.
          #
          #   @return [String, nil]
          optional :status, String, api_name: :Status

          # @!method initialize(account_sid:, announce_method: nil, announce_url: nil, status: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::ConferenceUpdateParams} for more details.
          #
          #   @param account_sid [String]
          #
          #   @param announce_method [Symbol, Telnyx::Models::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod] The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
          #
          #   @param announce_url [String] The URL we should call to announce something into the conference. The URL may re
          #
          #   @param status [String] The new status of the resource. Specifying `completed` will end the conference a
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
          module AnnounceMethod
            extend Telnyx::Internal::Type::Enum

            GET = :GET
            POST = :POST

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
