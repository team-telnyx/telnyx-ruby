# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberAddParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::PhoneNumberAddParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # Supporting documents covering this batch. At least one entry with
        # `document_type: letter_of_authorization` is required - the LOA authorises Telnyx
        # to register these numbers under the DIR. Each `document_id` must come from the
        # Telnyx Documents API. Additional document types (e.g. business registration) may
        # be included alongside the LOA.
        sig { returns(T::Array[Telnyx::Document]) }
        attr_accessor :documents

        # 1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with
        # `1`.
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        sig do
          params(
            dir_id: String,
            documents: T::Array[Telnyx::Document::OrHash],
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # Supporting documents covering this batch. At least one entry with
          # `document_type: letter_of_authorization` is required - the LOA authorises Telnyx
          # to register these numbers under the DIR. Each `document_id` must come from the
          # Telnyx Documents API. Additional document types (e.g. business registration) may
          # be included alongside the LOA.
          documents:,
          # 1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with
          # `1`.
          phone_numbers:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              documents: T::Array[Telnyx::Document],
              phone_numbers: T::Array[String],
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
