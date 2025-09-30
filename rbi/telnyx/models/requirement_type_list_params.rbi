# typed: strong

module Telnyx
  module Models
    class RequirementTypeListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RequirementTypeListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter for requirement types (deepObject style).
      # Originally: filter[name]
      sig { returns(T.nilable(Telnyx::RequirementTypeListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::RequirementTypeListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated sort parameter for requirement types (deepObject style).
      # Originally: sort[]
      sig do
        returns(
          T.nilable(T::Array[Telnyx::RequirementTypeListParams::Sort::OrSymbol])
        )
      end
      attr_reader :sort

      sig do
        params(
          sort: T::Array[Telnyx::RequirementTypeListParams::Sort::OrSymbol]
        ).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::RequirementTypeListParams::Filter::OrHash,
          sort: T::Array[Telnyx::RequirementTypeListParams::Sort::OrSymbol],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter for requirement types (deepObject style).
        # Originally: filter[name]
        filter: nil,
        # Consolidated sort parameter for requirement types (deepObject style).
        # Originally: sort[]
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RequirementTypeListParams::Filter,
            sort: T::Array[Telnyx::RequirementTypeListParams::Sort::OrSymbol],
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
              Telnyx::RequirementTypeListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::RequirementTypeListParams::Filter::Name))
        end
        attr_reader :name

        sig do
          params(
            name: Telnyx::RequirementTypeListParams::Filter::Name::OrHash
          ).void
        end
        attr_writer :name

        # Consolidated filter parameter for requirement types (deepObject style).
        # Originally: filter[name]
        sig do
          params(
            name: Telnyx::RequirementTypeListParams::Filter::Name::OrHash
          ).returns(T.attached_class)
        end
        def self.new(name: nil)
        end

        sig do
          override.returns(
            { name: Telnyx::RequirementTypeListParams::Filter::Name }
          )
        end
        def to_hash
        end

        class Name < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RequirementTypeListParams::Filter::Name,
                Telnyx::Internal::AnyHash
              )
            end

          # Filters requirement types to those whose name contains a certain string.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # Filters requirement types to those whose name contains a certain string.
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end
      end

      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::RequirementTypeListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME =
          T.let(:name, Telnyx::RequirementTypeListParams::Sort::TaggedSymbol)
        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::RequirementTypeListParams::Sort::TaggedSymbol
          )
        UPDATED_AT =
          T.let(
            :updated_at,
            Telnyx::RequirementTypeListParams::Sort::TaggedSymbol
          )
        NAME_DESC =
          T.let(:"-name", Telnyx::RequirementTypeListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::RequirementTypeListParams::Sort::TaggedSymbol
          )
        UPDATED_AT_DESC =
          T.let(
            :"-updated_at",
            Telnyx::RequirementTypeListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::RequirementTypeListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
