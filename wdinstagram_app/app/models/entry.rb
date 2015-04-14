class Entry < ActiveRecord::Base
validates :author, :photo_url, :captions, :presence => true
end