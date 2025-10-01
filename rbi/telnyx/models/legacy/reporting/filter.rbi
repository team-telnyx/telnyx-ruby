# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        class Filter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Legacy::Reporting::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Billing group UUID to filter by
          sig { returns(T.nilable(String)) }
          attr_reader :billing_group

          sig { params(billing_group: String).void }
          attr_writer :billing_group

          # Called line identification (destination number)
          sig { returns(T.nilable(String)) }
          attr_reader :cld

          sig { params(cld: String).void }
          attr_writer :cld

          # Filter type for CLD matching
          sig do
            returns(
              T.nilable(Telnyx::Legacy::Reporting::Filter::CldFilter::OrSymbol)
            )
          end
          attr_reader :cld_filter

          sig do
            params(
              cld_filter: Telnyx::Legacy::Reporting::Filter::CldFilter::OrSymbol
            ).void
          end
          attr_writer :cld_filter

          # Calling line identification (caller ID)
          sig { returns(T.nilable(String)) }
          attr_reader :cli

          sig { params(cli: String).void }
          attr_writer :cli

          # Filter type for CLI matching
          sig do
            returns(
              T.nilable(Telnyx::Legacy::Reporting::Filter::CliFilter::OrSymbol)
            )
          end
          attr_reader :cli_filter

          sig do
            params(
              cli_filter: Telnyx::Legacy::Reporting::Filter::CliFilter::OrSymbol
            ).void
          end
          attr_writer :cli_filter

          # Logical operator for combining filters
          sig do
            returns(
              T.nilable(Telnyx::Legacy::Reporting::Filter::FilterType::OrSymbol)
            )
          end
          attr_reader :filter_type

          sig do
            params(
              filter_type:
                Telnyx::Legacy::Reporting::Filter::FilterType::OrSymbol
            ).void
          end
          attr_writer :filter_type

          # Tag name to filter by
          sig { returns(T.nilable(String)) }
          attr_reader :tags_list

          sig { params(tags_list: String).void }
          attr_writer :tags_list

          # Query filter criteria. Note: The first filter object must specify filter_type as
          # 'and'. You cannot follow an 'or' with another 'and'.
          sig do
            params(
              billing_group: String,
              cld: String,
              cld_filter:
                Telnyx::Legacy::Reporting::Filter::CldFilter::OrSymbol,
              cli: String,
              cli_filter:
                Telnyx::Legacy::Reporting::Filter::CliFilter::OrSymbol,
              filter_type:
                Telnyx::Legacy::Reporting::Filter::FilterType::OrSymbol,
              tags_list: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Billing group UUID to filter by
            billing_group: nil,
            # Called line identification (destination number)
            cld: nil,
            # Filter type for CLD matching
            cld_filter: nil,
            # Calling line identification (caller ID)
            cli: nil,
            # Filter type for CLI matching
            cli_filter: nil,
            # Logical operator for combining filters
            filter_type: nil,
            # Tag name to filter by
            tags_list: nil
          )
          end

          sig do
            override.returns(
              {
                billing_group: String,
                cld: String,
                cld_filter:
                  Telnyx::Legacy::Reporting::Filter::CldFilter::OrSymbol,
                cli: String,
                cli_filter:
                  Telnyx::Legacy::Reporting::Filter::CliFilter::OrSymbol,
                filter_type:
                  Telnyx::Legacy::Reporting::Filter::FilterType::OrSymbol,
                tags_list: String
              }
            )
          end
          def to_hash
          end

          # Filter type for CLD matching
          module CldFilter
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::Legacy::Reporting::Filter::CldFilter)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTAINS =
              T.let(
                :contains,
                Telnyx::Legacy::Reporting::Filter::CldFilter::TaggedSymbol
              )
            STARTS_WITH =
              T.let(
                :starts_with,
                Telnyx::Legacy::Reporting::Filter::CldFilter::TaggedSymbol
              )
            ENDS_WITH =
              T.let(
                :ends_with,
                Telnyx::Legacy::Reporting::Filter::CldFilter::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Legacy::Reporting::Filter::CldFilter::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter type for CLI matching
          module CliFilter
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::Legacy::Reporting::Filter::CliFilter)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTAINS =
              T.let(
                :contains,
                Telnyx::Legacy::Reporting::Filter::CliFilter::TaggedSymbol
              )
            STARTS_WITH =
              T.let(
                :starts_with,
                Telnyx::Legacy::Reporting::Filter::CliFilter::TaggedSymbol
              )
            ENDS_WITH =
              T.let(
                :ends_with,
                Telnyx::Legacy::Reporting::Filter::CliFilter::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Legacy::Reporting::Filter::CliFilter::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Logical operator for combining filters
          module FilterType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::Legacy::Reporting::Filter::FilterType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AND =
              T.let(
                :and,
                Telnyx::Legacy::Reporting::Filter::FilterType::TaggedSymbol
              )
            OR =
              T.let(
                :or,
                Telnyx::Legacy::Reporting::Filter::FilterType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Legacy::Reporting::Filter::FilterType::TaggedSymbol
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
