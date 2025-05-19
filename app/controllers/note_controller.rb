class NoteController < ApplicationController
  def index
    userid = params[:userid]
    ticker = params[:ticker]

    note = Note.where(userid:, ticker:).first

    puts note
    render json: note.to_json
  end

  def create
    puts params
    Note.create!(userid: params[:userid], ticker: params[:ticker], note: params[:note])

    render json:  'ok'
  end
end
