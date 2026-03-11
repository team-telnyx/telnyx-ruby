# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        module Profile
          # @see Telnyx::Resources::Whatsapp::PhoneNumbers::Profile::Photo#upload
          class PhotoUploadParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute phone_number
            #
            #   @return [String]
            required :phone_number, String

            # @!attribute file
            #   Image file (JPEG recommended, max 10 MB)
            #
            #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
            required :file, Telnyx::Internal::Type::FileInput

            # @!method initialize(phone_number:, file:, request_options: {})
            #   @param phone_number [String]
            #
            #   @param file [Pathname, StringIO, IO, String, Telnyx::FilePart] Image file (JPEG recommended, max 10 MB)
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
