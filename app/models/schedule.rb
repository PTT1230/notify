class Schedule
  def text
    date = Date.today

    case date.strftime('%a')
      when "Mon"
          "今日は月曜日、月曜日の番組の通知！" + metal_text
      when "Tue"
          "今日は火曜日、火曜日の番組の通知！"
      when "Wed"
          "今日は水曜日、水曜日の番組の通知！"
      when "Thu"
          "今日は木曜日、木曜日の番組の通知！"
      when "Fri"
          "今日は金曜日、金曜日の番組の通知！"
      when "Sat"
          "今日は土曜日、土曜日の番組の通知！"
      else
          "今日は日曜日、日曜日の番組の通知！"
      end
  end
end