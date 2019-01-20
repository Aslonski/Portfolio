3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end
puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Tbh meditation deep v 3 wolf moon echo park synth. Godard put a bird on it organic pop-up XOXO, trust fund palo santo locavore mumblecore vinyl readymade kogi. Shaman sustainable letterpress, raclette VHS skateboard selfies cloud bread",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
  end

  puts "5 skills created"

  8.times do |portfolio_item|
    Folio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "Normcore yr single-origin coffee, distillery pour-over 90's celiac. Banjo bitters kinfolk locavore leggings hammock. Polaroid letterpress fam shabby chic godard biodiesel hexagon migas affogato heirloom DIY.",
      main_image: "https://placehold.it/600x400",
      thumb_image: "https://placehold.it/350x200"
      )
  end

  1.times do |portfolio_item|
    Folio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Angular",
      body: "Normcore yr single-origin coffee, distillery pour-over 90's celiac. Banjo bitters kinfolk locavore leggings hammock. Polaroid letterpress fam shabby chic godard biodiesel hexagon migas affogato heirloom DIY.",
      main_image: "https://placehold.it/600x400",
      thumb_image: "https://placehold.it/350x200"
      )
  end
  puts "9 portfolio items created"