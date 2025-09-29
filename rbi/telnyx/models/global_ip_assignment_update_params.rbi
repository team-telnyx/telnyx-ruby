# typed: strong

module Telnyx
  module Models
    class GlobalIPAssignmentUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::GlobalIPAssignmentUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::GlobalIPAssignmentUpdateParams::Body) }
      attr_reader :body

      sig do
        params(body: Telnyx::GlobalIPAssignmentUpdateParams::Body::OrHash).void
      end
      attr_writer :body

      sig do
        params(
          body: Telnyx::GlobalIPAssignmentUpdateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: Telnyx::GlobalIPAssignmentUpdateParams::Body,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Telnyx::Models::GlobalIPAssignment
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::GlobalIPAssignmentUpdateParams::Body,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.attached_class) }
        def self.new
        end

        sig do
          override.returns({ global_ip_id: String, wireguard_peer_id: String })
        end
        def to_hash
        end
      end
    end
  end
end
