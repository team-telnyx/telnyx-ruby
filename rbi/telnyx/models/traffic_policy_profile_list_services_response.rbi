# typed: strong

module Telnyx
  module Models
    class TrafficPolicyProfileListServicesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TrafficPolicyProfileListServicesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # The service identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The group the service belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      # The name of the service.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :resource_type

      sig { params(resource_type: String).void }
      attr_writer :resource_type

      sig do
        params(
          id: String,
          group: String,
          name: String,
          resource_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The service identifier.
        id: nil,
        # The group the service belongs to.
        group: nil,
        # The name of the service.
        name: nil,
        resource_type: nil
      )
      end

      sig do
        override.returns(
          { id: String, group: String, name: String, resource_type: String }
        )
      end
      def to_hash
      end
    end
  end
end
