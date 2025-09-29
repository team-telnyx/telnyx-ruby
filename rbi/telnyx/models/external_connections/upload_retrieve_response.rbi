# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class UploadRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::UploadRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::ExternalConnections::Upload)) }
        attr_reader :data

        sig { params(data: Telnyx::ExternalConnections::Upload::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::ExternalConnections::Upload::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::ExternalConnections::Upload }) }
        def to_hash
        end
      end
    end
  end
end
