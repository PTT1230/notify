namespace :push_line do 
  desc "LINEBOT:今日の番組の通知" 
  task push_line_message_schedule: :environment do
    schedule_day = Schedule.new
      message = {
          type: 'text',
          text: schedule_day.text
      }
      client = Line::Bot::Client.new { |config|
          config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
          config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
      }
      User.all.each do |user|
          client.push_message(user.uid, message)
      end
  end
end