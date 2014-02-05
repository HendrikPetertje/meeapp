# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pages = Page.create([
{ title: 'Home', content: '<p><strong>Wat doen we?</strong><br>
MEE ondersteunt mensen met een beperking.&nbsp;U kunt bij MEE terecht met uw vragen over opvoeding &amp; ontwikkeling, leren &amp; werken, samenleven &amp; wonen en regelgeving &amp; geldzaken.&nbsp;U wilt zo zelfstandig en onafhankelijk mogelijk meedoen in de samenleving. En zelf de regie houden over uw leven. Wij kennen de mogelijkheden en helpen u hier graag bij. Een indicatie of verwijsbrief is niet nodig. Onze ondersteuning is gratis. U vindt ons door het hele land.&nbsp;Bekijk hier een filmpje waarin mensen met een beperking laten zien wat meedoen voor ze betekent.</p>' },
{ title: 'Contact', content: 'Dit is de inhoud van deze pagina' },
{ title: 'FAQ', content: 'Dit is de inhoud van deze pagina' },
{ title: 'Voorwaarden', content: 'Dit is de inhoud van deze pagina' }
])
