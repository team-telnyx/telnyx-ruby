# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class ReleaseRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::ExternalConnections::Release)) }
        attr_reader :data

        sig { params(data: Telnyx::ExternalConnections::Release::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::ExternalConnections::Release::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::ExternalConnections::Release }) }
        def to_hash
        end
      end
    end
  end
end
