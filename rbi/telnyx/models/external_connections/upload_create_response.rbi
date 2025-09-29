# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class UploadCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::UploadCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Describes wether or not the operation was successful
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        # Ticket id of the upload request
        sig { returns(T.nilable(String)) }
        attr_reader :ticket_id

        sig { params(ticket_id: String).void }
        attr_writer :ticket_id

        sig do
          params(success: T::Boolean, ticket_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Describes wether or not the operation was successful
          success: nil,
          # Ticket id of the upload request
          ticket_id: nil
        )
        end

        sig { override.returns({ success: T::Boolean, ticket_id: String }) }
        def to_hash
        end
      end
    end
  end
end
