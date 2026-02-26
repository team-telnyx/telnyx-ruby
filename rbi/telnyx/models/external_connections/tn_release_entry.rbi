# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class TnReleaseEntry < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::TnReleaseEntry,
              Telnyx::Internal::AnyHash
            )
          end

        # Phone number ID from the Telnyx API.
        sig { returns(T.nilable(String)) }
        attr_reader :number_id

        sig { params(number_id: String).void }
        attr_writer :number_id

        # Phone number in E164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          params(number_id: String, phone_number: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Phone number ID from the Telnyx API.
          number_id: nil,
          # Phone number in E164 format.
          phone_number: nil
        )
        end

        sig { override.returns({ number_id: String, phone_number: String }) }
        def to_hash
        end
      end
    end
  end
end
