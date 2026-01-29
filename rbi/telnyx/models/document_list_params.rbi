# typed: strong

module Telnyx
  module Models
    class DocumentListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DocumentListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter for documents (deepObject style). Originally:
      # filter[filename][contains], filter[customer_reference][eq],
      # filter[customer_reference][in][], filter[created_at][gt], filter[created_at][lt]
      sig { returns(T.nilable(Telnyx::DocumentListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::DocumentListParams::Filter::OrHash).void }
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::DocumentListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::DocumentListParams::Page::OrHash).void }
      attr_writer :page

      # Consolidated sort parameter for documents (deepObject style). Originally: sort[]
      sig do
        returns(T.nilable(T::Array[Telnyx::DocumentListParams::Sort::OrSymbol]))
      end
      attr_reader :sort

      sig do
        params(sort: T::Array[Telnyx::DocumentListParams::Sort::OrSymbol]).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::DocumentListParams::Filter::OrHash,
          page: Telnyx::DocumentListParams::Page::OrHash,
          sort: T::Array[Telnyx::DocumentListParams::Sort::OrSymbol],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter for documents (deepObject style). Originally:
        # filter[filename][contains], filter[customer_reference][eq],
        # filter[customer_reference][in][], filter[created_at][gt], filter[created_at][lt]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Consolidated sort parameter for documents (deepObject style). Originally: sort[]
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::DocumentListParams::Filter,
            page: Telnyx::DocumentListParams::Page,
            sort: T::Array[Telnyx::DocumentListParams::Sort::OrSymbol],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::DocumentListParams::Filter, Telnyx::Internal::AnyHash)
          end

        sig do
          returns(T.nilable(Telnyx::DocumentListParams::Filter::CreatedAt))
        end
        attr_reader :created_at

        sig do
          params(
            created_at: Telnyx::DocumentListParams::Filter::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        sig do
          returns(
            T.nilable(Telnyx::DocumentListParams::Filter::CustomerReference)
          )
        end
        attr_reader :customer_reference

        sig do
          params(
            customer_reference:
              Telnyx::DocumentListParams::Filter::CustomerReference::OrHash
          ).void
        end
        attr_writer :customer_reference

        sig { returns(T.nilable(Telnyx::DocumentListParams::Filter::Filename)) }
        attr_reader :filename

        sig do
          params(
            filename: Telnyx::DocumentListParams::Filter::Filename::OrHash
          ).void
        end
        attr_writer :filename

        # Consolidated filter parameter for documents (deepObject style). Originally:
        # filter[filename][contains], filter[customer_reference][eq],
        # filter[customer_reference][in][], filter[created_at][gt], filter[created_at][lt]
        sig do
          params(
            created_at: Telnyx::DocumentListParams::Filter::CreatedAt::OrHash,
            customer_reference:
              Telnyx::DocumentListParams::Filter::CustomerReference::OrHash,
            filename: Telnyx::DocumentListParams::Filter::Filename::OrHash
          ).returns(T.attached_class)
        end
        def self.new(created_at: nil, customer_reference: nil, filename: nil)
        end

        sig do
          override.returns(
            {
              created_at: Telnyx::DocumentListParams::Filter::CreatedAt,
              customer_reference:
                Telnyx::DocumentListParams::Filter::CustomerReference,
              filename: Telnyx::DocumentListParams::Filter::Filename
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::DocumentListParams::Filter::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by created at greater than provided value.
          sig { returns(T.nilable(Time)) }
          attr_reader :gt

          sig { params(gt: Time).void }
          attr_writer :gt

          # Filter by created at less than provided value.
          sig { returns(T.nilable(Time)) }
          attr_reader :lt

          sig { params(lt: Time).void }
          attr_writer :lt

          sig { params(gt: Time, lt: Time).returns(T.attached_class) }
          def self.new(
            # Filter by created at greater than provided value.
            gt: nil,
            # Filter by created at less than provided value.
            lt: nil
          )
          end

          sig { override.returns({ gt: Time, lt: Time }) }
          def to_hash
          end
        end

        class CustomerReference < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::DocumentListParams::Filter::CustomerReference,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter documents by a customer reference.
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          # Filter documents by a list of customer references.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :in_

          sig { params(in_: T::Array[String]).void }
          attr_writer :in_

          sig do
            params(eq: String, in_: T::Array[String]).returns(T.attached_class)
          end
          def self.new(
            # Filter documents by a customer reference.
            eq: nil,
            # Filter documents by a list of customer references.
            in_: nil
          )
          end

          sig { override.returns({ eq: String, in_: T::Array[String] }) }
          def to_hash
          end
        end

        class Filename < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::DocumentListParams::Filter::Filename,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by string matching part of filename.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # Filter by string matching part of filename.
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::DocumentListParams::Page, Telnyx::Internal::AnyHash)
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

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
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

      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DocumentListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FILENAME =
          T.let(:filename, Telnyx::DocumentListParams::Sort::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Telnyx::DocumentListParams::Sort::TaggedSymbol)
        UPDATED_AT =
          T.let(:updated_at, Telnyx::DocumentListParams::Sort::TaggedSymbol)
        FILENAME_DESC =
          T.let(:"-filename", Telnyx::DocumentListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(:"-created_at", Telnyx::DocumentListParams::Sort::TaggedSymbol)
        UPDATED_AT_DESC =
          T.let(:"-updated_at", Telnyx::DocumentListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::DocumentListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
