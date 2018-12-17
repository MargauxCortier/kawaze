# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(title:'Maladies cardio-vasculaires', image: 'icons-heart-1.png')
Category.create(title:'Maladies mentales', image: 'icons-brain-1.png')
Category.create(title:'Maladies infectieuses', image: 'icons-virus-1.png')
Category.create(title:'Maladies respiratoires', image: 'icons-lungs-1.png')
Category.create(title:'Liste de cancers', image: 'icons-kidney-1.png') # à revoir
Category.create(title:'Maladies dermatologiques', image: 'icons-skin-1.png')
Category.create(title:'Maladies oculaires', image: 'icons-eye-1.png')
Category.create(title:'Maladies rares', image: 'icons-clover-1.png')

Forum.create(title:'Cardiomyopathie', category_id: 1)
Forum.create(title:'Infarctus du myocarde', category_id: 1)
Forum.create(title:'Péricardite', category_id: 1)

Forum.create(title:'Anorexie', category_id: 2)
Forum.create(title:'Chorée de Huntington', category_id: 2)
Forum.create(title:'Encoprésie', category_id: 2)

Post.create(title: 'Cancer, tu me lasses', content: "Désolé pour les erreurs. Téléphone à 4h20 du matin. Mon fiancé se remet d'une opération au cerveau et ma vie est devenue un enfer. Il ne veut pas dire. J'ai l'air si égoïste. Je peux seulement imaginer à quel point il est horrible de faire face à la confusion et à l’anxiété. Je sais qu’il est déprimé. Je me suis assuré qu'il se rend à ses rendez-vous chez le médecin, qu'il prenne ses médicaments, etc. Il n’a pas 31 ans. Ce n’est jamais ce que j’imaginais ressembler à nos vies. Ce soir il s'est réveillé confus et a pensé qu'il était chez ma grand-mère, où nous étions auparavant dans la journée. C’est tellement déchirant. Il se sent constamment dégoûtant, fatigué, irrité et contrarié. Comment pourrait-il ne pas être? Je fais de mon mieux pour ne pas l'attraper, et cela peut être si difficile, ce qui me donne l'impression d'être un monstre. Le cancer est nul. Merci d'avoir écouté mes pensées matinales. Parfois, je me sens tellement seul.", forum_id: 1, user_id: 3)
Post.create(title: 'Prendre soin de papa', content: "Salut à tous. Mon père a récemment reçu un diagnostic de cancer du pancréas au stade 4 et commence bientôt une chimiothérapie. Pouvez-vous s'il vous plaît me donner des conseils sur ce que je peux lui apporter, ce qui l'aidera à rendre sa vie quotidienne un peu plus facile / confortable. Peut-être que certaines choses auxquelles les gens ne pensent généralement pas au début. Noël approche à grands pas et ce sera l'occasion idéale pour qu'il se sente soigné. Merci à tous et priez pour tout le monde dans cette communauté. Joyeux Noël et joyeuses fêtes.", forum_id: 1, user_id: 5)

Comment.create(content: 'Merci pour ces informations', post_id: 1, user_id: 2)
Comment.create(content: 'Cela m a beaucoup servi', post_id: 1, user_id: 4)
Comment.create(content: 'Merci pour ces informations', post_id: 2, user_id: 2)