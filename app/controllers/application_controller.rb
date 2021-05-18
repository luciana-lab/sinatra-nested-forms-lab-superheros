require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'../views/super_hero'
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]

        @hero_name = []
        @hero_power = []
        @hero_biography = []

        @members = params[:team][:members]
        @members.each do |member|
            @hero_name << member[:name]
            @hero_power << member[:power]
            @hero_biography << member[:biography]
        end
        # @members = Member.all

        erb :'../views/team'
    end
end