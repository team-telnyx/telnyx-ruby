# typed: strong

module Telnyx
  module Models
    class MessagingOptoutListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MessagingOptoutListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated created_at parameter (deepObject style). Originally:
      # created_at[gte], created_at[lte]
      sig { returns(T.nilable(Telnyx::MessagingOptoutListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(
          created_at: Telnyx::MessagingOptoutListParams::CreatedAt::OrHash
        ).void
      end
      attr_writer :created_at

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[messaging_profile_id], filter[from]
      sig { returns(T.nilable(Telnyx::MessagingOptoutListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::MessagingOptoutListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::MessagingOptoutListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::MessagingOptoutListParams::Page::OrHash).void }
      attr_writer :page

      # If receiving address (+E.164 formatted phone number) should be redacted
      sig { returns(T.nilable(String)) }
      attr_reader :redaction_enabled

      sig { params(redaction_enabled: String).void }
      attr_writer :redaction_enabled

      sig do
        params(
          created_at: Telnyx::MessagingOptoutListParams::CreatedAt::OrHash,
          filter: Telnyx::MessagingOptoutListParams::Filter::OrHash,
          page: Telnyx::MessagingOptoutListParams::Page::OrHash,
          redaction_enabled: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated created_at parameter (deepObject style). Originally:
        # created_at[gte], created_at[lte]
        created_at: nil,
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[messaging_profile_id], filter[from]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # If receiving address (+E.164 formatted phone number) should be redacted
        redaction_enabled: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at: Telnyx::MessagingOptoutListParams::CreatedAt,
            filter: Telnyx::MessagingOptoutListParams::Filter,
            page: Telnyx::MessagingOptoutListParams::Page,
            redaction_enabled: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CreatedAt < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingOptoutListParams::CreatedAt,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter opt-outs created after this date (ISO-8601 format)
        sig { returns(T.nilable(Time)) }
        attr_reader :gte

        sig { params(gte: Time).void }
        attr_writer :gte

        # Filter opt-outs created before this date (ISO-8601 format)
        sig { returns(T.nilable(Time)) }
        attr_reader :lte

        sig { params(lte: Time).void }
        attr_writer :lte

        # Consolidated created_at parameter (deepObject style). Originally:
        # created_at[gte], created_at[lte]
        sig { params(gte: Time, lte: Time).returns(T.attached_class) }
        def self.new(
          # Filter opt-outs created after this date (ISO-8601 format)
          gte: nil,
          # Filter opt-outs created before this date (ISO-8601 format)
          lte: nil
        )
        end

        sig { override.returns({ gte: Time, lte: Time }) }
        def to_hash
        end
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingOptoutListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # The sending address (+E.164 formatted phone number, alphanumeric sender ID, or
        # short code) to retrieve opt-outs for
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # The ID of the messaging profile to retrieve opt-outs for
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_id

        sig { params(messaging_profile_id: String).void }
        attr_writer :messaging_profile_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[messaging_profile_id], filter[from]
        sig do
          params(from: String, messaging_profile_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The sending address (+E.164 formatted phone number, alphanumeric sender ID, or
          # short code) to retrieve opt-outs for
          from: nil,
          # The ID of the messaging profile to retrieve opt-outs for
          messaging_profile_id: nil
        )
        end

        sig { override.returns({ from: String, messaging_profile_id: String }) }
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingOptoutListParams::Page,
              Telnyx::Internal::AnyHash
            )
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
