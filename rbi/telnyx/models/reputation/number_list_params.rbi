# typed: strong

module Telnyx
  module Models
    module Reputation
      class NumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Reputation::NumberListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by enterprise ID.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_enterprise_id

        sig { params(filter_enterprise_id: String).void }
        attr_writer :filter_enterprise_id

        # Partial match on phone number. Must contain at least 5 digits.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_phone_number_contains

        sig { params(filter_phone_number_contains: String).void }
        attr_writer :filter_phone_number_contains

        # Exact phone-number match (E.164).
        sig { returns(T.nilable(String)) }
        attr_reader :filter_phone_number_eq

        sig { params(filter_phone_number_eq: String).void }
        attr_writer :filter_phone_number_eq

        # 1-based page number. Out-of-range values return an empty page with correct meta.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Items per page. Maximum 250; values above are clamped to 250.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter_enterprise_id: String,
            filter_phone_number_contains: String,
            filter_phone_number_eq: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by enterprise ID.
          filter_enterprise_id: nil,
          # Partial match on phone number. Must contain at least 5 digits.
          filter_phone_number_contains: nil,
          # Exact phone-number match (E.164).
          filter_phone_number_eq: nil,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_enterprise_id: String,
              filter_phone_number_contains: String,
              filter_phone_number_eq: String,
              page_number: Integer,
              page_size: Integer,
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
