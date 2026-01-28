# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectsCoverageListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VirtualCrossConnectsCoverageListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[cloud_provider], filter[cloud_provider_region], filter[location.region],
      # filter[location.site], filter[location.pop], filter[location.code]
      sig do
        returns(
          T.nilable(Telnyx::VirtualCrossConnectsCoverageListParams::Filter)
        )
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::VirtualCrossConnectsCoverageListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated filters parameter (deepObject style). Originally:
      # filters[available_bandwidth][contains]
      sig do
        returns(
          T.nilable(Telnyx::VirtualCrossConnectsCoverageListParams::Filters)
        )
      end
      attr_reader :filters

      sig do
        params(
          filters:
            Telnyx::VirtualCrossConnectsCoverageListParams::Filters::OrHash
        ).void
      end
      attr_writer :filters

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter:
            Telnyx::VirtualCrossConnectsCoverageListParams::Filter::OrHash,
          filters:
            Telnyx::VirtualCrossConnectsCoverageListParams::Filters::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[cloud_provider], filter[cloud_provider_region], filter[location.region],
        # filter[location.site], filter[location.pop], filter[location.code]
        filter: nil,
        # Consolidated filters parameter (deepObject style). Originally:
        # filters[available_bandwidth][contains]
        filters: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::VirtualCrossConnectsCoverageListParams::Filter,
            filters: Telnyx::VirtualCrossConnectsCoverageListParams::Filters,
            page_number: Integer,
            page_size: Integer,
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
              Telnyx::VirtualCrossConnectsCoverageListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # The Virtual Private Cloud provider.
        sig do
          returns(
            T.nilable(
              Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider::OrSymbol
            )
          )
        end
        attr_reader :cloud_provider

        sig do
          params(
            cloud_provider:
              Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider::OrSymbol
          ).void
        end
        attr_writer :cloud_provider

        # The region of specific cloud provider.
        sig { returns(T.nilable(String)) }
        attr_reader :cloud_provider_region

        sig { params(cloud_provider_region: String).void }
        attr_writer :cloud_provider_region

        # The code of associated location to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :location_code

        sig { params(location_code: String).void }
        attr_writer :location_code

        # The POP of associated location to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :location_pop

        sig { params(location_pop: String).void }
        attr_writer :location_pop

        # The region of associated location to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :location_region

        sig { params(location_region: String).void }
        attr_writer :location_region

        # The site of associated location to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :location_site

        sig { params(location_site: String).void }
        attr_writer :location_site

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[cloud_provider], filter[cloud_provider_region], filter[location.region],
        # filter[location.site], filter[location.pop], filter[location.code]
        sig do
          params(
            cloud_provider:
              Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider::OrSymbol,
            cloud_provider_region: String,
            location_code: String,
            location_pop: String,
            location_region: String,
            location_site: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The Virtual Private Cloud provider.
          cloud_provider: nil,
          # The region of specific cloud provider.
          cloud_provider_region: nil,
          # The code of associated location to filter on.
          location_code: nil,
          # The POP of associated location to filter on.
          location_pop: nil,
          # The region of associated location to filter on.
          location_region: nil,
          # The site of associated location to filter on.
          location_site: nil
        )
        end

        sig do
          override.returns(
            {
              cloud_provider:
                Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider::OrSymbol,
              cloud_provider_region: String,
              location_code: String,
              location_pop: String,
              location_region: String,
              location_site: String
            }
          )
        end
        def to_hash
        end

        # The Virtual Private Cloud provider.
        module CloudProvider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS =
            T.let(
              :aws,
              Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider::TaggedSymbol
            )
          AZURE =
            T.let(
              :azure,
              Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider::TaggedSymbol
            )
          GCE =
            T.let(
              :gce,
              Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Filters < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::VirtualCrossConnectsCoverageListParams::Filters,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by exact available bandwidth match
        sig do
          returns(
            T.nilable(
              T.any(
                Integer,
                Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains
              )
            )
          )
        end
        attr_reader :available_bandwidth

        sig do
          params(
            available_bandwidth:
              T.any(
                Integer,
                Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains::OrHash
              )
          ).void
        end
        attr_writer :available_bandwidth

        # Consolidated filters parameter (deepObject style). Originally:
        # filters[available_bandwidth][contains]
        sig do
          params(
            available_bandwidth:
              T.any(
                Integer,
                Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by exact available bandwidth match
          available_bandwidth: nil
        )
        end

        sig do
          override.returns(
            {
              available_bandwidth:
                T.any(
                  Integer,
                  Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains
                )
            }
          )
        end
        def to_hash
        end

        # Filter by exact available bandwidth match
        module AvailableBandwidth
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Integer,
                Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains
              )
            end

          class Contains < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter by available bandwidth containing the specified value
            sig { returns(T.nilable(Integer)) }
            attr_reader :contains

            sig { params(contains: Integer).void }
            attr_writer :contains

            # Available bandwidth filtering operations
            sig { params(contains: Integer).returns(T.attached_class) }
            def self.new(
              # Filter by available bandwidth containing the specified value
              contains: nil
            )
            end

            sig { override.returns({ contains: Integer }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Variants
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
