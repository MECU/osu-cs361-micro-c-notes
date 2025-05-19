class Note < ApplicationRecord
  # attr :userid, :ticker, :note

  def to_json
    {
      userid: userid,
      ticker: ticker,
      note: note
    }.to_json
  end
end
