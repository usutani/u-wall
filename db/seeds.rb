# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

WebClip.delete_all

WebClip.create([
  {:title => 'ツール工房 覚書', :url => 'http://studio.tgl.jp/blog/', 
  :quote => 'ツール工房メンバーによる 技術、デザイン、ビジネスの覚え書き', 
  :note => ''}, 
  {:title => 'Git Reference', :url => 'http://gitref.org/', 
  :quote => 'The Git Reference site was put together by the GitHub team.', 
  :note => '典型的な作業で用いるコマンドがまとめられています。'}, 
  {:title => 'github', :url => 'https://github.com/', 
  :quote => 'GitHub is the best way to collaborate with others.', 
  :note => ''}, 
  {:title => '123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.', :url => 'https://test1.com/', 
  :quote => '123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.', 
  :note => '123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.'}, 
  {:title => '123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 ', :url => 'https://test2.com/', 
  :quote => '123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 ', 
  :note => '123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 '}, 
  {:title => 'Pivotal Tracker', :url => 'http://www.pivotaltracker.com/', 
  :quote => 'Collaborative, lightweight project management tool, brought to you by the experts in agile software development.', 
  :note => 'シンプルな、ストーリーベースのプロジェクト計画づくりのためのツールです。'}])
