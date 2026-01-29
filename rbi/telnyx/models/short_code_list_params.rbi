# typed: strong

module Telnyx
  module Models
    class ShortCodeListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ShortCodeListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[messaging_profile_id]
      sig { returns(T.nilable(Telnyx::ShortCodeListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::ShortCodeListParams::Filter::OrHash).void }
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::ShortCodeListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::ShortCodeListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::ShortCodeListParams::Filter::OrHash,
          page: Telnyx::ShortCodeListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[messaging_profile_id]
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
            filter: Telnyx::ShortCodeListParams::Filter,
            page: Telnyx::ShortCodeListParams::Page,
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
              Telnyx::ShortCodeListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by Messaging Profile ID. Use the string `null` for phone numbers without
        # assigned profiles. A synonym for the `/messaging_profiles/{id}/short_codes`
        # endpoint when querying about an extant profile.
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_id

        sig { params(messaging_profile_id: String).void }
        attr_writer :messaging_profile_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[messaging_profile_id]
        sig { params(messaging_profile_id: String).returns(T.attached_class) }
        def self.new(
          # Filter by Messaging Profile ID. Use the string `null` for phone numbers without
          # assigned profiles. A synonym for the `/messaging_profiles/{id}/short_codes`
          # endpoint when querying about an extant profile.
          messaging_profile_id: nil
        )
        end

        sig { override.returns({ messaging_profile_id: String }) }
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::ShortCodeListParams::Page, Telnyx::Internal::AnyHash)
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
