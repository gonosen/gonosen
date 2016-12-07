# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.find_or_create_by(id: 1) do |admin|
  admin.email = 'admin@example.com'
  admin.password = 'hogehoge'
end

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
    start_time: Time.mktime(2016, 12, 14, 00, 00, 00),
    end_time: Time.mktime(2016, 12, 15, 00, 00, 00),

 },

 {  title: '【大阪・西中島】類キャリア塾presents　秋の1DAYインターンシップ',
    context: 'これから社会に出る、みなさんへ 

いよいよ、就職活動が近づいてきました。
みなさんは、どんな想いで就活に向き合っていますか？

就活は、企業選びではありません。
内定は、ゴールではありません。
社会に出るにあたって、
「これからの生き方」を考えることが必要です。

だけど・・
「自己分析しろ」と言われるけど、よくわからない。
やりたいことが見つからない。
そんな悩みをお持ちの方もおられるでしょう。

はたまた、
社会に出るのが楽しみで仕方ない！
みんながどんな志をもっているのか、知りたい！
追求する仲間を求める方もおられるでしょう。

秋の「類キャリア塾」では、
みなさんと一緒に未来を考えるインターンを行います。

考えなければ、周りに流された「なんとなく」の人生。
考えれば、どんな未来も作ってゆくことができます！

さあ一緒に、「人生の計画」を作ってみませんか？',
    start_time: Time.mktime(2016, 11, 24, 00, 00, 00),
    end_time: Time.mktime(2016, 11, 25, 00, 00, 00),
    location: "大阪府豊中市蛍池",
    owner: "大阪大学rails有志の会",

    },

 {  title: '【本町】業界Labo 株式会社オークワ' ,
 	context: '皆さんは小売業界の仕事について、正しく知っていますか？
ただ物を売る世界だと思ったら大間違い。
実は、多種多様な仕事、働き方があるだけでなく、
社会人として大切な、他の仕事全てに通じる要素が詰まった業界です。

今回は、東証一部上場『株式会社オークワ』の人事担当者をお招きし、
ここでしか聞けない特別講演を行って頂きます。

－膨大な売上をどのように管理・分析し、次に繋げているのか？
－近くのライバル店に負けることなく、
繁盛店となる為にどのような工夫を行っているのか？
－お客様に満足して頂く為に、どのような経営・人材育成を行っているのか？

「スーパー」という身近な業界であるだけに、
話を聴いた際の具体的なイメージが湧きやすく、
学び・吸収できるものが多いというのも、今回のセミナーのメリット。

更に、業界研究の講演に加え、
人事担当者の目線でのフィードバックが貰えるグループワークも実践！

講義と実践で、知っているようで知らない「小売業界」について深く知る。
今後の就職活動、そして社会に出てからの社会人人生にフル活用できるセミナーです。',
    start_time: Time.mktime(2016, 12, 4, 00, 00, 00),
    end_time: Time.mktime(2016, 12, 6, 00, 00, 00),

 }


 ]) 
