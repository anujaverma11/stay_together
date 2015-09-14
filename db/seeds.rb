def create_user(name, email)
  User.create!(first_name:"#{name}", email:"#{email}@example.com", password: 'password')
end

User.delete_all
father = create_user('M. N. Verma', 'mnverma')
father.children <<  (c1 = create_user('V. Verma', 'vverma'))
father.children <<  (c2 = create_user('S. Verma', 'sverma'))
father.children <<  (c3 = create_user('D. Verma', 'dverma'))
father.children <<  (c4 = create_user('S. Saxena', 'ssaxena'))
father.children <<  (c5 = create_user('R. Verma', 'rverma'))
father.children <<  (c6 = create_user('A. Saxena', 'asaxena'))
c1.children << (child1 = create_user('child1', 'child1'))
c1.children << (child2 = create_user('child2', 'child2'))
c1.children << (child3 = create_user('child3', 'child3'))
c1.children << (child4 = create_user('child4', 'child4'))
c1.children << (child5 = create_user('child5', 'child5'))
c2.children << (c2child1 = create_user('c2child1', 'c2child1'))
c2.children << (c2child2 = create_user('c2child2', 'c2child2'))
c2.children << (c2child3 = create_user('c2child3', 'c2child3'))
c3.children << (vishal = create_user('vishal', 'vishal'))
c3.children << (manika = create_user('manika', 'manika'))
c4.children << (c4child1 = create_user('c4child1', 'c4child1'))
c4.children << (c4child2 = create_user('c4child2', 'c4child2'))
c4.children << (c4child3 = create_user('c4child3', 'c4child3'))
c5.children << (shilpi = create_user('Shilpi', 'Shilpi'))
c5.children << create_user('Anuja', 'Anuja')
c5.children << create_user('Krati', 'Krati')
shilpi.children << create_user('Aanya', 'Aanya')
shilpi.children << create_user('Aanya1', 'Aanya1')
create_user('Jitendra', 'Jitendra')
user = User.find_by(id: 2)
user.update(spouse_id: 6)
user = User.find_by(id: 6)
user.update(spouse_id: 2)
c6.children << (swati = create_user('swati', 'swati'))
c6.children << (amit = create_user('amit', 'amit'))

Picture.create(name: "name1", link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description1")
Picture.create(name: "name2", link: "http://www.aperfectworld.org/clipart/people/head04.gif",description: "description2")
Picture.create(name: "name3", link: "http://www.aperfectworld.org/clipart/people/head05.gif",description: "description3")
Picture.create(name: "name4", link: "http://www.aperfectworld.org/clipart/people/head06.gif",description: "description4")
Picture.create(name: "name5", link: "http://www.aperfectworld.org/clipart/people/head07.gif",description: "description5")
Picture.create(name: "name6", link: "http://www.aperfectworld.org/clipart/people/head01.gif",description: "description6")
Picture.create(name: "name7", link: "http://www.aperfectworld.org/clipart/people/head02.gif",description: "description7")
Picture.create(name: "name8", link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description8")
Picture.create(name: "name9", link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description9")
Picture.create(name: "name10", link: "http://www.aperfectworld.org/clipart/people/head07.gif",description: "description10")
Picture.create(name: "name11" , link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description11")
Picture.create(name: "name12" , link: "http://www.aperfectworld.org/clipart/people/head04.gif",description: "description12")
Picture.create(name: "name13" , link: "http://www.aperfectworld.org/clipart/people/head05.gif",description: "description13")
Picture.create(name: "name14" , link: "http://www.aperfectworld.org/clipart/people/head06.gif",description: "description14")
Picture.create(name: "name15" , link: "http://www.aperfectworld.org/clipart/people/head07.gif",description: "description15")
Picture.create(name: "name16" , link: "http://www.aperfectworld.org/clipart/people/head01.gif",description: "description16")
Picture.create(name: "name17" , link: "http://www.aperfectworld.org/clipart/people/head02.gif",description: "description17")
Picture.create(name: "name18" , link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description18")
Picture.create(name: "name19" , link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description19")
Picture.create(name: "name21" , link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description21")
Picture.create(name: "name21" , link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description21")
Picture.create(name: "name22" , link: "http://www.aperfectworld.org/clipart/people/head04.gif",description: "description22")
Picture.create(name: "name23" , link: "http://www.aperfectworld.org/clipart/people/head05.gif",description: "description23")
Picture.create(name: "name24" , link: "http://www.aperfectworld.org/clipart/people/head06.gif",description: "description24")
Picture.create(name: "name25" , link: "http://www.aperfectworld.org/clipart/people/head07.gif",description: "description25")
Picture.create(name: "name26" , link: "http://www.aperfectworld.org/clipart/people/head01.gif",description: "description26")
Picture.create(name: "name27" , link: "http://www.aperfectworld.org/clipart/people/head02.gif",description: "description27")
Picture.create(name: "name28" , link: "http://www.aperfectworld.org/clipart/people/head03.gif",description: "description28")

28.times do |n|
  User.find(n+1).pictures << Picture.find(n+1)
end
