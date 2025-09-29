# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAssignmentHealth#retrieve
    class GlobalIPAssignmentHealthRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[global_ip_id][in], filter[global_ip_assignment_id][in]
      #
      #   @return [Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter, nil]
      optional :filter, -> { Telnyx::GlobalIPAssignmentHealthRetrieveParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams} for more details.
      #
      #   @param filter [Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[global_ip_i
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute global_ip_assignment_id
        #   Filter by exact Global IP Assignment ID
        #
        #   @return [String, Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPAssignmentID::In, nil]
        optional :global_ip_assignment_id,
                 union: -> { Telnyx::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPAssignmentID }

        # @!attribute global_ip_id
        #   Filter by exact Global IP ID
        #
        #   @return [String, Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPID::In, nil]
        optional :global_ip_id, union: -> { Telnyx::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPID }

        # @!method initialize(global_ip_assignment_id: nil, global_ip_id: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[global_ip_id][in], filter[global_ip_assignment_id][in]
        #
        #   @param global_ip_assignment_id [String, Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPAssignmentID::In] Filter by exact Global IP Assignment ID
        #
        #   @param global_ip_id [String, Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPID::In] Filter by exact Global IP ID

        # Filter by exact Global IP Assignment ID
        #
        # @see Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter#global_ip_assignment_id
        module GlobalIPAssignmentID
          extend Telnyx::Internal::Type::Union

          # Filter by exact Global IP Assignment ID
          variant String

          # Filtering operations
          variant -> { Telnyx::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPAssignmentID::In }

          class In < Telnyx::Internal::Type::BaseModel
            # @!attribute in_
            #   Filter by Global IP Assignment ID(s) separated by commas
            #
            #   @return [String, nil]
            optional :in_, String, api_name: :in

            # @!method initialize(in_: nil)
            #   Filtering operations
            #
            #   @param in_ [String] Filter by Global IP Assignment ID(s) separated by commas
          end

          # @!method self.variants
          #   @return [Array(String, Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPAssignmentID::In)]
        end

        # Filter by exact Global IP ID
        #
        # @see Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter#global_ip_id
        module GlobalIPID
          extend Telnyx::Internal::Type::Union

          # Filter by exact Global IP ID
          variant String

          # Filtering operations
          variant -> { Telnyx::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPID::In }

          class In < Telnyx::Internal::Type::BaseModel
            # @!attribute in_
            #   Filter by Global IP ID(s) separated by commas
            #
            #   @return [String, nil]
            optional :in_, String, api_name: :in

            # @!method initialize(in_: nil)
            #   Filtering operations
            #
            #   @param in_ [String] Filter by Global IP ID(s) separated by commas
          end

          # @!method self.variants
          #   @return [Array(String, Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter::GlobalIPID::In)]
        end
      end
    end
  end
end
