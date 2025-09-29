# typed: strong

module Telnyx
  module Models
    class GlobalIPAssignmentsUsageRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::GlobalIPAssignmentsUsageRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[global_ip_assignment_id][in], filter[global_ip_id][in]
      sig do
        returns(
          T.nilable(Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter)
        )
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter:
            Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[global_ip_assignment_id][in], filter[global_ip_id][in]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by exact Global IP Assignment ID
        sig do
          returns(
            T.nilable(
              T.any(
                String,
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPAssignmentID::In
              )
            )
          )
        end
        attr_reader :global_ip_assignment_id

        sig do
          params(
            global_ip_assignment_id:
              T.any(
                String,
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPAssignmentID::In::OrHash
              )
          ).void
        end
        attr_writer :global_ip_assignment_id

        # Filter by exact Global IP ID
        sig do
          returns(
            T.nilable(
              T.any(
                String,
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPID::In
              )
            )
          )
        end
        attr_reader :global_ip_id

        sig do
          params(
            global_ip_id:
              T.any(
                String,
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPID::In::OrHash
              )
          ).void
        end
        attr_writer :global_ip_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[global_ip_assignment_id][in], filter[global_ip_id][in]
        sig do
          params(
            global_ip_assignment_id:
              T.any(
                String,
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPAssignmentID::In::OrHash
              ),
            global_ip_id:
              T.any(
                String,
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPID::In::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by exact Global IP Assignment ID
          global_ip_assignment_id: nil,
          # Filter by exact Global IP ID
          global_ip_id: nil
        )
        end

        sig do
          override.returns(
            {
              global_ip_assignment_id:
                T.any(
                  String,
                  Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPAssignmentID::In
                ),
              global_ip_id:
                T.any(
                  String,
                  Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPID::In
                )
            }
          )
        end
        def to_hash
        end

        # Filter by exact Global IP Assignment ID
        module GlobalIPAssignmentID
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPAssignmentID::In
              )
            end

          class In < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPAssignmentID::In,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter by Global IP Assignment ID(s) separated by commas
            sig { returns(T.nilable(String)) }
            attr_reader :in_

            sig { params(in_: String).void }
            attr_writer :in_

            # Filtering operations
            sig { params(in_: String).returns(T.attached_class) }
            def self.new(
              # Filter by Global IP Assignment ID(s) separated by commas
              in_: nil
            )
            end

            sig { override.returns({ in_: String }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPAssignmentID::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Filter by exact Global IP ID
        module GlobalIPID
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPID::In
              )
            end

          class In < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPID::In,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter by Global IP ID(s) separated by commas
            sig { returns(T.nilable(String)) }
            attr_reader :in_

            sig { params(in_: String).void }
            attr_writer :in_

            # Filtering operations
            sig { params(in_: String).returns(T.attached_class) }
            def self.new(
              # Filter by Global IP ID(s) separated by commas
              in_: nil
            )
            end

            sig { override.returns({ in_: String }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::GlobalIPID::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
