require 'httparty'

class BoxContentsController < ApplicationController

# read data from http://tuskermarvel.com/boxes.json and store them in database
  def setup

    @contents = Content.all.map { |c| [c.id, c.item] }.to_h

    response = HTTParty.get("http://tuskermarvel.com/boxes.json")
    data = JSON.parse(response.body)

    data.each do |element|
        element['contents'].each do |item|
          cid = @contents.key(item)

          if cid.nil?
            # insert into content table
            new_content = Content.create!(item: item)
            BoxContent.create(code: element['code'], content_id: new_content.id )
          else
            BoxContent.create(code: element['code'], content_id: @contents.key(item) )
          end
      end
    end

    flash[:success]= "Boxes data successfully added"
    redirect_to root_path

  end

end
