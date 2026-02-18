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

      sig do
        returns(
          Telnyx::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest
        )
      end
      attr_reader :global_ip_assignment_update_request

      sig do
        params(
          global_ip_assignment_update_request:
            Telnyx::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest::OrHash
        ).void
      end
      attr_writer :global_ip_assignment_update_request

      sig do
        params(
          global_ip_assignment_update_request:
            Telnyx::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(global_ip_assignment_update_request:, request_options: {})
      end

      sig do
        override.returns(
          {
            global_ip_assignment_update_request:
              Telnyx::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class GlobalIPAssignmentUpdateRequest < Telnyx::Models::GlobalIPAssignment
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest,
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
