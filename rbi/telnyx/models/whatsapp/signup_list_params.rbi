# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class SignupListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Whatsapp::SignupListParams, Telnyx::Internal::AnyHash)
          end

        # Return sessions created at or after this time (RFC 3339)
        sig { returns(T.nilable(Time)) }
        attr_reader :filter_created_at_gte

        sig { params(filter_created_at_gte: Time).void }
        attr_writer :filter_created_at_gte

        # Return sessions created at or before this time (RFC 3339)
        sig { returns(T.nilable(Time)) }
        attr_reader :filter_created_at_lte

        sig { params(filter_created_at_lte: Time).void }
        attr_writer :filter_created_at_lte

        # Filter by the tech provider customer reference
        sig { returns(T.nilable(String)) }
        attr_reader :filter_customer_id

        sig { params(filter_customer_id: String).void }
        attr_writer :filter_customer_id

        # Filter by Meta WABA ID
        sig { returns(T.nilable(String)) }
        attr_reader :filter_waba_id

        sig { params(filter_waba_id: String).void }
        attr_writer :filter_waba_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter_created_at_gte: Time,
            filter_created_at_lte: Time,
            filter_customer_id: String,
            filter_waba_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Return sessions created at or after this time (RFC 3339)
          filter_created_at_gte: nil,
          # Return sessions created at or before this time (RFC 3339)
          filter_created_at_lte: nil,
          # Filter by the tech provider customer reference
          filter_customer_id: nil,
          # Filter by Meta WABA ID
          filter_waba_id: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_created_at_gte: Time,
              filter_created_at_lte: Time,
              filter_customer_id: String,
              filter_waba_id: String,
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
