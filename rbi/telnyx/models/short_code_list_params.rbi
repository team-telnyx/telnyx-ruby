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
          filter: Telnyx::ShortCodeListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[messaging_profile_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::ShortCodeListParams::Filter,
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
    end
  end
end
