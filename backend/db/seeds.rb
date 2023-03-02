puts "🌱 Seeding spices..."

# Seed your database here
Book.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(username: "BookLover143")
user2 = User.create(username: "inJaneAustenWeTrust")
user3 = User.create(username: "iLoveBooks2")
user4 = User.create(username: "shakeSpearEnthusiast")
user5 = User.create(username: "ToBeOrNotToBe438")

puts "creating books..."
book1 = Book.create(title: "Brave New World", author:"Aldous Huxley", genre: "Dystopia", description:"Largely set in a futuristic World State, inhabited by genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical conditioning that are combined to make a dystopian society which is challenged by only a single individual: the story's protagonist.")
book2 = Book.create(title: "Harry Potter And The Philosopher Stone", author:"J.K Rowling", genre: "Fantasy", description:"Harry Potter thinks he is an ordinary boy - until he is rescued by an owl, taken to Hogwarts School of Witchcraft and Wizardry, learns to play Quidditch and does battle in a deadly duel. The Reason ... HARRY POTTER IS A WIZARD!")
book3 = Book.create(title: "The Odyssey", author:"Homer", genre: "Poetry", description:"Sing to me of the man, Muse, the man of twists and turns driven time and again off course, once he had plundered the hallowed heights of Troy.")
book4 = Book.create(title: "12TH Of Never", author:"James Patterson", genre: "Thriller", description:"Lindsay doesn't have much time to stop a terrifying future from unfolding. But all the crimes in the world seem like nothing when Lindsay is suddenly faced with the possibility of the most devastating loss of her life.")
book5 = Book.create(title: "Me Before You", author:"Jojo Moyes", genre: "Romance", description:"Louisa Clark is an ordinary girl living an exceedingly ordinary life—steady boyfriend, close family—who has barely been farther afield than their tiny village.")
book6 = Book.create(title: "1984", author:"George Orwell", genre: "Dystopia", description:" Nineteen Eighty-Four takes place thirty-five years hence, it is in every sense timely. The scene is London, where there has been no new housing since 1950 and where the city-wide slums are called Victory Mansions.")
book7 = Book.create(title: "Hamlet", author:"Shakespear", genre: "play, poetry", description:"Among actors, the role of Hamlet, Prince of Denmark, is considered the jewel in the crown of a triumphant theatrical career. Now Kenneth Branagh plays the leading role and co-directs a brillant ensemble performance.")
book8 = Book.create(title: "The Song Of Achellies", author:"Madeline Miller", genre: "Fantasy", description:"Achilles, the best of all the Greeks, son of the cruel sea goddess Thetis and the legendary king Peleus, is strong, swift, and beautiful, irresistible to all who meet him. Patroclus is an awkward young prince, exiled from his homeland after an act of shocking violence.")
book9 = Book.create(title: "Norweigen Wood", author:"Haruki Murakami", genre: "Romance", description:"Toru, a quiet and preternaturally serious young college student in Tokyo, is devoted to Naoko, a beautiful and introspective young woman, but their mutual passion is marked by the tragic death of their best friend years before. Toru begins to adapt to campus life and the loneliness and isolation he faces there, but Naoko finds the pressures and responsibilities of life unbearable.")
book10 = Book.create(title: "A Little Life", author:"Hanya Yanagihari", genre: "Literal Fiction", description:"When four classmates from a small Massachusetts college move to New York to make their way, they're broke, adrift, and buoyed only by their friendship and ambition. There is kind, handsome Willem, an aspiring actor; JB, a quick-witted, sometimes cruel Brooklyn-born painter seeking entry to the art world; Malcolm, a frustrated architect at a prominent firm; and withdrawn, brilliant, enigmatic Jude, who serves as their center of gravity.")
book11 = Book.create(title: "The Secret History", author:"Donna Tartt", genre: "Dark Academia", description:"Under the influence of their charismatic classics professor, a group of clever, eccentric misfits at an elite New England college discover a way of thinking and living that is a world away from the humdrum existence of their contemporaries. But when they go beyond the boundaries of normal morality they slip gradually from obsession to corruption and betrayal, and at last—inexorably—into evil.")

puts "creating reviews..."
review1 = Review.create(user_id: 1, book_id: 3, review: "Amazing work of literature")
review2 = Review.create(user_id: 4, book_id: 7, review: "I cannot get enough of Shakespear's brilliant work")
review3 = Review.create(user_id: 3, book_id: 5, review: "What a lovely Love story. I was very hooked")
review4 = Review.create(user_id: 2, book_id: 2, review: "I can never get enough of this book")
review5 = Review.create(user_id: 5, book_id: 10, review: "I cried more than ten times reading this")
review6 = Review.create(user_id: 4, book_id: 8, review: "This was beautifully written. Its a 10/10 for me")



puts "✅ Done seeding!"
