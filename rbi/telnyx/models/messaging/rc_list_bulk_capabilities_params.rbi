# typed: strong

module Telnyx
  module Models
    module Messaging
      class RcListBulkCapabilitiesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messaging::RcListBulkCapabilitiesParams,
              Telnyx::Internal::AnyHash
            )
          end

        # RCS Agent ID
        sig { returns(String) }
        attr_accessor :agent_id

        # List of phone numbers to check
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        sig do
          params(
            agent_id: String,
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # RCS Agent ID
          agent_id:,
          # List of phone numbers to check
          phone_numbers:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              agent_id: String,
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
