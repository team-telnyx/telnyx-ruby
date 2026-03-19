# typed: strong

module Telnyx
  module Models
    class TrafficPolicyProfileDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TrafficPolicyProfileDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # Identifies the resource.
          id: nil
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
