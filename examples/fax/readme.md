# Usage

For convince use a utility like Ngrok or Hookbin to expose the demo server to the internet. For example with Ngrok run the following: `ngrok http 9090` and copy the exposed url, you will need this to properly complete the setup below.

Before you can use the demo application you will need to login to your telnyx portal and configure the following:

1. You will need to setup an inbound and an outbound Fax Application for this demo.
2. Create two phone numbers:
    - One for inbound faxes, this will need to be associated with a fax application.
    - One for outbound faxes. 
3. You will also need to create a SIP Connection for your outbound faxes, be sure to configure it to use your webhook url.

Finally you will need to fill out `config.yaml` with the IDs listed, as well as with the outbound and inbound phone numbers.

```
bundle
bundle exec ruby main.rb --api-key=<YOUR API KEY>
```