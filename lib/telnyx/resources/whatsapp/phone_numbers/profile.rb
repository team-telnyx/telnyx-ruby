# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        class Profile
          # Manage Whatsapp phone numbers
          # @return [Telnyx::Resources::Whatsapp::PhoneNumbers::Profile::Photo]
          attr_reader :photo

          # @return [Telnyx::Resources::Whatsapp::PhoneNumbers::Profile::Models]
          attr_reader :models

          # Get phone number business profile
          #
          # @overload retrieve(phone_number, request_options: {})
          #
          # @param phone_number [String] Phone number (E.164 format)
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse]
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveParams
          def retrieve(phone_number, params = {})
            @client.request(
              method: :get,
              path: ["v2/whatsapp/phone_numbers/%1$s/profile", phone_number],
              model: Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Update phone number business profile
          #
          # @overload update(phone_number, about: nil, address: nil, category: nil, description: nil, display_name: nil, email: nil, website: nil, request_options: {})
          #
          # @param phone_number [String] Phone number (E.164 format)
          #
          # @param about [String]
          #
          # @param address [String]
          #
          # @param category [String]
          #
          # @param description [String]
          #
          # @param display_name [String]
          #
          # @param email [String]
          #
          # @param website [String]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::PhoneNumbers::ProfileUpdateResponse]
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::ProfileUpdateParams
          def update(phone_number, params = {})
            parsed, options = Telnyx::Whatsapp::PhoneNumbers::ProfileUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["v2/whatsapp/phone_numbers/%1$s/profile", phone_number],
              body: parsed,
              model: Telnyx::Models::Whatsapp::PhoneNumbers::ProfileUpdateResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @photo = Telnyx::Resources::Whatsapp::PhoneNumbers::Profile::Photo.new(client: client)
            @models = Telnyx::Resources::Whatsapp::PhoneNumbers::Profile::Models.new(client: client)
          end
        end
      end
    end
  end
end
