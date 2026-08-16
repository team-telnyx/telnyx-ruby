# typed: strong

module Telnyx
  module Models
    module MeetingSessions
      class ArtifactCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessions::ArtifactCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Type of artifact to generate from the session.
        sig do
          returns(Telnyx::MeetingSessions::ArtifactCreateParams::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            id: String,
            type: Telnyx::MeetingSessions::ArtifactCreateParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Type of artifact to generate from the session.
          type:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              type:
                Telnyx::MeetingSessions::ArtifactCreateParams::Type::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Type of artifact to generate from the session.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::MeetingSessions::ArtifactCreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUMMARY =
            T.let(
              :summary,
              Telnyx::MeetingSessions::ArtifactCreateParams::Type::TaggedSymbol
            )
          ACTION_ITEMS =
            T.let(
              :action_items,
              Telnyx::MeetingSessions::ArtifactCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MeetingSessions::ArtifactCreateParams::Type::TaggedSymbol
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
