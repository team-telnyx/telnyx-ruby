# typed: strong

module Telnyx
  module Models
    class TtsIntegrationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TtsIntegrationListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::TtsIntegrationListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::TtsIntegrationListParams::Page::OrHash).void }
      attr_writer :page

      # Filter by status.
      sig { returns(T.nilable(Telnyx::CommunityTtsEngineStatus::OrSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::CommunityTtsEngineStatus::OrSymbol).void }
      attr_writer :status

      # Filter by visibility.
      sig { returns(T.nilable(Telnyx::CommunityTtsEngineVisibility::OrSymbol)) }
      attr_reader :visibility

      sig do
        params(visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol).void
      end
      attr_writer :visibility

      sig do
        params(
          page: Telnyx::TtsIntegrationListParams::Page::OrHash,
          status: Telnyx::CommunityTtsEngineStatus::OrSymbol,
          visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Filter by status.
        status: nil,
        # Filter by visibility.
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page: Telnyx::TtsIntegrationListParams::Page,
            status: Telnyx::CommunityTtsEngineStatus::OrSymbol,
            visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
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
              Telnyx::TtsIntegrationListParams::Page,
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
