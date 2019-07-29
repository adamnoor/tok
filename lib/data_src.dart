
class Resource {
  final int priority;
  final String title;
  final String topic;
  final String type;
  final String url;
  final String source;
  final String link;
  final String more;

  Resource(
      {this.priority,
      this.title,
      this.topic,
      this.type,
      this.url,
      this.source,
      this.link,
      this.more});
}

List<Resource> completeList = [];

List<Resource> mockData = [


  resource1,
  resource3,
  resource4,
  resource5,
  resource6,
  resource7,
  resource8,
  resource9,
  resource10,
  resource11,
  resource12,
  resource13,
  resource14,
  resource15,
  resource16,
  resource17,
  resource18,
  resource19,
  resource20,
  resource21,
  resource22,
  resource23,
  resource24,
  resource25,
  resource26,
  resource27,
  resource28,
  resource29,
  resource30,
  resource31,
  resource2,
];



Resource resource1 = Resource(
    priority: 1,
    title: "What is art?",
    topic: "Arts",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/20080422_bpp_07.mp3",
    source: "NPR",
    link: "https://www.npr.org/templates/story/story.php?storyId=89830782",
    more:
        "KQ: What is art? What are the ethical limitations of art?\n\nThis interesting piece helps us explore the boundaries of what we consider art. It further helps us explore the concept of intention, reaction, and the role of authorities in deciding what the boundaries art.");



Resource resource2 = Resource(
    priority: 32,
    title: "The Moral Side of Murder",
    topic: "Ethics",
    type: "Video",
    url: "kBdfcR-8hEY",
    source: "Harvard University",
    link: "https://www.youtube.com/watch?v=kBdfcR-8hEY",
    more:
        "KQ: How do we know what is right?\n\nIn this fascinating, interactive lecture, public philosopher and professor Michael Sandel explores how we arrive at our moral and ethical judgments by evaluating engaging stories of murder.");



Resource resource3 = Resource(
    priority: 3,
    title: "Top 10 Most Famous Scientific Theories That Turned out to be Wrong",
    topic: "Natural Sciences",
    type: "Video",
    url: "3MuMPLoQZN4",
    source: "TopTenz",
    link: "https://www.youtube.com/watch?time_continue=1&v=3MuMPLoQZN4",
    more:
        "KQ: How do we construct knowledge in the natural sciences? What is the nature of scientific progress?\n\nThis video provides a good starting point for us to consider how conclusions arrive at scientifically can ultimately prove to be incorrect. These cases help us explore the nature of science through failures that help illustrate the concept of \"self correction\" in science.");



Resource resource4 = Resource(
    priority: 4,
    title: "Using sound to \"see\": Human echolocation-\"Batman\" Daniel Kish",
    topic: "Sense Perception",
    type: "Video",
    url: "A8lztr1tu4o",
    source: "HDNet",
    link: "https://www.youtube.com/watch?time_continue=2&v=A8lztr1tu4o",
    more:
        "KQ: How do our senses give us knowledge of the outside world?\n\nThis story helps us explore the concept of our senses and the knowledge we acquire through them. Daniel Kish is able to acquire \"visual\" information from the sources he produces and the echoes he hears similar to the way bats are able to \"see.\" Our sense of sight gives us spatial knowledge which Kish is able to acquire through sound.");



Resource resource5 = Resource(
    priority: 5,
    title: "Reliability of memories after a terrorist attack: Outside Westgate",
    topic: "Memory",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/westgateedit-01.mp3",
    source: "Radiolab",
    link: "https://www.wnycstudios.org/story/outside-westgate",
    more:
        "KQ: How reliable is our memory? What is the relationship between sense perception and memory?\n\nThis amazing story explores the reality of the terrorist attack in the Westgate Mall in Kenya and eye witness memory of that attack. The differences will shock you. This is a shortened version of the episode. Go to main Radiolab page for the full episode.");


Resource resource6 = Resource(
    priority: 6,
    title: "How reliable is your memory?",
    topic: "Memory",
    type: "Video",
    url: "PB2OegI6wvI",
    source: "TED",
    link: "https://www.youtube.com/watch?v=PB2OegI6wvI",
    more:
        "KQ: How reliable is our memory? How reliable is sense perception?\n\nThis TED talk, by one of the foremost experts on memory, explores these questions and raises more questions about the nature of our memory.");


Resource resource7 = Resource(
    priority: 7,
    title: "Why eyewitnesses get it wrong",
    topic: "Memory",
    type: "Video",
    url: "4TQETLZZmcM",
    source: "TED",
    link: "https://www.youtube.com/watch?v=4TQETLZZmcM",
    more:
        "KQ: How reliable is our memory? What is the relationship between sense perception and memory?\n\nMemory expert Scott Fraser explores the nature of human memory, eye witness testimony and the complications created by how our minds work.");


Resource resource8 = Resource(
    priority: 8,
    title: "The woman who feels no fear",
    topic: "Emotion",
    type: "Audio",
    url:
        "https://toktopics.files.wordpress.com/2019/07/20180628_invsb_1st_half_fearlion.mp3",
    source: "NPR",
    link: "https://www.npr.org/2015/01/16/377517810/world-with-no-fear",
    more:
        "KQ: What role does emotion play in our lives?\n\nThis podcast explores the role of fear in our lives and one case about what life would be like if we didn't feel any fear and the results are not what you would think and not very desirable.");



Resource resource9 = Resource(
    priority: 9,
    title: "Reason vs Intuition: The machinery of the mind",
    topic: "Intuition",
    type: "Video",
    url: "DUpqr7nWc3s",
    source: "NPR",
    link: "https://www.youtube.com/watch?time_continue=260&v=DUpqr7nWc3s",
    more: "KQ: What is the relationship between intuition and reason? How do we make decisions?\n\nThis talk by Daniel Kahneman explores the two different 'systems' our brain can work on: system 1 which is the fast, intuitive, automatic approach and system 2 which is the brain's slow, analytical, reasoned approach. This talk comes off a bit dry at first but his ideas are fascinating and worth considering."

);



Resource resource10 = Resource(
    priority: 10,
    title: "Translation",
    topic: "Language",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/radiolab102114.mp3",
    source: "Radiolab",
    link: "https://www.wnycstudios.org/story/translation",
    more:
        "KQ: How can we use language to acquire knowledge? To what extent can we effectively translate knowledge between languages?\n\nThis is a series of eight different stories around the common theme of translation and \"How close can words get you to the truth and feel and force of life?\" ");

Resource resource11 = Resource(
    priority: 11,
    title: "Language as a Window into Human Nature",
    topic: "Language",
    type: "Video",
    url: "https://www.youtube.com/watch?v=3-son3EJTrU",
    source: "RSA Animate",
    link: "https://www.youtube.com/watch?v=3-son3EJTrU",
    more:
        "KQ: What is the role of language in communicating knowledge? Why do we use euphemisms and indirect language to communicate?\n\nThis is an animation of a lecture by linguist Steven Pinker on the concept of indirect langauge and why humans use it. In exploring this concept, he helps us consider the role of language in human interactions.");

Resource resource12 = Resource(
    priority: 12,
    title: "Comedian George Carlin on \"Soft Language\"",
    topic: "Language",
    type: "Video",
    url: "https://www.youtube.com/watch?v=o25I2fzFGoY",
    source: "HBO",
    link: "https://www.youtube.com/watch?v=o25I2fzFGoY",
    more:
        "KQ: How does language help us communicate knowledge? Why do the words we choose matter?\n\nThis segment is from a 1980s comedy special from the comedian George Carlin. Here he discusses, with some vulgar language, why he thinks humans choose words and language that avoids direct communication.");

Resource resource13 = Resource(
    priority: 13,
    title: "A world without words?",
    topic: "Language",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/radiolab091010.mp3",
    source: "Radiolab",
    link: "https://www.wnycstudios.org/story/91725-words",
    more:
        "KQ: What role does language play in our lives?\n\nThis podcast follows three different stories that help us imagine the role language plays in our existence and consciousness.");

Resource resource14 = Resource(
    priority: 14,
    title: "Is your red the same as my red?",
    topic: "Sense Perception",
    type: "Video",
    url: "https://www.youtube.com/watch?v=evQsOFQju08",
    source: "Vsauce",
    link: "https://www.youtube.com/watch?v=evQsOFQju08",
    more:
        "KQ: To what extent is knowledge acquired through our senses universal? To what extent can we know?\n\nThis very elucidating video helps us ponder some questions about the essence of our senses and the extent to which they are personal experiences that cannot be truly shared.");

Resource resource15 = Resource(
    priority: 15,
    title: "Describing colors as a blind person",
    topic: "Sense Perception",
    type: "Video",
    url: "https://www.youtube.com/watch?v=59YN8_lg6-U",
    source: "Tommy Edison",
    link: "https://www.youtube.com/watch?v=59YN8_lg6-U",
    more:
        "KQ: What is the relationship between language and sense perception? To what extent is our ability to communicate knowledge through language limited?\n\nThis video allows us to hear from a blind person the inability for words to adequately communicate the concept of color.");

Resource resource16 = Resource(


    priority: 16,
    title: "Using your tongue to \"see\"",
    topic: "Sense Perception",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/radiolab102114d.mp3",
    source: "Radiolab",
    link: "https://www.wnycstudios.org/story/seeing-tongues",
    more: "KQ: How do our senses help us acquire knowledge about the outside world? What is the relationship between our different senses?\n\nThis is a fascinating story about a woman who loses her sight but is able to use a device to help translate visual information into sensations on her tongue so that she can \"see.\""

    );

Resource resource17 = Resource(


    priority: 17,
    title: "What happens when you pour 1200F molten aluminum into an anthill?",
    topic: "Ethics",
    type: "Video",
    url: "https://www.youtube.com/watch?v=1IugvemOyZY",
    source: "CBS",
    link: "https://www.youtube.com/watch?v=1IugvemOyZY",
    more: "KQ: What are the ethical limitations on producing art?\n\nThis video shows a fascinating process by which an artist pours moulten aluminum down anthills to cast molds of their internal structures. The ants inside are killed in the process. Is this ethical if it simply is artwork? What if it is for scientific discovery?"

    );

Resource resource18 = Resource(


    priority: 18,
    title: "Speedy Beet: The story of Beethoven's absurdly fast tempo markings",
    topic: "Arts",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/tok-day-44-speedy-beets-edit.mp3",
    source: "Radiolab",
    link: "https://www.wnycstudios.org/story/269783-speedy-beet",
    more: "KQ: What is the relationship between an artist and their artwork?\n\nWho decides the meaning or interpretation of artwork? This is an interesting story about how fast Beethoven intended his music to be played and speculates as to his reasoning. Do we have to stay true to his intentions? Or do artists today get to reimagine and reinterpret the work even if it goes against the composer's wishes? This is an edited version of the original podcast."

    );

Resource resource19 = Resource(

    priority: 19,
    title: "Numbers: Where do they come from and what do they really do for us?",
    topic: "Maths",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/radiolab100909.mp3",
    source: "Radiolab",
    link: "https://www.wnycstudios.org/story/91697-numbers",
    more: "KQ: What is the relationship between intuition and math? How do numbers help us understand the world around us?\n\nThis podcast takes a look at numbers, where they come from and what they do for us."

    );

Resource resource20 = Resource(
    priority: 20,
    title: "Science and the pursuit of ignorance",
    topic: "Natural Sciences",
    type: "Video",
    url: "nq0_zGzSc8g",
    source: "TED",
    link: "https://www.youtube.com/watch?v=nq0_zGzSc8g",
    more: "KQ: How do we construct knowledge in the natural sciences? What is the nature of scientific knowledge?\n\nThis talk explores the role of ignorance and the unknown as a driver of scientific inquiry and progress. It also calls for us to be humble with what we know in the face of what we don't."


);


Resource resource21 = Resource(
    priority: 21,
    title: "What is color? Does it exist in the world or only in our minds?",
    topic: "Sense Perception",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/radiolab052112.mp3",
    source: "Radiolab",
    link: "https://www.wnycstudios.org/story/211119-colors",
    more: "KQ: How do our senses help us acquire knowledge about the outside world? To what extent is knowledge acquired through our senses objective? What is the relationship between language and sense perception?\n\nThis podcast, my personal all time favorite, explores a variety of stories and situations which will change the way you think about colors."

);


Resource resource22 = Resource(
    priority: 22,
    title: "Do animals have language?",
    topic: "Language",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/radiolab_podcast10prairie.mp3",
    source: "Radiolab",
    link: "https://www.wnycstudios.org/story/98611-wild-talk",
    more: "KQ: What is language? Do animals have language?\n\nThis podcast episode looks into what language is and how animals may or may not use language to communicate."


);

Resource resource23 = Resource(
    priority: 23,
    title: "Remembering and Forgetting",
    topic: "Memory",
    type: "Video",
    url: "HVWbrNls-Kw",
    source: "CrashCourse",
    link: "https://www.youtube.com/watch?v=HVWbrNls-Kw",
    more: "KQ: How does memory help us know? What are the limitations of our memory?\n\nThis video helps illustrate the concept of memory, how we recall our memories and why we have to forget things."


);


Resource resource24 = Resource(
    priority: 24,
    title: "How we make memories",
    topic: "Memory",
    type: "Video",
    url: "bSycdIx-C48",
    source: "CrashCourse",
    link: "https://www.youtube.com/watch?v=bSycdIx-C48",
    more: "KQ: How does memory help us know? How do we form memories?\n\nThis video helps illustrate concepts related to memory and how we form and recal them. "


);


Resource resource25 = Resource(
    priority: 25,
    title: "Why a dead shark costs \$12 million",
    topic: "Arts",
    type: "Audio",
    url: "https://toktopics.files.wordpress.com/2019/07/20131009_blog_pmoney.mp3",
    source: "NPR",
    link: "https://www.npr.org/sections/money/2013/10/09/230950901/episode-189-why-a-dead-shark-costs-12-million",
    more: "KQ: What is art? How do we evaluate the quality of art?\n\nThis podcast taps into age old questions about the nature and definition of artwork. Why do some works become valuable and others don't?"


);

Resource resource26 = Resource(
    priority: 26,
    title: "Moral behavior in animals",
    topic: "Ethics",
    type: "Video",
    url: "GcJxRqTs5nk",
    source: "TED",
    link: "https://www.youtube.com/watch?v=GcJxRqTs5nk",
    more: "KQ: To what extent are ethics and moral human constructs? How do we decide what is ethical?\n\nThis video explore the nature of morals and ethics in animals and helps shine a light on human morality."


);


Resource resource27 = Resource(
    priority: 27,
    title: "The CERN supercollider and the value of scientific knowledge",
    topic: "Natural Sciences",
    type: "Video",
    url: "_6uKZWnJLCM",
    source: "TED",
    link: "https://www.youtube.com/watch?v=_6uKZWnJLCM",
    more: "KQ: What is the value of scientific knowledge? To what extent should scientific knowledge be applied in order to be valuable?\n\nThis is just an amazing lecture with some great visuals to help explain some complex ideas. Absolutely worth watching. Some interesting questions that get raised: Why bother engaging in research that is so far removed from any seeming relevance to our every day lives? Should we spend billions of dollars to fund research that may never provide any practical outcomes or make our lives materially any better? Is the quest for knowledge and understanding a valuable enough goal to justify these costs?"


);


Resource resource28 = Resource(
    priority: 28,
    title: "The worldwide web of belief and ritual",
    topic: "Indigenous Knowledge Systems",
    type: "Video",
    url: "y8zWH3T5RCA",
    source: "TED",
    link: "https://www.youtube.com/watch?v=y8zWH3T5RCA",
    more: "KQ: What are the different ways other cultures construct knowledge?\n\nIn this amazing talk, anthropologist Wade Davis discusses a variety of different beliefs and practices from around the world and what they tell us about what it means to be human."


);

Resource resource29 = Resource(
    priority: 29,
    title: "Why ancient wisdom matters in the modern world",
    topic: "Indigenous Knowledge Systems",
    type: "Video",
    url: "https://www.youtube.com/watch?v=XuJsbjKKh3E",
    source: "Garrison Institute",
    link: "https://www.youtube.com/watch?v=XuJsbjKKh3E",
    more: "KQ: What is the value of knowledge? How do different cultures produce knowledge?\n\nIn this talk, anthroplogist Wade Davis looks at the importance of cultural diversity and differing perspectives on the fundamental human questions."


);


Resource resource30 = Resource(
    priority: 30,
    title: "Rediscovering ancient Polynesian sailing techniques",
    topic: "Indigenous Knowledge Systems",
    type: "Video",
    url: "DWp5MiiVR1k",
    source: "National Geographic",
    link: "https://www.youtube.com/watch?v=DWp5MiiVR1k",
    more: "KQ: How do different cultures produce knowledge? What are the different perspectives on how to represent reality?\n\nThis fascinating documentary traces the journey to reacquire seemingly lost knowledge systems about sailing and the ocean. The Polynesian methods, were far more advanced than Europeans at the time and still fundamentally different in their perspectives than Western methods today."


);


Resource resource31 = Resource(
    priority: 31,
    title: "Is torture ever justified?",
    topic: "Ethics",
    type: "Video",
    url: "7FR-FuhN2HM",
    source: "Harvard University",
    link: "https://www.youtube.com/watch?v=7FR-FuhN2HM",
    more: "KQ: How do we decide what is right? Is torture ever ethical?\n\nThis is an excerpt from a longer lecture which explores competing ideas on rights and dignitiy."


);


