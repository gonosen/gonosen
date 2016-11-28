# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

interns = Intern.create([
 {  title: 'SunBridge Global Ventures Inc.',
    context: 'A global startup accelerator based in Tokyo, Osaka and Silicon Valley. Conducting a global pitch event "Innovation Weekend" and has invested in global startups such as Peatix, Material Wrld, WHILL, AnyRoad, midokura, Language Cloud, Ginzamarkets, etc.',
    start_time: Time.mktime(2016, 12, 24, 00, 00, 00),
    end_time: Time.mktime(2016, 12, 25, 00, 00, 00),
    location: "大阪府豊中市蛍池",
    owner: "大阪大学rails有志の会",

    },

 {  title: 'ヒューマンアカデミービジネススクール (MBA Programme at HABS)' ,
 	context: '本学は、一定以上の実務経験をもつ社会人を対象としたMBAプログラムを中心として、多くの社会人の皆様が、今以上に理論的、実践的にビジネスのセンスを磨き、海外との接点を有効に活用できるスキルを高める機会を提供します。受講生には、これまでの経験、知識にとどまらず、さらにそれらを深化させるために、能動的に知識を習得する姿勢、知識を実務に適用して検証するための高い問題意識、継続的な学習を支える目的意識を持ち、国際社会へ挑戦すべく自らを絶えず成長させていくことを期待します。',


 }
 ]) 
