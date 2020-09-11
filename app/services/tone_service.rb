class ToneService
  def get_poem_tone(poem_text)
    url = "#{ENV['TONE-URL']}/v3/tone"

    tone_conn = Faraday.new(url: url) do |f|
      f.basic_auth("apikey", ENV['TONE-API-KEY'])
    end

    binding.pry
    tone_response = tone_conn.get("/v3/tone") do |f|

    end
  end
end
#
# "https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/b0326cb9-9a4f-4092-bc34-4daaba005b3b/v3/tone?version=2017-09-21&text=Team%2C%20I%20know%20that%20times%20are%20tough%21%20Product%20sales%20have%20been%20disappointing%20for%20the%20past%20three%20quarters.%20We%20have%20a%20competitive%20product%2C%20but%20we%20need%20to%20do%20a%20better%20job%20of%20selling%20it%21"
#
# ?version=2017-09-21&text=Team%2C%20I%20know%20that%20times%20are%20tough%21%20Product%20sales%20have%20been%20disappointing%20for%20the%20past%20three%20quarters.%20We%20have%20a%20competitive%20product%2C%20but%20we%20need%20to%20do%20a%20better%20job%20of%20selling%20it%21
