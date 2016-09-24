User.destroy_all
Group.destroy_all

#create users
User.create(name: 'Emma',
            email: 'test_email+emma@gmail.com',
            about: "Hi, I'm Emma! I like movies",
            twitter: '',
            linkedin: '',
            facebook: '',
            github: '',
            site: '',
            address: '2000')

User.create(name: 'Olivia',
            email: 'test_email+Olivia@gmail.com',
            about: "Hi, I'm Olivia!",
            twitter: '',
            linkedin: '',
            facebook: '',
            github: '',
            site: '',
            address: '2001')

User.create(name: 'Ava',
            email: 'test_email+Ava@gmail.com',
            about: "Hi, I'm Ava!",
            twitter: '',
            linkedin: '',
            facebook: '',
            github: '',
            site: '',
            address: '2000')

Group.create(name: 'Women Who Code Sydney',
             description: "Women Who Code is a global nonprofit organization dedicated to inspiring women to excel in technology careers by creating a global, connected community of women in technology. The organization tripled in 2013 and has grown to be one of the largest communities of women engineers in the world.")

wwc = Group.first
wwc.users << User.first