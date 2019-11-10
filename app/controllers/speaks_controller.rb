class SpeaksController < ApplicationController

def index
  @speaks = Speak.all
end

def new
  @speak = Speak.new
end

def create
end

def edit
end

def update
end

def destroy
end

def confirm
end


end
