# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messaging10dlc::PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :page

        sig { params(page: Integer).void }
        attr_writer :page

        sig { returns(T.nilable(Integer)) }
        attr_reader :records_per_page

        sig { params(records_per_page: Integer).void }
        attr_writer :records_per_page

        sig do
          params(
            page: Integer,
            records_per_page: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(page: nil, records_per_page: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              page: Integer,
              records_per_page: Integer,
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
