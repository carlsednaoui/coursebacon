Course.create(:title => 'CS101 - BUILDING A SEARCH ENGINE', :url => 'http://www.udacity.com/overview/Course/cs101', :offered_by => 'Udacity', :main_topic => 'Python', :description => 'This class will give you an introduction to computing. In seven weeks, you will build your own search engine complete with a web crawler and way of ranking popular pages. You will understand some of the key concepts in computer science, and learn how to write your own computer programs. No previous background in programming is expected.', :user_id => 1)

Course.create(:title => 'CS212 - DESIGN OF COMPUTER PROGRAMS', :url => 'http://www.udacity.com/overview/Course/cs212', :offered_by => 'Udacity', :main_topic => 'Intermediate Programming', :description => 'The key to progressing from a novice programmer to an expert is mindful practice. In this class you will practice going from a problem description to a solution, using a series of assignments. With each problem you will learn new concepts, patterns, and methods that will expand your ability and help move you along the path from novice towards expertise.', :user_id => 1)

Course.create(:title => 'CS253 - WEB APPLICATION ENGINEERING', :url => 'http://www.udacity.com/overview/Course/cs253', :offered_by => 'Udacity', :main_topic => 'Web Applications', :description => 'Web applications have the power to provide useful services to millions of people worldwide. In this class, you will learn how to build your own blog application starting from the basics of how the web works and how to set up a web application and process user input, to how to use databases, manage user accounts, interact with other web services, and make your application scale to support large numbers of users.', :user_id => 1)

Course.create(:title => 'CS262 - PROGRAMMING LANGUAGES', :url => 'http://www.udacity.com/overview/Course/cs262', :offered_by => 'Udacity', :main_topic => 'JavaScript', :description => 'This class will give you an introduction to fundamentals of programming languages. In seven weeks, you will build your own simple web browser complete with the ability to parse and understand HTML and JavaScript. You will learn key concepts such as how to specify and process valid strings, sentences and program structures. Then, you will design and build an interpreter - a program that simulates other programs.', :user_id => 1)

Course.create(:title => 'CS373 - PROGRAMMING A ROBOTIC CAR', :url => 'http://www.udacity.com/overview/Course/cs373', :offered_by => 'Udacity', :main_topic => 'AI', :description => 'This class, taught by one of the foremost experts in AI, will teach you basic methods in Artificial Intelligence, including: probabilistic inference, computer vision, machine learning, and planning, all with a focus on robotics. Extensive programming examples and assignments will apply these methods in the context of building self-driving cars. You will get a chance to visit, via video, the leading research labs in the field, and meet the scientists and engineers who are building self-driving cars at Stanford and Google. Prerequisites: The instructor will assume solid knowledge of programming, all programming will be in Python. Knowledge of probability and linear algebra will be helpful.', :user_id => 1)

Course.create(:title => 'CS387 - APPLIED CRYPTOGRAPHY', :url => 'http://www.udacity.com/overview/Course/cs387', :offered_by => 'Udacity', :main_topic => 'Cryptography', :description => "Cryptography is about 'secret writing'. In this class, we will introduce the mathematical foundations of cryptography and build programs to perform encryption. We will see how to use cryptography to solve important problem such as how to authenticate users, secure websites, and do computation without exposing up your data. We will also look at the things that can go wrong when cryptography is misused or implemented badly.", :user_id => 1)

Course.create(:title => 'Model Thinking', :url => 'https://www.coursera.org/modelthinking/auth/welcome', :offered_by => 'Coursera', :main_topic => 'Data Models', :description => "Models help us to better organize information - to make sense of that fire hose or hairball of data (choose your metaphor) available on the Internet. Models improve our abilities to make accurate forecasts. They help us make better decisions and adopt more effective strategies. They even can improve our ability to design institutions and procedure. In this class, I present a starter kit of models: I start with models of tipping points. I move on to cover models explain the wisdom of crowds, models that show why some countries are rich and some are poor, and models that help unpack the strategic decisions of firm and politicians. For each model, I present a short, easily digestible overview lecture. Then, I'll dig deeper. I'll go into the technical details of the model. Those technical lectures won't require calculus but be prepared for some algebra. For all the lectures, I'll offer some questions and we'll have quizzes and even a final exam. If you decide to do the deep dive, and take all the quizzes and the exam, you'll receive a certificate of completion. If you just decide to follow along for the introductory lectures to gain some exposure that's fine too. It's all free. And it's all here to help make you a better thinker!", :user_id => 1)

Course.create(:title => 'Software as a Service', :url => 'https://www.coursera.org/saas/class', :offered_by => 'Coursera', :main_topic => 'SAAS', :description => "This course teaches the engineering fundamentals for long-lived software using the highly-productive Agile development method for Software as a Service (SaaS) using Ruby on Rails. Agile developers continuously refine and refactor a working but incomplete prototype until the customer is happy with result, with the customer offering continuous feedback. Agile emphasizes user stories to validate customer requirements; test-driven development to reduce mistakes; biweekly iterations of new software releases; and velocity to measure progress. We will introduce all these elements of the Agile development cycle, and go through one iteration by adding features to a simple app and deploying it on the cloud using tools like Github, Cucumber, RSpec, SimpleCov, Pivotal Tracker, and Heroku.", :user_id => 1)

Course.create(:title => 'Computer Vision', :url => 'http://www.vision-class.org/', :offered_by => 'Coursera', :main_topic => 'Algorithms', :description => "Computer vision seeks to develop algorithms that replicate one of the most amazing capabilities of the human brain - inferring properties of the external world purely by means of the light reflected from various objects to the eyes. We can determine how far away these objects are, how they are oriented with respect to us, and in relationship to various other objects. We reliably guess their colors and textures, and we can recognize them - this is a chair, this is my dog Fido, this is a picture of Bill Clinton smiling. We can segment out regions of space corresponding to particular objects and track them over time, such as a basketball player weaving through the court.", :user_id => 1)

Course.create(:title => 'Natural Language Processing', :url => 'https://www.coursera.org/nlp/auth/welcome', :offered_by => 'Coursera', :main_topic => 'Language Processing', :description => "The course covers a broad range of topics in natural language processing, including word and sentence tokenization, text classification and sentiment analysis, spelling correction, information extraction, parsing, meaning extraction, and question answering, We will also introduce the underlying theory from probability, statistics, and machine learning that are crucial for the field, and cover fundamental algorithms like n-gram language modeling, naive bayes and maxent classifiers, sequence models like Hidden Markov Models, probabilistic dependency and constituent parsing, and vector-space models of meaning.", :user_id => 1)

Course.create(:title => 'Game Theory', :url => 'https://www.coursera.org/gametheory/auth/welcome', :offered_by => 'Coursera', :main_topic => 'Game Theory', :description => "Popularized by movies such as 'A Beautiful Mind', game theory is the mathematical modeling of strategic interaction among rational (and irrational) agents. Beyond what we call 'games' in common language, such as chess, poker, soccer, etc., it includes the modeling of conflict among nations, political campaigns, competition among firms, and trading behavior in markets such as the NYSE. How could you begin to model eBay, Google keyword auctions, and peer to peer file-sharing networks, without accounting for the incentives of the people using them? The course will provide the basics: representing games and strategies, the extensive form (which computer scientists call game trees), Bayesian games (modeling things like auctions), repeated and stochastic games, and more. We'll include a variety of examples including classic games and a few applications.", :user_id => 1)

Course.create(:title => 'Probabilistic Graphical Models', :url => 'https://www.coursera.org/pgm/auth/welcome', :offered_by => 'Coursera', :main_topic => 'PGM', :description => "In this class, you will learn the basics of the PGM representation and how to construct them, using both human knowledge and machine learning techniques; you will also learn algorithms for using a PGM to reach conclusions about the world from limited and noisy evidence, and for making good decisions under uncertainty. The class covers both the theoretical underpinnings of the PGM framework and practical skills needed to apply these techniques to new problems. ", :user_id => 1)

Course.create(:title => 'Cryptography', :url => 'https://www.coursera.org/crypto/auth/welcome', :offered_by => 'Coursera', :main_topic => 'Cryptography', :description => "Cryptography is an indispensable tool for protecting information in computer systems. This course explains the inner workings of cryptographic primitives and how to correctly use them. Students will learn how to reason about the security of cryptographic constructions and how to apply this knowledge to real-world applications. The course begins with a detailed discussion of how two parties who have a shared secret key can communicate securely when a powerful adversary eavesdrops and tampers with traffic. We will examine many deployed protocols and analyze mistakes in existing systems. The second half of the course discusses public-key techniques that let two or more parties generate a shared secret key. We will cover the relevant number theory and discuss public-key encryption, digital signatures, and authentication protocols. Towards the end of the course we will cover more advanced topics such as zero-knowledge, distributed protocols such as secure auctions, and a number of privacy mechanisms. Throughout the course students will be exposed to many exciting open problems in the field.", :user_id => 1)

Course.create(:title => 'Design and Analysis of Algorithms', :url => 'https://www.coursera.org/algo/auth/welcome', :offered_by => 'Coursera', :main_topic => 'Algorithms', :description => "In this course you will learn several fundamental principles of algorithm design. You'll learn the divide-and-conquer design paradigm, with applications to fast sorting, searching, and multiplication. You'll learn several blazingly fast primitives for computing on graphs, such as how to compute connectivity information and shortest paths. Finally, we'll study how allowing the computer to 'flip coins' can lead to elegant and practical algorithms and data structures. Learn the answers to questions such as: How do data structures like heaps, hash tables, bloom filters, and balanced search trees actually work, anyway? How come QuickSort runs so fast? What can graph algorithms tell us about the structure of the Web and social networks? Did my 3rd-grade teacher explain only a suboptimal algorithm for multiplying two numbers?", :user_id => 1)

Course.create(:title => 'Introduction to Computer Science and Programming', :url => 'http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-00sc-introduction-to-computer-science-and-programming-spring-2011/', :offered_by => 'MIT', :main_topic => 'Python', :description => "This subject is aimed at students with little or no programming experience. It aims to provide students with an understanding of the role computation can play in solving problems. It also aims to help students, regardless of their major, to feel justifiably confident of their ability to write small programs that allow them to accomplish useful goals. The class will use the Python programming language.", :user_id => 1)

Course.create(:title => 'Introduction to Electrical Engineering and Computer Science I', :url => 'http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-01sc-introduction-to-electrical-engineering-and-computer-science-i-spring-2011/', :offered_by => 'MIT', :main_topic => 'Electrical Engineering', :description => "This course provides an integrated introduction to electrical engineering and computer science, taught using substantial laboratory experiments with mobile robots. Our primary goal is for you to learn to appreciate and use the fundamental design principles of modularity and abstraction in a variety of contexts from electrical engineering and computer science. Our second goal is to show you that making mathematical models of real systems can help in the design and analysis of those systems. Finally, we have the more typical goals of teaching exciting and important basic material from electrical engineering and computer science, including modern software engineering, linear systems analysis, electronic circuits, and decision-making.", :user_id => 1)

Course.create(:title => 'Performance Engineering of Software Systems', :url => 'http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-172-performance-engineering-of-software-systems-fall-2010/', :offered_by => 'MIT', :main_topic => 'High Performance Softwares', :description => "Modern computing platforms provide unprecedented amounts of raw computational power. But significant complexity comes along with this power, to the point that making useful computations exploit even a fraction of the potential of the computing platform is a substantial challenge. Indeed, obtaining good performance requires a comprehensive understanding of all layers of the underlying platform, deep insight into the computation at hand, and the ingenuity and creativity required to obtain an effective mapping of the computation onto the machine. The reward for mastering these sophisticated and challenging topics is the ability to make computations that can process large amount of data orders of magnitude more quickly and efficiently and to obtain results that are unavailable with standard practice.", :user_id => 1)

Course.create(:title => 'Fundamentals of Entrepreneurship', :url => 'https://generalassemb.ly/start/fundamentals-of-entrepreneurship', :offered_by => 'General Assembly', :main_topic => 'Entrepreneurship', :description => "Start making: A path to turn your ideas into a company people love. Presentations by: Alexis Ohanian (from Reddit), Jack Groetzinger (from SeatGeek), Rachel Derkits-Gelman, Jake Schwartz (from General Assembly) and much more.", :user_id => 1)

Course.create(:title => 'Circuits & Electronics', :url => 'https://6002x.mitx.mit.edu/', :offered_by => 'MIT', :main_topic => 'Circuits', :description => "6.002x (Circuits and Electronics) is designed to serve as a first course in an undergraduate electrical engineering (EE), or electrical engineering and computer science (EECS) curriculum. At MIT, 6.002 is in the core of department subjects required for all undergraduates in EECS. The course introduces engineering in the context of the lumped circuit abstraction. Topics covered include: resistive elements and networks; independent and dependent sources; switches and MOS transistors; digital abstraction; amplifiers; energy storage elements; dynamics of first- and second-order networks; design in the time and frequency domains; and analog and digital circuits and applications. Design and lab exercises are also significant components of the course. You should expect to spend approximately 10 hours per week on the course.", :user_id => 1)

Course.create(:title => 'CodeYear', :url => 'http://codeyear.com/', :offered_by => 'Codecademy', :main_topic => 'Intro to Programming', :description => "Sign up for Code Year to start receiving a new interactive programming lesson every Monday. You'll be building apps and websites before you know it! Past lessons are available online.", :user_id => 1)

Course.create(:title => 'Learn JavaScript with Codecademy', :url => 'http://www.codecademy.com/languages/javascript', :offered_by => 'Codecademy', :main_topic => 'JavaScript', :description => "JavaScript is a programming language that grew out of a need to add interactivity to web sites within the browser. It has since evolved into an incredibly versatile language that is used for both client-side (within the browser) and server-side (code that serves web pages to users) applications.", :user_id => 1)

Course.create(:title => 'Google Code University', :url => 'http://code.google.com/edu/', :offered_by => 'Google', :main_topic => 'Programming', :description => "Google Code University (GCU) does not require registration and materials are free to use.", :user_id => 1)

Course.create(:title => 'Google Python Class', :url => 'http://code.google.com/edu/languages/google-python-class/', :offered_by => 'Google', :main_topic => 'Python', :description => "This is a free class for people with a little bit of programming experience who want to learn Python. The class includes written materials, lecture videos, and lots of code exercises to practice Python coding. These materials are used within Google to introduce Python to people who have just a little programming experience. The first exercises work on basic Python concepts like strings and lists, building up to the later exercises which are full programs dealing with text files, processes, and http connections. The class is geared for people who have a little bit of programming experience in some language, enough to know what a 'variable' or 'if statement' is. Beyond that, you do not need to be an expert programmer to use this material.", :user_id => 1)

Course.create(:title => 'Learning from data', :url => 'http://work.caltech.edu/telecourse.html', :offered_by => 'Caltech', :main_topic => 'Machine Learning', :description => "This is an introductory course on machine learning that covers the basic theory, algorithms, and applications. Machine learning (ML) enables computational systems to adaptively improve their performance with experience accumulated from the observed data. ML techniques are widely applied in engineering, science, finance, and commerce to build systems for which we do not have full mathematical specification (and that covers a lot of systems). The course balances theory and practice, and covers the mathematical as well as the heuristic aspects. ", :user_id => 1)

Course.create(:title => 'Getting Traction', :url => 'http://tractionbook.com/', :offered_by => 'Yegg', :main_topic => 'Startup', :description => "View videos of successful entrepreneurs and learn the techniques they used to gain serious market traction.", :user_id => 1)

Tutorial.create(:title => 'Twitter Sentiment Analysis Using Python', :url => 'http://www.laurentluce.com/posts/twitter-sentiment-analysis-using-python-and-nltk/', :offered_by => 'Laurent Luce', :main_topic => 'Sentiment Analysis', :description => "This post describes the implementation of sentiment analysis of tweets using Python and the natural language toolkit NLTK. The post also describes the internals of NLTK related to this implementation.", :user_id => 1)

Tutorial.create(:title => 'Email Infrastucture Setup Guide', :url => 'http://iafonov.github.com/blog/hardcore-email-infrastructure-setup.html', :offered_by => 'Igor Afonov', :main_topic => 'Email', :description => "This article will help you ensure that your 'good' emails will not get into spam folder. If you are sending junk emails with viagra advertisement sooner or later you'll get in trouble anyway. In this article you will get a brief overview of things you can do to increase the quality of email subsystem of your application.", :user_id => 1)

Tutorial.create(:title => 'RailsCasts', :url => 'http://railscasts.com/', :offered_by => 'Ryan Bates', :main_topic => 'Ruby on Rails', :description => "The authority when it comes to Rails tutorials. Make sure to check out all of his great videos!", :user_id => 1)

Tutorial.create(:title => 'Ruby Tutorials', :url => 'http://rubysource.com/category/ruby-tutorials/', :offered_by => 'Ruby Source', :main_topic => 'Ruby', :description => "A wide variety of useful Ruby tutorials.", :user_id => 1)

Tutorial.create(:title => 'Rails Tutorials', :url => 'http://rubysource.com/category/rails-tutorials/', :offered_by => 'Ruby Source', :main_topic => 'Ruby on Rails', :description => "A wide variety of useful Ruby on Rails tutorials.", :user_id => 1)

Tutorial.create(:title => 'Nginx Tutorials', :url => 'http://agentzh.org/misc/nginx/agentzh-nginx-tutorials-enuk.html', :offered_by => 'agentzh', :main_topic => 'Nginx', :description => "One principle that I've been trying to follow in these tutorials is to use small and concise configure examples to validate the concepts and principles that are being explained. I hope this can help the reader to build the good habit of not accepting others' viewpoints or statements without testing them. This style may have something to do with my QA background.", :user_id => 1)

Tutorial.create(:title => 'Startup, This is How Design Works', :url => 'http://startupsthisishowdesignworks.com/', :offered_by => 'Wells Riley', :main_topic => 'Design', :description => "Companies like Apple are making design impossible for startups to ignore. Startups like Path, Airbnb, Square, and Massive Health have design at the core of their business, and they're doing phenomenal work. But what is 'design' actually? Is it a logo? A Wordpress theme? An innovative UI?", :user_id => 1)

Tutorial.create(:title => 'Get Things Done (for hackers)', :url => 'http://gtdfh.branchable.com/', :offered_by => 'Branchable', :main_topic => 'Productivity', :description => "David Allen's 'Getting Things Done', or GTD for short, is a popular, powerful system for managing one's life. If you have trouble dealing with your e-mail inbox, or feel you're drowning under a flood of inputs and information, or just don't seem to have time to do everything you think you should be doing, or others want you to do, then GTD may be a good thing for you to consider. This book explains how I, a computer geek, have implemented it in my own life. It is aimed at everyone whose lives include a lot of computer use, and who know how to use their computers.", :user_id => 1)

Book.create(:title => 'Git Community Book', :url => 'http://book.git-scm.com/index.html', :main_topic => 'Git', :description => "Welcome to the Git Community Book. This book has been built by dozens of people in the Git community, and is meant to help you learn how to use Git as quickly and easily as possible.", :user_id => 1)

Book.create(:title => 'Command Line Crash Course', :url => 'http://learncodethehardway.org/cli/book/', :main_topic => 'Command Line', :description => "I wrote this book really quickly as a way to bootstrap students for my other books. Many students don't know how to use the basics of the command line interface, and it was getting in the way of their learning. This book is designed to be something they can complete in about a day to a week and then get enough skill at the command line to graduate to other books. This book isn't a book about master wizardry system administration. It's just a quick introduction to get newbies going.", :user_id => 1)

Tutorial.create(:title => 'Blogging Platform For Hackers', :url => 'http://bionicspirit.com/blog/2012/01/05/blogging-for-hackers.html', :offered_by => 'Bionic Spirit', :main_topic => 'Ruby on Rails', :description => "I'm showing you how to: host your own static website on Heroku's free plan; use Google's App Engine as a CDN, for better responsiveness; keep Heroku's free dyno alive, by using a GAE cron job; have a very responsive, scalable and secure blog, with ultimate; control and simplicity, for zero bucks per month;", :user_id => 1)

Book.create(:title => 'MBA Mondays', :url => 'http://mba-mondays.pandamian.com/tableofcontents/', :main_topic => 'Business School', :description => "I'd like to announce a new series here at AVC. I'm calling it 'MBA Mondays'. Every Monday I'll write a post that is about a topic I learned in business school. I'll keep it dead simple. And I'll try to connect it to some real world experience. Fred Wilson is the principal VC behind Union Square Ventures and avc.com. He is responsible for investments in Twitter, Tumblr, Foursquare, and Etsy, and spends his time in New York with his wife Gotham Girl and two daughters Jessica and Emily. Read", :user_id => 1)

#Course.create(:title => '', :url => '', :offered_by => '', :main_topic => '', :description => "", :user_id => 1)
#Tutorial.create(:title => '', :url => '', :offered_by => '', :main_topic => '', :description => "", :user_id => 1)
#Book.create(:title => '', :url => '', :main_topic => '', :description => "", :user_id => 1)
