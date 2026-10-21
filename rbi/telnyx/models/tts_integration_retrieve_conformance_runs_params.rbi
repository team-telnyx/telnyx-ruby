# typed: strong

module Telnyx
  module Models
    class TtsIntegrationRetrieveConformanceRunsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TtsIntegrationRetrieveConformanceRunsParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig do
        returns(
          T.nilable(Telnyx::TtsIntegrationRetrieveConformanceRunsParams::Page)
        )
      end
      attr_reader :page

      sig do
        params(
          page:
            Telnyx::TtsIntegrationRetrieveConformanceRunsParams::Page::OrHash
        ).void
      end
      attr_writer :page

      sig do
        params(
          id: String,
          page:
            Telnyx::TtsIntegrationRetrieveConformanceRunsParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            page: Telnyx::TtsIntegrationRetrieveConformanceRunsParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TtsIntegrationRetrieveConformanceRunsParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # Clamped to 1-100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          number: nil,
          # Clamped to 1-100.
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
