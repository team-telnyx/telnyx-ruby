# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::HostedSignups#retrieve
      class HostedSignupRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse::Data]

        # @see Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Hosted signup ID
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute app_id
          #   Meta App ID the hosted signup onboards customers into
          #
          #   @return [String, nil]
          optional :app_id, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute expires_at
          #   When the onboarding URL stops working
          #
          #   @return [Time, nil]
          optional :expires_at, Time

          # @!attribute jwt
          #   Signed token embedded in `url`
          #
          #   @return [String, nil]
          optional :jwt, String

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse::Data::RecordType, nil]
          optional :record_type,
                   enum: -> { Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse::Data::RecordType }

          # @!attribute solution_id
          #   Meta Partner Solution ID linked to the app. Returned only when creating a hosted
          #   signup.
          #
          #   @return [String, nil]
          optional :solution_id, String

          # @!attribute url
          #   Hosted onboarding URL to share with the end customer
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(id: nil, app_id: nil, created_at: nil, expires_at: nil, jwt: nil, record_type: nil, solution_id: nil, url: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse::Data} for more details.
          #
          #   @param id [String] Hosted signup ID
          #
          #   @param app_id [String] Meta App ID the hosted signup onboards customers into
          #
          #   @param created_at [Time]
          #
          #   @param expires_at [Time] When the onboarding URL stops working
          #
          #   @param jwt [String] Signed token embedded in `url`
          #
          #   @param record_type [Symbol, Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse::Data::RecordType]
          #
          #   @param solution_id [String] Meta Partner Solution ID linked to the app. Returned only when creating a hosted
          #
          #   @param url [String] Hosted onboarding URL to share with the end customer

          # @see Telnyx::Models::Whatsapp::HostedSignupRetrieveResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            WHATSAPP_JWT = :whatsapp_jwt

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
