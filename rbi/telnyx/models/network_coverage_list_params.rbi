# typed: strong

module Telnyx
  module Models
    class NetworkCoverageListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NetworkCoverageListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[location.region], filter[location.site], filter[location.pop],
      # filter[location.code]
      sig { returns(T.nilable(Telnyx::NetworkCoverageListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::NetworkCoverageListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated filters parameter (deepObject style). Originally:
      # filters[available_services][contains]
      sig { returns(T.nilable(Telnyx::NetworkCoverageListParams::Filters)) }
      attr_reader :filters

      sig do
        params(filters: Telnyx::NetworkCoverageListParams::Filters::OrHash).void
      end
      attr_writer :filters

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::NetworkCoverageListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::NetworkCoverageListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::NetworkCoverageListParams::Filter::OrHash,
          filters: Telnyx::NetworkCoverageListParams::Filters::OrHash,
          page: Telnyx::NetworkCoverageListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[location.region], filter[location.site], filter[location.pop],
        # filter[location.code]
        filter: nil,
        # Consolidated filters parameter (deepObject style). Originally:
        # filters[available_services][contains]
        filters: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::NetworkCoverageListParams::Filter,
            filters: Telnyx::NetworkCoverageListParams::Filters,
            page: Telnyx::NetworkCoverageListParams::Page,
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
              Telnyx::NetworkCoverageListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

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
        # filter[location.region], filter[location.site], filter[location.pop],
        # filter[location.code]
        sig do
          params(
            location_code: String,
            location_pop: String,
            location_region: String,
            location_site: String
          ).returns(T.attached_class)
        end
        def self.new(
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
              location_code: String,
              location_pop: String,
              location_region: String,
              location_site: String
            }
          )
        end
        def to_hash
        end
      end

      class Filters < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NetworkCoverageListParams::Filters,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by exact available service match
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::AvailableService::OrSymbol,
                Telnyx::NetworkCoverageListParams::Filters::AvailableServices::Contains
              )
            )
          )
        end
        attr_reader :available_services

        sig do
          params(
            available_services:
              T.any(
                Telnyx::AvailableService::OrSymbol,
                Telnyx::NetworkCoverageListParams::Filters::AvailableServices::Contains::OrHash
              )
          ).void
        end
        attr_writer :available_services

        # Consolidated filters parameter (deepObject style). Originally:
        # filters[available_services][contains]
        sig do
          params(
            available_services:
              T.any(
                Telnyx::AvailableService::OrSymbol,
                Telnyx::NetworkCoverageListParams::Filters::AvailableServices::Contains::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by exact available service match
          available_services: nil
        )
        end

        sig do
          override.returns(
            {
              available_services:
                T.any(
                  Telnyx::AvailableService::OrSymbol,
                  Telnyx::NetworkCoverageListParams::Filters::AvailableServices::Contains
                )
            }
          )
        end
        def to_hash
        end

        # Filter by exact available service match
        module AvailableServices
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AvailableService::TaggedSymbol,
                Telnyx::NetworkCoverageListParams::Filters::AvailableServices::Contains
              )
            end

          class Contains < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::NetworkCoverageListParams::Filters::AvailableServices::Contains,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter by available services containing the specified service
            sig { returns(T.nilable(Telnyx::AvailableService::OrSymbol)) }
            attr_reader :contains

            sig { params(contains: Telnyx::AvailableService::OrSymbol).void }
            attr_writer :contains

            # Available service filtering operations
            sig do
              params(contains: Telnyx::AvailableService::OrSymbol).returns(
                T.attached_class
              )
            end
            def self.new(
              # Filter by available services containing the specified service
              contains: nil
            )
            end

            sig do
              override.returns({ contains: Telnyx::AvailableService::OrSymbol })
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::NetworkCoverageListParams::Filters::AvailableServices::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NetworkCoverageListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
