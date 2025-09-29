# typed: strong

module Telnyx
  module Models
    class NetworkCoverageListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkCoverageListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::NetworkCoverageListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::NetworkCoverageListResponse::Data::OrHash]
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
            T::Array[Telnyx::Models::NetworkCoverageListResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::NetworkCoverageListResponse::Data],
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
              Telnyx::Models::NetworkCoverageListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # List of interface types supported in this region.
        sig do
          returns(
            T.nilable(T::Array[Telnyx::Models::AvailableService::TaggedSymbol])
          )
        end
        attr_reader :available_services

        sig do
          params(
            available_services:
              T::Array[Telnyx::Models::AvailableService::OrSymbol]
          ).void
        end
        attr_writer :available_services

        sig do
          returns(
            T.nilable(
              Telnyx::Models::NetworkCoverageListResponse::Data::Location
            )
          )
        end
        attr_reader :location

        sig do
          params(
            location:
              Telnyx::Models::NetworkCoverageListResponse::Data::Location::OrHash
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
            available_services:
              T::Array[Telnyx::Models::AvailableService::OrSymbol],
            location:
              Telnyx::Models::NetworkCoverageListResponse::Data::Location::OrHash,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # List of interface types supported in this region.
          available_services: nil,
          location: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              available_services:
                T::Array[Telnyx::Models::AvailableService::TaggedSymbol],
              location:
                Telnyx::Models::NetworkCoverageListResponse::Data::Location,
              record_type: String
            }
          )
        end
        def to_hash
        end

        class Location < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::NetworkCoverageListResponse::Data::Location,
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
