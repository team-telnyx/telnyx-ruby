# -*- coding: utf-8 -*-
# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Telnyx
  class ApiResourceTest < Test::Unit::TestCase
    should "creating a new APIResource should not fetch over the network" do
      Telnyx::MessagingProfile.new("someid")
      assert_not_requested :get, %r{#{Telnyx.api_base}/.*}
    end

    should "creating a new APIResource from a hash should not fetch over the network" do
      Telnyx::MessagingProfile.construct_from(id: "foo", record_type: "messaging_profile")
      assert_not_requested :get, %r{#{Telnyx.api_base}/.*}
    end

    should "setting an attribute should not cause a network request" do
      m = Telnyx::MessagingProfile.new("123")
      m.name = "My New Messaging Profile"
      assert_not_requested :get, %r{#{Telnyx.api_base}/.*}
      assert_not_requested :post, %r{#{Telnyx.api_base}/.*}
    end

    should "accessing id should not issue a fetch" do
      m = Telnyx::MessagingProfile.new("123")
      m.id
      assert_not_requested :get, "#{Telnyx.api_base}/messaging_profiles/123"
    end

    should "not specifying api credentials should raise an exception" do
      Telnyx.api_key = nil
      assert_raises Telnyx::AuthenticationError do
        Telnyx::MessagingProfile.new("456").refresh
      end
    end

    should "using a nil api key should raise an exception" do
      assert_raises TypeError do
        Telnyx::MessagingProfile.list({}, nil)
      end
      assert_raises TypeError do
        Telnyx::MessagingProfile.list({}, api_key: nil)
      end
    end

    should "specifying api credentials containing whitespace should raise an exception" do
      Telnyx.api_key = "key "
      assert_raises Telnyx::AuthenticationError do
        Telnyx::MessagingProfile.new("123").refresh
      end
    end

    should "get resource URL" do
      m = Telnyx::MessagingProfile.new("123")
      assert_match "/messaging_profiles/123", m.resource_url
    end

    context "when specifying per-object credentials" do
      context "with no global API key set" do
        should "use the per-object credential when creating" do
          stub_post = stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
                      .with(headers: { "Authorization" => "Bearer super-secret" })
                      .to_return(body: JSON.generate(data: messaging_profile_fixture))

          Telnyx::MessagingProfile.create({ name: "New Messaging Profile" },
                                          "super-secret")
          assert_requested(stub_post)
        end
      end

      context "with a global API key set" do
        setup do
          Telnyx.api_key = "global"
        end

        teardown do
          Telnyx.api_key = nil
        end

        should "use the per-object credential when creating" do
          stub_post = stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
                      .with(headers: { "Authorization" => "Bearer super-secret" })
                      .to_return(body: JSON.generate(data: messaging_profile_fixture))

          Telnyx::MessagingProfile.create({ name: "New Messaging Profile" },
                                          "super-secret")
          assert_requested(stub_post)
        end
      end
    end

    context "with valid credentials" do
      should "urlencode values in GET params" do
        stub_get = stub_request(:get, "#{Telnyx.api_base}/v2/messaging_profiles")
                   .with(query: { page: { size: 10 } })
                   .to_return(body: JSON.generate(data: [messaging_profile_fixture]))
        messaging_profiles = Telnyx::MessagingProfile.list(page: { size: 10 }).data
        assert messaging_profiles.is_a? Array
        assert_requested(stub_get)
      end

      should "setting a nil value for a param should exclude that param from the request" do
        stub_get = stub_request(:get, "#{Telnyx.api_base}/v2/messaging_profiles")
                   .with(query: { page: { size: 5 }, sad: false })
                   .to_return(body: JSON.generate(data: [messaging_profile_fixture]))
        Telnyx::MessagingProfile.list(count: nil, page: { size: 5 }, sad: false)

        assert_requested(stub_get)

        Telnyx::MessagingProfile.create(name: nil, foo: "bar")

        assert_requested(:post, "#{Telnyx.api_base}/v2/messaging_profiles", body: { "foo" => "bar" })
      end

      should "requesting with a unicode ID should result in a request" do
        stub_request(:get, "#{Telnyx.api_base}/v2/messaging_profiles/%E2%98%83")
          .to_return(body: JSON.generate(make_resource_not_found_error), status: 404)
        mp = Telnyx::MessagingProfile.new("☃")
        assert_raises(Telnyx::ResourceNotFoundError) { mp.refresh }
      end

      should "requesting with no ID should result in an InvalidRequestError with no request" do
        mp = Telnyx::MessagingProfile.new
        assert_raises(Telnyx::InvalidRequestError) { mp.refresh }
      end

      should "making a GET request with parameters should have a query string and no body" do
        stub = stub_request(:get, "#{Telnyx.api_base}/v2/messaging_profiles")
               .with(query: { limit: 1 })
               .to_return(body: JSON.generate(data: [messaging_profile_fixture]))
        Telnyx::MessagingProfile.list(limit: 1)
        assert_requested(stub, body: "")
      end

      should "making a POST request with parameters should have a body and no query string" do
        Telnyx::MessagingProfile.create(name: "New Messaging Profile")
        assert_requested(:post, "#{Telnyx.api_base}/v2/messaging_profiles", body: { name: "New Messaging Profile" })
      end

      should "loading an object should issue a GET request" do
        mp = Telnyx::MessagingProfile.new("123")
        mp.refresh
        assert_requested(:get, "#{Telnyx.api_base}/v2/messaging_profiles/123")
      end

      should "using array accessors should be the same as the method interface" do
        mp = Telnyx::MessagingProfile.new("123")
        mp.refresh
        assert_equal mp.created_at, mp[:created_at]
        assert_equal mp.created_at, mp["created_at"]
        mp["created_at"] = 12_345
        assert_equal mp.created_at, 12_345
        assert_requested(:get, "#{Telnyx.api_base}/v2/messaging_profiles/123")
      end

      should "updating an object should issue a PATCH request with only the changed properties" do
        mp = Telnyx::MessagingProfile.construct_from(messaging_profile_fixture)
        mp.name = "new name"
        mp.save
        assert_requested(:patch, "#{Telnyx.api_base}/v2/messaging_profiles/123", body: { "name" => "new name" })
      end

      should "updating should merge in returned properties" do
        mp = Telnyx::MessagingProfile.new("123")
        mp.name = "new name"
        mp.save

        assert_requested(:patch, "#{Telnyx.api_base}/v2/messaging_profiles/123", body: { "name" => "new name" })
        assert mp.simplify_characters
      end

      should "updating should fail if api_key is overwritten with nil" do
        mp = Telnyx::MessagingProfile.new
        assert_raises TypeError do
          mp.save({}, api_key: nil)
        end
      end

      should "updating should use the supplied api_key" do
        stub_post = stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
                    .with(headers: { "Authorization" => "Bearer super-secret" })
                    .to_return(body: JSON.generate(data: messaging_profile_fixture))
        mp = Telnyx::MessagingProfile.new
        mp.save({ name: "Profile for Messages" }, api_key: "super-secret")

        assert_requested(stub_post)
        assert_equal "Profile for Messages", mp.name
      end

      should "deleting should send no props and result in an object that has no props other than `deleted`" do
        mp = Telnyx::MessagingProfile.construct_from(messaging_profile_fixture)
        mp.delete
        assert_requested(:delete, "#{Telnyx.api_base}/v2/messaging_profiles/123", body: "")
      end

      should "loading all of an APIResource should return an array of recursively instantiated objects" do
        messaging_profiles = Telnyx::MessagingProfile.list.data

        assert_requested(:get, "#{Telnyx.api_base}/v2/messaging_profiles")
        assert messaging_profiles.is_a? Array
        assert messaging_profiles[0].is_a? Telnyx::MessagingProfile
      end

      should "save nothing if nothing changes" do
        messaging_profile = Telnyx::MessagingProfile.construct_from(
          id: "123",
          meta: {
            key: "value",
          }
        )

        messaging_profile.save
        assert_requested(:patch, "#{Telnyx.api_base}/v2/messaging_profiles/123", body: {})
      end

      should "correctly handle array noops" do
        messaging_profile = Telnyx::MessagingProfile.construct_from(
          id: "myid",
          legal_entity: {
            additional_owners: [{ first_name: "Bob" }],
          },
          currencies_supported: %w[usd cad]
        )

        messaging_profile.save
        assert_requested(:patch, "#{Telnyx.api_base}/v2/messaging_profiles/myid", body: {})
      end

      should "correctly handle hash noops" do
        messaging_profile = Telnyx::MessagingProfile.construct_from(
          id: "myid",
          legal_entity: {
            address: { line1: "1 Two Three" },
          }
        )

        stub_post = stub_request(:patch, "#{Telnyx.api_base}/v2/messaging_profiles/myid")
                    .with(body: {})
                    .to_return(body: JSON.generate(data: { "id" => "myid" }))

        messaging_profile.save
        assert_requested(stub_post)
      end

      should "should create a new resource when an object without an id is saved" do
        messaging_profile = Telnyx::MessagingProfile.construct_from(id: nil, name: nil)

        messaging_profile.name = "my-messaging-profile"
        messaging_profile.save

        assert_requested(:post, "#{Telnyx.api_base}/v2/messaging_profiles", body: { name: "my-messaging-profile" })
      end

      should "set attributes as part of save" do
        messaging_profile = Telnyx::MessagingProfile.construct_from(id: nil,
                                                                    name: nil)

        stub_post = stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
                    .with(body: { name: "telnyx", meta: { key: "value" } })
                    .to_return(body: JSON.generate(data: { "id" => "123" }))

        messaging_profile.save(name: "telnyx", meta: { key: "value" })
        assert_requested(stub_post)
      end
    end

    @@fixtures = {}
    setup do
      if @@fixtures.empty?
        cache_fixture(:messaging_profile) do
          MessagingProfile.retrieve("123")
        end
      end
    end

    private

    def messaging_profile_fixture
      @@fixtures[:messaging_profile]
    end

    # Expects to retrieve a fixture from telnyx-mock (an API call should be
    # included in the block to yield to) and does very simple memoization.
    def cache_fixture(key)
      return @@fixtures[key] if @@fixtures.key?(key)

      obj = yield
      @@fixtures[key] = obj.instance_variable_get(:@values).freeze
      @@fixtures[key]
    end
  end
end
