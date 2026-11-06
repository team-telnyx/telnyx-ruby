# typed: strong

module Telnyx
  module Models
    module CalendarConnections
      class CalendarMeeting < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CalendarConnections::CalendarMeeting,
              Telnyx::Internal::AnyHash
            )
          end

        # Tracked calendar meeting ID.
        sig { returns(String) }
        attr_accessor :id

        # Calendar attendees; identity fields are cleared after the retention window.
        sig do
          returns(
            T::Array[Telnyx::CalendarConnections::CalendarMeeting::Attendee]
          )
        end
        attr_accessor :attendees

        # Effective policy decision, not proof that the bot has joined.
        sig { returns(T::Boolean) }
        attr_accessor :bot_will_join

        # Explicit override; null follows the connection policy.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :bot_will_join_override

        # Scheduling decision.
        sig do
          returns(
            Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
          )
        end
        attr_accessor :decision

        # Event end time.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_time

        # Whether the connected calendar user is not the organizer.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_external_organizer

        sig do
          returns(
            T.nilable(Telnyx::CalendarConnections::CalendarMeeting::Organizer)
          )
        end
        attr_reader :organizer

        sig do
          params(
            organizer:
              T.nilable(
                Telnyx::CalendarConnections::CalendarMeeting::Organizer::OrHash
              )
          ).void
        end
        attr_writer :organizer

        # Detected meeting platform.
        sig do
          returns(
            Telnyx::CalendarConnections::CalendarMeeting::Platform::TaggedSymbol
          )
        end
        attr_accessor :platform

        # Linked meeting session ID, or null until one exists.
        sig { returns(T.nilable(String)) }
        attr_accessor :session_id

        # Event start time.
        sig { returns(Time) }
        attr_accessor :start_time

        sig do
          params(
            id: String,
            attendees:
              T::Array[
                Telnyx::CalendarConnections::CalendarMeeting::Attendee::OrHash
              ],
            bot_will_join: T::Boolean,
            bot_will_join_override: T.nilable(T::Boolean),
            decision:
              Telnyx::CalendarConnections::CalendarMeeting::Decision::OrSymbol,
            end_time: T.nilable(Time),
            is_external_organizer: T.nilable(T::Boolean),
            organizer:
              T.nilable(
                Telnyx::CalendarConnections::CalendarMeeting::Organizer::OrHash
              ),
            platform:
              Telnyx::CalendarConnections::CalendarMeeting::Platform::OrSymbol,
            session_id: T.nilable(String),
            start_time: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Tracked calendar meeting ID.
          id:,
          # Calendar attendees; identity fields are cleared after the retention window.
          attendees:,
          # Effective policy decision, not proof that the bot has joined.
          bot_will_join:,
          # Explicit override; null follows the connection policy.
          bot_will_join_override:,
          # Scheduling decision.
          decision:,
          # Event end time.
          end_time:,
          # Whether the connected calendar user is not the organizer.
          is_external_organizer:,
          organizer:,
          # Detected meeting platform.
          platform:,
          # Linked meeting session ID, or null until one exists.
          session_id:,
          # Event start time.
          start_time:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              attendees:
                T::Array[
                  Telnyx::CalendarConnections::CalendarMeeting::Attendee
                ],
              bot_will_join: T::Boolean,
              bot_will_join_override: T.nilable(T::Boolean),
              decision:
                Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol,
              end_time: T.nilable(Time),
              is_external_organizer: T.nilable(T::Boolean),
              organizer:
                T.nilable(
                  Telnyx::CalendarConnections::CalendarMeeting::Organizer
                ),
              platform:
                Telnyx::CalendarConnections::CalendarMeeting::Platform::TaggedSymbol,
              session_id: T.nilable(String),
              start_time: Time
            }
          )
        end
        def to_hash
        end

        class Attendee < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CalendarConnections::CalendarMeeting::Attendee,
                Telnyx::Internal::AnyHash
              )
            end

          # Display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name

          # Email address.
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # Whether attendance is optional.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :optional

          # Calendar RSVP status.
          sig { returns(T.nilable(String)) }
          attr_accessor :response_status

          # Whether this is the connected calendar user.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :self_

          sig do
            params(
              display_name: T.nilable(String),
              email: T.nilable(String),
              optional: T.nilable(T::Boolean),
              response_status: T.nilable(String),
              self_: T.nilable(T::Boolean)
            ).returns(T.attached_class)
          end
          def self.new(
            # Display name.
            display_name:,
            # Email address.
            email:,
            # Whether attendance is optional.
            optional:,
            # Calendar RSVP status.
            response_status:,
            # Whether this is the connected calendar user.
            self_:
          )
          end

          sig do
            override.returns(
              {
                display_name: T.nilable(String),
                email: T.nilable(String),
                optional: T.nilable(T::Boolean),
                response_status: T.nilable(String),
                self_: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end
        end

        # Scheduling decision.
        module Decision
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CalendarConnections::CalendarMeeting::Decision
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
            )
          SKIPPED_POLICY =
            T.let(
              :skipped_policy,
              Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
            )
          SKIPPED_NO_URL =
            T.let(
              :skipped_no_url,
              Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
            )
          SKIPPED_DUPLICATE =
            T.let(
              :skipped_duplicate,
              Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
            )
          SKIPPED_UNSUPPORTED =
            T.let(
              :skipped_unsupported,
              Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CalendarConnections::CalendarMeeting::Decision::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Organizer < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CalendarConnections::CalendarMeeting::Organizer,
                Telnyx::Internal::AnyHash
              )
            end

          # Display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name

          # Email address.
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # Whether this is the connected calendar user.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :self_

          sig do
            params(
              display_name: T.nilable(String),
              email: T.nilable(String),
              self_: T.nilable(T::Boolean)
            ).returns(T.attached_class)
          end
          def self.new(
            # Display name.
            display_name:,
            # Email address.
            email:,
            # Whether this is the connected calendar user.
            self_:
          )
          end

          sig do
            override.returns(
              {
                display_name: T.nilable(String),
                email: T.nilable(String),
                self_: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end
        end

        # Detected meeting platform.
        module Platform
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CalendarConnections::CalendarMeeting::Platform
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ZOOM =
            T.let(
              :zoom,
              Telnyx::CalendarConnections::CalendarMeeting::Platform::TaggedSymbol
            )
          GOOGLE_MEET =
            T.let(
              :google_meet,
              Telnyx::CalendarConnections::CalendarMeeting::Platform::TaggedSymbol
            )
          TEAMS =
            T.let(
              :teams,
              Telnyx::CalendarConnections::CalendarMeeting::Platform::TaggedSymbol
            )
          WEBEX =
            T.let(
              :webex,
              Telnyx::CalendarConnections::CalendarMeeting::Platform::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              Telnyx::CalendarConnections::CalendarMeeting::Platform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CalendarConnections::CalendarMeeting::Platform::TaggedSymbol
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
