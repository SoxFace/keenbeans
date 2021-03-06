User.destroy_all
Group.destroy_all

#create users
User.create(name: 'Liv',
            email: 'test_email+sonya@gmail.com',
            about: "Hi, I'm Liv! I like movies",
            twitter: '',
            linkedin: '',
            facebook: '',
            github: '',
            site: '',
            address: '2000')
User.create(name: 'Sonya',
            email: 'test_email+sonya@gmail.com',
            about: "Hi, I'm Sonya! I like movies",
            twitter: '',
            linkedin: '')
User.create(name: 'Olivia',
            email: 'test_email+olivia@gmail.com',
            about: "Hi, I'm Olivia!",
            twitter: '',
            linkedin: '',
            facebook: '',
            github: '',
            site: '',
            address: '2001')

User.create(name: 'Ava',
            email: 'test_email+ava@gmail.com',
            about: "Hi, I'm Ava!",
            twitter: '',
            linkedin: '',
            facebook: '',
            github: '',
            site: '',
            address: '2000')

Group.create(name: 'Women Who Code Sydney',
             description: "Women Who Code is a global nonprofit organization dedicated to inspiring women to excel in technology careers by creating a global, connected community of women in technology. The organization tripled in 2013 and has grown to be one of the largest communities of women engineers in the world.",
             image: "https://a248.e.akamai.net/secure.meetupstatic.com/photo_api/event/rx226x172/sg4497365dbe/447877282.jpeg")

Group.create(name: "Sydney-Volleyball-in-the-Park",
             description: "We will be playing at the same spot as Sunday. Have lots of fun playing volleyball!",
             image: "https://a248.e.akamai.net/secure.meetupstatic.com/photo_api/event/rx226x172/sg4497365dbe/191253102.jpeg")

Group.create(name: 'Getting Things Done',
             description: "A group to meet and discuss the \"Getting Things Done\" methodology. Swapping stories, tools, techniques and learning from each other.",
             image: 'https://a248.e.akamai.net/secure.meetupstatic.com/photo_api/event/rx226x172/sg4497365dbe/233589242.jpeg')
