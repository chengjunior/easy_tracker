# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Rails.env.development?
	project1 = Project.create({ name: 'Lorem ipsum dolor', description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'})
	project2 = Project.create({ name: 'Sed diam', description: 'Sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'})
	project3 = Project.create({ name: 'Aliquam', description: 'Laoreet dolore magna aliquam erat volutpat.'})

	issue1 = Issue.create({ project: project1, title: 'Eodem modo typi', description: 'Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.' })
	issue2 = Issue.create({ project: project1, title: 'Mirum est notare quam littera gothica', description: 'Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima.' })

	card1 = Card.create({ issue: issue1, name: 'Nam liber tempor', description: 'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', estimated_time: 8, status: Card::TODO })
	card2 = Card.create({ issue: issue1, name: 'Typi non habent', description: 'Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. ', estimated_time: 4, status: Card::TODO })
	card3 = Card.create({ issue: issue1, name: 'Investigationes demonstraverunt', description: 'Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', estimated_time: 6, status: Card::TODO })
	card4 = Card.create({ issue: issue1, name: 'Claritas est etiam', description: 'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.', estimated_time: 5, status: Card::DOING })
	card5 = Card.create({ issue: issue2, name: 'Mirum est notare quam littera gothica', description: 'Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima.', estimated_time: 10, status: Card::TODO })
	card6 = Card.create({ issue: issue2, name: 'Eodem modo typi', description: 'Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', estimated_time: 2, status: Card::DONE })

	sprint1 = Sprint.create({ project: project1, cards: [card1, card2, card3, card4, card5, card6], name: 'Sprint 1' })
end