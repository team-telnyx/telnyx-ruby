# typed: strong

module Telnyx
  module Models
    class ComputeRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ComputeRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::ComputeRetrieveResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::ComputeRetrieveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::ComputeRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::ComputeRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ComputeRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # ID of the function that owns and ships this actor type. Empty when the type is
        # unowned.
        sig { returns(T.nilable(String)) }
        attr_reader :owner_function_id

        sig { params(owner_function_id: String).void }
        attr_writer :owner_function_id

        # Last deployment fan-out report, not a live probe. Omitted on actor types without
        # a placement-aware deployment.
        sig do
          returns(
            T.nilable(Telnyx::Models::ComputeRetrieveResponse::Data::Placement)
          )
        end
        attr_reader :placement

        sig do
          params(
            placement:
              Telnyx::Models::ComputeRetrieveResponse::Data::Placement::OrHash
          ).void
        end
        attr_writer :placement

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            owner_function_id: String,
            placement:
              Telnyx::Models::ComputeRetrieveResponse::Data::Placement::OrHash,
            record_type: String,
            status: String,
            type: String,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          created_at: nil,
          # ID of the function that owns and ships this actor type. Empty when the type is
          # unowned.
          owner_function_id: nil,
          # Last deployment fan-out report, not a live probe. Omitted on actor types without
          # a placement-aware deployment.
          placement: nil,
          record_type: nil,
          status: nil,
          type: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              owner_function_id: String,
              placement:
                Telnyx::Models::ComputeRetrieveResponse::Data::Placement,
              record_type: String,
              status: String,
              type: String,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class Placement < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ComputeRetrieveResponse::Data::Placement,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::ComputeRetrieveResponse::Data::Placement::ClusterResult
                ]
              )
            )
          end
          attr_reader :cluster_results

          sig do
            params(
              cluster_results:
                T::Array[
                  Telnyx::Models::ComputeRetrieveResponse::Data::Placement::ClusterResult::OrHash
                ]
            ).void
          end
          attr_writer :cluster_results

          # Public regions with successful deployment
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :clusters

          sig { params(clusters: T::Array[String]).void }
          attr_writer :clusters

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :excluded_clusters

          sig { params(excluded_clusters: T::Array[String]).void }
          attr_writer :excluded_clusters

          # Optional ISO-8601 millisecond timestamp
          sig { returns(T.nilable(String)) }
          attr_reader :observed_at

          sig { params(observed_at: String).void }
          attr_writer :observed_at

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :partial

          sig { params(partial: T::Boolean).void }
          attr_writer :partial

          sig do
            returns(
              T.nilable(
                Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy::TaggedSymbol
              )
            )
          end
          attr_reader :policy

          sig do
            params(
              policy:
                Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy::OrSymbol
            ).void
          end
          attr_writer :policy

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :unchecked_clusters

          sig { params(unchecked_clusters: T::Array[String]).void }
          attr_writer :unchecked_clusters

          # Last deployment fan-out report, not a live probe. Omitted on actor types without
          # a placement-aware deployment.
          sig do
            params(
              cluster_results:
                T::Array[
                  Telnyx::Models::ComputeRetrieveResponse::Data::Placement::ClusterResult::OrHash
                ],
              clusters: T::Array[String],
              excluded_clusters: T::Array[String],
              observed_at: String,
              partial: T::Boolean,
              policy:
                Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy::OrSymbol,
              unchecked_clusters: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            cluster_results: nil,
            # Public regions with successful deployment
            clusters: nil,
            excluded_clusters: nil,
            # Optional ISO-8601 millisecond timestamp
            observed_at: nil,
            partial: nil,
            policy: nil,
            unchecked_clusters: nil
          )
          end

          sig do
            override.returns(
              {
                cluster_results:
                  T::Array[
                    Telnyx::Models::ComputeRetrieveResponse::Data::Placement::ClusterResult
                  ],
                clusters: T::Array[String],
                excluded_clusters: T::Array[String],
                observed_at: String,
                partial: T::Boolean,
                policy:
                  Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy::TaggedSymbol,
                unchecked_clusters: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class ClusterResult < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ComputeRetrieveResponse::Data::Placement::ClusterResult,
                  Telnyx::Internal::AnyHash
                )
              end

            # Public region, or unknown when no mapping exists
            sig { returns(T.nilable(String)) }
            attr_reader :cluster_id

            sig { params(cluster_id: String).void }
            attr_writer :cluster_id

            sig { returns(T.nilable(String)) }
            attr_reader :error

            sig { params(error: String).void }
            attr_writer :error

            sig { returns(T.nilable(String)) }
            attr_reader :error_code

            sig { params(error_code: String).void }
            attr_writer :error_code

            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :success

            sig { params(success: T::Boolean).void }
            attr_writer :success

            sig do
              params(
                cluster_id: String,
                error: String,
                error_code: String,
                status: String,
                success: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # Public region, or unknown when no mapping exists
              cluster_id: nil,
              error: nil,
              error_code: nil,
              status: nil,
              success: nil
            )
            end

            sig do
              override.returns(
                {
                  cluster_id: String,
                  error: String,
                  error_code: String,
                  status: String,
                  success: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          module Policy
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EVERYWHERE =
              T.let(
                :everywhere,
                Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy::TaggedSymbol
              )
            SINGLE_SITE =
              T.let(
                :single_site,
                Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::ComputeRetrieveResponse::Data::Placement::Policy::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
