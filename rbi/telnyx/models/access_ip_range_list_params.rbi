# typed: strong

module Telnyx
  module Models
    class AccessIPRangeListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AccessIPRangeListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[cidr_block], filter[cidr_block][startswith],
      # filter[cidr_block][endswith], filter[cidr_block][contains], filter[created_at].
      # Supports complex bracket operations for dynamic filtering.
      sig { returns(T.nilable(Telnyx::AccessIPRangeListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::AccessIPRangeListParams::Filter::OrHash).void
      end
      attr_writer :filter

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
          filter: Telnyx::AccessIPRangeListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[cidr_block], filter[cidr_block][startswith],
        # filter[cidr_block][endswith], filter[cidr_block][contains], filter[created_at].
        # Supports complex bracket operations for dynamic filtering.
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::AccessIPRangeListParams::Filter,
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
              Telnyx::AccessIPRangeListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by exact CIDR block match
        sig do
          returns(
            T.nilable(
              T.any(
                String,
                Telnyx::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter
              )
            )
          )
        end
        attr_reader :cidr_block

        sig do
          params(
            cidr_block:
              T.any(
                String,
                Telnyx::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter::OrHash
              )
          ).void
        end
        attr_writer :cidr_block

        # Filter by exact creation date-time
        sig do
          returns(
            T.nilable(
              T.any(
                Time,
                Telnyx::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter
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
                Telnyx::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter::OrHash
              )
          ).void
        end
        attr_writer :created_at

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[cidr_block], filter[cidr_block][startswith],
        # filter[cidr_block][endswith], filter[cidr_block][contains], filter[created_at].
        # Supports complex bracket operations for dynamic filtering.
        sig do
          params(
            cidr_block:
              T.any(
                String,
                Telnyx::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter::OrHash
              ),
            created_at:
              T.any(
                Time,
                Telnyx::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by exact CIDR block match
          cidr_block: nil,
          # Filter by exact creation date-time
          created_at: nil
        )
        end

        sig do
          override.returns(
            {
              cidr_block:
                T.any(
                  String,
                  Telnyx::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter
                ),
              created_at:
                T.any(
                  Time,
                  Telnyx::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter
                )
            }
          )
        end
        def to_hash
        end

        # Filter by exact CIDR block match
        module CidrBlock
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Telnyx::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter
              )
            end

          class CidrBlockPatternFilter < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter CIDR blocks containing the specified string
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # Filter CIDR blocks ending with the specified string
            sig { returns(T.nilable(String)) }
            attr_reader :endswith

            sig { params(endswith: String).void }
            attr_writer :endswith

            # Filter CIDR blocks starting with the specified string
            sig { returns(T.nilable(String)) }
            attr_reader :startswith

            sig { params(startswith: String).void }
            attr_writer :startswith

            # CIDR block pattern matching operations
            sig do
              params(
                contains: String,
                endswith: String,
                startswith: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Filter CIDR blocks containing the specified string
              contains: nil,
              # Filter CIDR blocks ending with the specified string
              endswith: nil,
              # Filter CIDR blocks starting with the specified string
              startswith: nil
            )
            end

            sig do
              override.returns(
                { contains: String, endswith: String, startswith: String }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::AccessIPRangeListParams::Filter::CidrBlock::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Filter by exact creation date-time
        module CreatedAt
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Time,
                Telnyx::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter
              )
            end

          class DateRangeFilter < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter,
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
                Telnyx::AccessIPRangeListParams::Filter::CreatedAt::Variants
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
