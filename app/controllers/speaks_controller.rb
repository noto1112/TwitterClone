class SpeaksController < ApplicationController
  before_action :set_speak, only: [:edit, :update, :destroy]

  def index
    @speaks = Speak.all
  end

  def new
    @speak = Speak.new
  end

  def create
    @speak = Speak.new(speak_params)
    if params[:back]
      render :new

    else
      if @speak.save
        redirect_to speaks_path, notice: "投稿しました！"
      else
        render 'new'
      end
    end
  end

  def edit
  end

  def update
    if @speak.update(speak_params)
      redirect_to speaks_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @speak.destroy
    redirect_to speaks_path, notice: "削除しました！"
  end


  def confirm
    @speak = Speak.new(speak_params)
    render :new if @speak.invalid?
  end

  private

  def speak_params
    params.require(:speak).permit(:content)
  end

  def set_speak
    @speak = Speak.find(params[:id])
  end

end
