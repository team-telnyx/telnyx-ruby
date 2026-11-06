# typed: strong

module Telnyx
  module Models
    module CalendarConnections
      class MeetingListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CalendarConnections::MeetingListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Window start; defaults to now.
        sig { returns(T.nilable(Time)) }
        attr_reader :from

        sig { params(from: Time).void }
        attr_writer :from

        # Window end; defaults to seven days from now.
        sig { returns(T.nilable(Time)) }
        attr_reader :to

        sig { params(to: Time).void }
        attr_writer :to

        sig do
          params(
            id: String,
            from: Time,
            to: Time,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Window start; defaults to now.
          from: nil,
          # Window end; defaults to seven days from now.
          to: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              from: Time,
              to: Time,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
