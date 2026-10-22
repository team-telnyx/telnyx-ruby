# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Compute#retrieve
    class ComputeRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ComputeRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::ComputeRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ComputeRetrieveResponse::Data]

      # @see Telnyx::Models::ComputeRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute owner_function_id
        #   ID of the function that owns and ships this actor type. Empty when the type is
        #   unowned.
        #
        #   @return [String, nil]
        optional :owner_function_id, String

        # @!attribute placement
        #   Last deployment fan-out report, not a live probe. Omitted on actor types without
        #   a placement-aware deployment.
        #
        #   @return [Telnyx::Models::ComputeRetrieveResponse::Data::Placement, nil]
        optional :placement, -> { Telnyx::Models::ComputeRetrieveResponse::Data::Placement }

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute updated_at
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!method initialize(id: nil, created_at: nil, owner_function_id: nil, placement: nil, record_type: nil, status: nil, type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ComputeRetrieveResponse::Data} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [String]
        #
        #   @param owner_function_id [String] ID of the function that owns and ships this actor type. Empty when the type is u
        #
        #   @param placement [Telnyx::Models::ComputeRetrieveResponse::Data::Placement] Last deployment fan-out report, not a live probe. Omitted on actor types without
        #
        #   @param record_type [String]
        #
        #   @param status [String]
        #
        #   @param type [String]
        #
        #   @param updated_at [String]

        # @see Telnyx::Models::ComputeRetrieveResponse::Data#placement
        class Placement < Telnyx::Internal::Type::BaseModel
          # @!attribute cluster_results
          #
          #   @return [Array<Telnyx::Models::ComputeRetrieveResponse::Data::Placement::ClusterResult>, nil]
          optional :cluster_results,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ComputeRetrieveResponse::Data::Placement::ClusterResult] }

          # @!attribute clusters
          #   Public regions with successful deployment
          #
          #   @return [Array<String>, nil]
          optional :clusters, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute excluded_clusters
          #
          #   @return [Array<String>, nil]
          optional :excluded_clusters, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute observed_at
          #   Optional ISO-8601 millisecond timestamp
          #
          #   @return [String, nil]
          optional :observed_at, String

          # @!attribute partial
          #
          #   @return [Boolean, nil]
          optional :partial, Telnyx::Internal::Type::Boolean

          # @!attribute policy
          #
          #   @return [Symbol, Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy, nil]
          optional :policy, enum: -> { Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy }

          # @!attribute unchecked_clusters
          #
          #   @return [Array<String>, nil]
          optional :unchecked_clusters, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(cluster_results: nil, clusters: nil, excluded_clusters: nil, observed_at: nil, partial: nil, policy: nil, unchecked_clusters: nil)
          #   Last deployment fan-out report, not a live probe. Omitted on actor types without
          #   a placement-aware deployment.
          #
          #   @param cluster_results [Array<Telnyx::Models::ComputeRetrieveResponse::Data::Placement::ClusterResult>]
          #
          #   @param clusters [Array<String>] Public regions with successful deployment
          #
          #   @param excluded_clusters [Array<String>]
          #
          #   @param observed_at [String] Optional ISO-8601 millisecond timestamp
          #
          #   @param partial [Boolean]
          #
          #   @param policy [Symbol, Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy]
          #
          #   @param unchecked_clusters [Array<String>]

          class ClusterResult < Telnyx::Internal::Type::BaseModel
            # @!attribute cluster_id
            #   Public region, or unknown when no mapping exists
            #
            #   @return [String, nil]
            optional :cluster_id, String

            # @!attribute error
            #
            #   @return [String, nil]
            optional :error, String

            # @!attribute error_code
            #
            #   @return [String, nil]
            optional :error_code, String

            # @!attribute status
            #
            #   @return [String, nil]
            optional :status, String

            # @!attribute success
            #
            #   @return [Boolean, nil]
            optional :success, Telnyx::Internal::Type::Boolean

            # @!method initialize(cluster_id: nil, error: nil, error_code: nil, status: nil, success: nil)
            #   @param cluster_id [String] Public region, or unknown when no mapping exists
            #
            #   @param error [String]
            #
            #   @param error_code [String]
            #
            #   @param status [String]
            #
            #   @param success [Boolean]
          end

          # @see Telnyx::Models::ComputeRetrieveResponse::Data::Placement#policy
          module Policy
            extend Telnyx::Internal::Type::Enum

            EVERYWHERE = :everywhere
            SINGLE_SITE = :single_site

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
