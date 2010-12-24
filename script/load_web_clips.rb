WebClip.transaction do
  (1..100).each do |i|
    WebClip.create(
      :title => "タイトル #{i}", 
      :url => "http://web-#{i}/", 
      :quote => "引用 #{i}", 
      :note => "備考 #{i}")
  end
end
