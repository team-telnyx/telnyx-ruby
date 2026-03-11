# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        module Profile
          class PhotoUploadParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Whatsapp::PhoneNumbers::Profile::PhotoUploadParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :phone_number

            # Image file (JPEG recommended, max 10 MB)
            sig { returns(Telnyx::Internal::FileInput) }
            attr_accessor :file

            sig do
              params(
                phone_number: String,
                file: Telnyx::Internal::FileInput,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              phone_number:,
              # Image file (JPEG recommended, max 10 MB)
              file:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  phone_number: String,
                  file: Telnyx::Internal::FileInput,
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
  end
end
