# typed: strong

module Telnyx
  module Models
    class AccessIPAddressListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AccessIPAddressListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[ip_source],
      # filter[ip_address], filter[created_at]. Supports complex bracket operations for
      # dynamic filtering.
      sig { returns(T.nilable(Telnyx::AccessIPAddressListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::AccessIPAddressListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::AccessIPAddressListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::AccessIPAddressListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::AccessIPAddressListParams::Filter::OrHash,
          page: Telnyx::AccessIPAddressListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[ip_source],
        # filter[ip_address], filter[created_at]. Supports complex bracket operations for
        # dynamic filtering.
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::AccessIPAddressListParams::Filter,
            page: Telnyx::AccessIPAddressListParams::Page,
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
              Telnyx::AccessIPAddressListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by exact creation date-time
        sig do
          returns(
            T.nilable(
              T.any(
                Time,
                Telnyx::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter
              )
            )
          )
        end
        attr_reader :created_at

        sig do
          params(
            created_at:
              T.any(
                Time,
                Telnyx::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter::OrHash
              )
          ).void
        end
        attr_writer :created_at

        # Filter by IP address
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        # Filter by IP source
        sig { returns(T.nilable(String)) }
        attr_reader :ip_source

        sig { params(ip_source: String).void }
        attr_writer :ip_source

        # Consolidated filter parameter (deepObject style). Originally: filter[ip_source],
        # filter[ip_address], filter[created_at]. Supports complex bracket operations for
        # dynamic filtering.
        sig do
          params(
            created_at:
              T.any(
                Time,
                Telnyx::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter::OrHash
              ),
            ip_address: String,
            ip_source: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by exact creation date-time
          created_at: nil,
          # Filter by IP address
          ip_address: nil,
          # Filter by IP source
          ip_source: nil
        )
        end

        sig do
          override.returns(
            {
              created_at:
                T.any(
                  Time,
                  Telnyx::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter
                ),
              ip_address: String,
              ip_source: String
            }
          )
        end
        def to_hash
        end

        # Filter by exact creation date-time
        module CreatedAt
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Time,
                Telnyx::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter
              )
            end

          class DateRangeFilter < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter for creation date-time greater than
            sig { returns(T.nilable(Time)) }
            attr_reader :gt

            sig { params(gt: Time).void }
            attr_writer :gt

            # Filter for creation date-time greater than or equal to
            sig { returns(T.nilable(Time)) }
            attr_reader :gte

            sig { params(gte: Time).void }
            attr_writer :gte

            # Filter for creation date-time less than
            sig { returns(T.nilable(Time)) }
            attr_reader :lt

            sig { params(lt: Time).void }
            attr_writer :lt

            # Filter for creation date-time less than or equal to
            sig { returns(T.nilable(Time)) }
            attr_reader :lte

            sig { params(lte: Time).void }
            attr_writer :lte

            # Date range filtering operations
            sig do
              params(gt: Time, gte: Time, lt: Time, lte: Time).returns(
                T.attached_class
              )
            end
            def self.new(
              # Filter for creation date-time greater than
              gt: nil,
              # Filter for creation date-time greater than or equal to
              gte: nil,
              # Filter for creation date-time less than
              lt: nil,
              # Filter for creation date-time less than or equal to
              lte: nil
            )
            end

            sig do
              override.returns({ gt: Time, gte: Time, lt: Time, lte: Time })
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::AccessIPAddressListParams::Filter::CreatedAt::Variants
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
              Telnyx::AccessIPAddressListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(number: nil, size: nil)
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
