require 'test_helper'

class WebClipTest < ActiveSupport::TestCase
  fixtures :web_clips
  
  test "webclip attributes must not be empty" do
    web_clip = WebClip.new
    assert web_clip.invalid?
    assert web_clip.errors[:title].any?
    assert web_clip.errors[:url].any?
  end
  
  test "webclip is not valid without a unique url" do
    web_clip = WebClip.new(:title => web_clips(:tool_studio).title,
                           :url   => web_clips(:tool_studio).url, 
                           :quote => "note", 
                           :note  => "quote")
    
    assert !web_clip.save
    assert_equal "has already been taken", web_clip.errors[:url].join('; ')
  end
end
