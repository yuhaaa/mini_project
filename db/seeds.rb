
puts "Inserting category data"
[
    ["자유 게시판"],
    ["정보/후기 게시판"],
    ["질문/답변 게시판"],
    ["익명 게시판"],
    ["분실물 찾기"],
    ["중고 장터"],
    ["학교 공지"],
    ["강의 평가"]
].each do |x|
    Category.create(name:x[0])
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
