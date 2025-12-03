# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectsCoverageListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data
              ],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The available throughput in Megabits per Second (Mbps) for your Virtual Cross
        # Connect.
        sig { returns(T.nilable(T::Array[Float])) }
        attr_reader :available_bandwidth

        sig { params(available_bandwidth: T::Array[Float]).void }
        attr_writer :available_bandwidth

        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider::TaggedSymbol
            )
          )
        end
        attr_reader :cloud_provider

        sig do
          params(
            cloud_provider:
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider::OrSymbol
          ).void
        end
        attr_writer :cloud_provider

        # The region where your Virtual Private Cloud hosts are located. Should be
        # identical to how the cloud provider names region, i.e. us-east-1 for AWS but
        # Frankfurt for Azure
        sig { returns(T.nilable(String)) }
        attr_reader :cloud_provider_region

        sig { params(cloud_provider_region: String).void }
        attr_writer :cloud_provider_region

        sig do
          returns(
            T.nilable(
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::Location
            )
          )
        end
        attr_reader :location

        sig do
          params(
            location:
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::Location::OrHash
          ).void
        end
        attr_writer :location

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            available_bandwidth: T::Array[Float],
            cloud_provider:
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider::OrSymbol,
            cloud_provider_region: String,
            location:
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::Location::OrHash,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The available throughput in Megabits per Second (Mbps) for your Virtual Cross
          # Connect.
          available_bandwidth: nil,
          # The Virtual Private Cloud with which you would like to establish a cross
          # connect.
          cloud_provider: nil,
          # The region where your Virtual Private Cloud hosts are located. Should be
          # identical to how the cloud provider names region, i.e. us-east-1 for AWS but
          # Frankfurt for Azure
          cloud_provider_region: nil,
          location: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              available_bandwidth: T::Array[Float],
              cloud_provider:
                Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider::TaggedSymbol,
              cloud_provider_region: String,
              location:
                Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::Location,
              record_type: String
            }
          )
        end
        def to_hash
        end

        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        module CloudProvider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS =
            T.let(
              :aws,
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider::TaggedSymbol
            )
          AZURE =
            T.let(
              :azure,
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider::TaggedSymbol
            )
          GCE =
            T.let(
              :gce,
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Location < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::Location,
                Telnyx::Internal::AnyHash
              )
            end

          # Location code.
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          # Human readable name of location.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Point of presence of location.
          sig { returns(T.nilable(String)) }
          attr_reader :pop

          sig { params(pop: String).void }
          attr_writer :pop

          # Identifies the geographical region of location.
          sig { returns(T.nilable(String)) }
          attr_reader :region

          sig { params(region: String).void }
          attr_writer :region

          # Site of location.
          sig { returns(T.nilable(String)) }
          attr_reader :site

          sig { params(site: String).void }
          attr_writer :site

          sig do
            params(
              code: String,
              name: String,
              pop: String,
              region: String,
              site: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Location code.
            code: nil,
            # Human readable name of location.
            name: nil,
            # Point of presence of location.
            pop: nil,
            # Identifies the geographical region of location.
            region: nil,
            # Site of location.
            site: nil
          )
          end

          sig do
            override.returns(
              {
                code: String,
                name: String,
                pop: String,
                region: String,
                site: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
