# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        class Profile
          # Manage Whatsapp phone numbers
          class Photo
            # Delete Whatsapp profile photo
            #
            # @overload delete(phone_number, request_options: {})
            #
            # @param phone_number [String] Phone number (E.164 format)
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoDeleteParams
            def delete(phone_number, params = {})
              @client.request(
                method: :delete,
                path: ["v2/whatsapp/phone_numbers/%1$s/profile/photo", phone_number],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # Upload Whatsapp profile photo
            #
            # @overload upload(phone_number, file:, request_options: {})
            #
            # @param phone_number [String] Phone number (E.164 format)
            #
            # @param file [Pathname, StringIO, IO, String, Telnyx::FilePart] Image file (JPEG recommended, max 10 MB)
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoUploadResponse]
            #
            # @see Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoUploadParams
            def upload(phone_number, params)
              parsed, options = Telnyx::Whatsapp::PhoneNumbers::Profile::PhotoUploadParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["v2/whatsapp/phone_numbers/%1$s/profile/photo", phone_number],
                headers: {"content-type" => "multipart/form-data"},
                body: parsed,
                model: Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoUploadResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
