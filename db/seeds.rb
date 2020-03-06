Student.destroy_all
Education.destroy_all
Experience.destroy_all
Project.destroy_all
Skill.destroy_all


student = Student.create(
                         first_name: "Rob",
                         last_name: "Kondradowicz", 
                         email: "rob@gamil.com",
                         phone_number: "708-777-7689",
                         short_bio: "Eats his soup. Also, he codes.",
                         linkedin_url: "https://www.linkedin.com/in/robkondratowicz",
                         personal_website_url: "https://www.linkedin.com/in/robkondratowicz",
                         github_url: "https://github.com/EatYourSoup7",
                         city_state: "Chicago, IL",
                         password: "password",
                         password_confirmation: "password"
                        )

education = Education.create(
                             start_date: 5.years.ago,
                             end_date: 1.year.ago
                             university_name: "Temple",
                             degree: "Philosophy",
                             details: "He thought; therefore, he was.",
                             student_id: student.id
                            )

experience = Experience.create(
                               company_name: "Nasa",
                               start_date: 1.year.ago, 
                               end_date: nil, 
                               job_title: "Head Philosopher",
                               current: true, 
                               details: "Thought daily about the implications of exploring space.",
                               student_id: student.id
                              )

project = Project.create(
                         name: "Mission to Mars", 
                         description: "Think about what we might encounter on Mars.",
                         url: "https://www.nasa.gov/perseverance/overview", 
                         student_id: student.id
                        )


skill = Skill.create( 
                     skill_name: "Heavy thinking",
                     student_id: student.id
                    )
