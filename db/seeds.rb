10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Tbh meditation deep v 3 wolf moon echo park synth. Godard put a bird on it organic pop-up XOXO, trust fund palo santo locavore mumblecore vinyl readymade kogi. Shaman sustainable letterpress, raclette VHS skateboard selfies cloud bread gluten-free fanny pack. Stumptown lumbersexual unicorn, trust fund seitan umami chia retro hashtag listicle food truck readymade pok pok. Migas keffiyeh ennui tote bag literally thundercats 3 wolf moon palo santo pickled skateboard salvia poke."
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

  9.times do |portfolio_item|
    Folio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "my great service",
      body: "Normcore yr single-origin coffee, distillery pour-over 90's celiac. Banjo bitters kinfolk locavore leggings hammock. Polaroid letterpress fam shabby chic godard biodiesel hexagon migas affogato heirloom DIY.",
      main_image: "https://placehold.it/600x400",
      thumb_image: "https://placehold.it/350x200"
      )
  end
  puts "9 portfolio items created"