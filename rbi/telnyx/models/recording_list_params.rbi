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

      # Filter recordings by various attributes.
      sig { returns(T.nilable(Telnyx::RecordingListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::RecordingListParams::Filter::OrHash).void }
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
          filter: Telnyx::RecordingListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter recordings by various attributes.
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RecordingListParams::Filter,
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
              Telnyx::RecordingListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # If present, recordings will be filtered to those with a matching
        # `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

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

        # If present, recordings will be filtered to those with a matching
        # `conference_region`.
        sig { returns(T.nilable(String)) }
        attr_reader :conference_region

        sig { params(conference_region: String).void }
        attr_writer :conference_region

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

        sig { returns(T.nilable(Telnyx::RecordingListParams::Filter::EndTime)) }
        attr_reader :end_time

        sig do
          params(
            end_time: Telnyx::RecordingListParams::Filter::EndTime::OrHash
          ).void
        end
        attr_writer :end_time

        # If present, recordings will be filtered to those with a matching `from`
        # attribute (case-sensitive).
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # If present, recordings will be filtered to those with a matching `sip_call_id`
        # attribute. Matching is case-sensitive.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_call_id

        sig { params(sip_call_id: String).void }
        attr_writer :sip_call_id

        sig do
          returns(T.nilable(Telnyx::RecordingListParams::Filter::StartTime))
        end
        attr_reader :start_time

        sig do
          params(
            start_time: Telnyx::RecordingListParams::Filter::StartTime::OrHash
          ).void
        end
        attr_writer :start_time

        # If present, recordings will be filtered to those with a matching `to` attribute
        # (case-sensitive).
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        # Filter recordings by various attributes.
        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            conference_id: String,
            conference_region: String,
            connection_id: String,
            created_at: Telnyx::RecordingListParams::Filter::CreatedAt::OrHash,
            end_time: Telnyx::RecordingListParams::Filter::EndTime::OrHash,
            from: String,
            sip_call_id: String,
            start_time: Telnyx::RecordingListParams::Filter::StartTime::OrHash,
            to: String
          ).returns(T.attached_class)
        end
        def self.new(
          # If present, recordings will be filtered to those with a matching
          # `call_control_id`.
          call_control_id: nil,
          # If present, recordings will be filtered to those with a matching call_leg_id.
          call_leg_id: nil,
          # If present, recordings will be filtered to those with a matching
          # call_session_id.
          call_session_id: nil,
          # Returns only recordings associated with a given conference.
          conference_id: nil,
          # If present, recordings will be filtered to those with a matching
          # `conference_region`.
          conference_region: nil,
          # If present, recordings will be filtered to those with a matching `connection_id`
          # attribute (case-sensitive).
          connection_id: nil,
          created_at: nil,
          end_time: nil,
          # If present, recordings will be filtered to those with a matching `from`
          # attribute (case-sensitive).
          from: nil,
          # If present, recordings will be filtered to those with a matching `sip_call_id`
          # attribute. Matching is case-sensitive.
          sip_call_id: nil,
          start_time: nil,
          # If present, recordings will be filtered to those with a matching `to` attribute
          # (case-sensitive).
          to: nil
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              conference_id: String,
              conference_region: String,
              connection_id: String,
              created_at: Telnyx::RecordingListParams::Filter::CreatedAt,
              end_time: Telnyx::RecordingListParams::Filter::EndTime,
              from: String,
              sip_call_id: String,
              start_time: Telnyx::RecordingListParams::Filter::StartTime,
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

        class EndTime < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RecordingListParams::Filter::EndTime,
                Telnyx::Internal::AnyHash
              )
            end

          # Returns only recordings with an end time later than or equal to the given ISO
          # 8601 datetime.
          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          # Returns only recordings with an end time earlier than or equal to the given ISO
          # 8601 datetime.
          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          sig { params(gte: String, lte: String).returns(T.attached_class) }
          def self.new(
            # Returns only recordings with an end time later than or equal to the given ISO
            # 8601 datetime.
            gte: nil,
            # Returns only recordings with an end time earlier than or equal to the given ISO
            # 8601 datetime.
            lte: nil
          )
          end

          sig { override.returns({ gte: String, lte: String }) }
          def to_hash
          end
        end

        class StartTime < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RecordingListParams::Filter::StartTime,
                Telnyx::Internal::AnyHash
              )
            end

          # Returns only recordings with a start time later than or equal to the given ISO
          # 8601 datetime.
          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          # Returns only recordings with a start time earlier than or equal to the given ISO
          # 8601 datetime.
          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          sig { params(gte: String, lte: String).returns(T.attached_class) }
          def self.new(
            # Returns only recordings with a start time later than or equal to the given ISO
            # 8601 datetime.
            gte: nil,
            # Returns only recordings with a start time earlier than or equal to the given ISO
            # 8601 datetime.
            lte: nil
          )
          end

          sig { override.returns({ gte: String, lte: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
