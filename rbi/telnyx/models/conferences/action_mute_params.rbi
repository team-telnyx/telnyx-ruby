# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionMuteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionMuteParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Array of unique identifiers and tokens for controlling the call. When empty all
        # participants will be muted.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_control_ids

        sig { params(call_control_ids: T::Array[String]).void }
        attr_writer :call_control_ids

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        sig do
          returns(T.nilable(Telnyx::Conferences::ConferenceRegion::OrSymbol))
        end
        attr_reader :region

        sig do
          params(region: Telnyx::Conferences::ConferenceRegion::OrSymbol).void
        end
        attr_writer :region

        sig do
          params(
            id: String,
            call_control_ids: T::Array[String],
            region: Telnyx::Conferences::ConferenceRegion::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Array of unique identifiers and tokens for controlling the call. When empty all
          # participants will be muted.
          call_control_ids: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              call_control_ids: T::Array[String],
              region: Telnyx::Conferences::ConferenceRegion::OrSymbol,
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
