# typed: strong

module Telnyx
  module Models
    class RecordingListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RecordingListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[conference_id], filter[created_at][gte], filter[created_at][lte],
      # filter[call_leg_id], filter[call_session_id], filter[from], filter[to],
      # filter[connection_id], filter[sip_call_id]
      sig { returns(T.nilable(Telnyx::RecordingListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::RecordingListParams::Filter::OrHash).void }
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::RecordingListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::RecordingListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::RecordingListParams::Filter::OrHash,
          page: Telnyx::RecordingListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[conference_id], filter[created_at][gte], filter[created_at][lte],
        # filter[call_leg_id], filter[call_session_id], filter[from], filter[to],
        # filter[connection_id], filter[sip_call_id]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RecordingListParams::Filter,
            page: Telnyx::RecordingListParams::Page,
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
              Telnyx::RecordingListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # If present, recordings will be filtered to those with a matching call_leg_id.
        sig { returns(T.nilable(String)) }
        attr_reader :call_leg_id

        sig { params(call_leg_id: String).void }
        attr_writer :call_leg_id

        # If present, recordings will be filtered to those with a matching
        # call_session_id.
        sig { returns(T.nilable(String)) }
        attr_reader :call_session_id

        sig { params(call_session_id: String).void }
        attr_writer :call_session_id

        # Returns only recordings associated with a given conference.
        sig { returns(T.nilable(String)) }
        attr_reader :conference_id

        sig { params(conference_id: String).void }
        attr_writer :conference_id

        # If present, recordings will be filtered to those with a matching `connection_id`
        # attribute (case-sensitive).
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        sig do
          returns(T.nilable(Telnyx::RecordingListParams::Filter::CreatedAt))
        end
        attr_reader :created_at

        sig do
          params(
            created_at: Telnyx::RecordingListParams::Filter::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # If present, recordings will be filtered to those with a matching `from`
        # attribute (case-sensitive).
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # If present, recordings will be filtered to those with a matching `sip_call_id`
        # attribute. Matching is case-sensitive
        sig { returns(T.nilable(String)) }
        attr_reader :sip_call_id

        sig { params(sip_call_id: String).void }
        attr_writer :sip_call_id

        # If present, recordings will be filtered to those with a matching `to` attribute
        # (case-sensitive).
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[conference_id], filter[created_at][gte], filter[created_at][lte],
        # filter[call_leg_id], filter[call_session_id], filter[from], filter[to],
        # filter[connection_id], filter[sip_call_id]
        sig do
          params(
            call_leg_id: String,
            call_session_id: String,
            conference_id: String,
            connection_id: String,
            created_at: Telnyx::RecordingListParams::Filter::CreatedAt::OrHash,
            from: String,
            sip_call_id: String,
            to: String
          ).returns(T.attached_class)
        end
        def self.new(
          # If present, recordings will be filtered to those with a matching call_leg_id.
          call_leg_id: nil,
          # If present, recordings will be filtered to those with a matching
          # call_session_id.
          call_session_id: nil,
          # Returns only recordings associated with a given conference.
          conference_id: nil,
          # If present, recordings will be filtered to those with a matching `connection_id`
          # attribute (case-sensitive).
          connection_id: nil,
          created_at: nil,
          # If present, recordings will be filtered to those with a matching `from`
          # attribute (case-sensitive).
          from: nil,
          # If present, recordings will be filtered to those with a matching `sip_call_id`
          # attribute. Matching is case-sensitive
          sip_call_id: nil,
          # If present, recordings will be filtered to those with a matching `to` attribute
          # (case-sensitive).
          to: nil
        )
        end

        sig do
          override.returns(
            {
              call_leg_id: String,
              call_session_id: String,
              conference_id: String,
              connection_id: String,
              created_at: Telnyx::RecordingListParams::Filter::CreatedAt,
              from: String,
              sip_call_id: String,
              to: String
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RecordingListParams::Filter::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Returns only recordings created later than or at given ISO 8601 datetime.
          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          # Returns only recordings created earlier than or at given ISO 8601 datetime.
          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          sig { params(gte: String, lte: String).returns(T.attached_class) }
          def self.new(
            # Returns only recordings created later than or at given ISO 8601 datetime.
            gte: nil,
            # Returns only recordings created earlier than or at given ISO 8601 datetime.
            lte: nil
          )
          end

          sig { override.returns({ gte: String, lte: String }) }
          def to_hash
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::RecordingListParams::Page, Telnyx::Internal::AnyHash)
          end

        # The page number to load.
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load.
          number: nil,
          # The size of the page.
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
