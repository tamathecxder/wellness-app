class Community {
  String name;
  String imageUrl;
  dynamic postTime;
  String description;
  int likeCount;
  int commentCount;

  Community({
    required this.name,
    required this.imageUrl,
    required this.postTime,
    required this.description,
    required this.likeCount,
    required this.commentCount,
  });
}

List<Community> communityList = [
  Community(
    name: "John Doe",
    imageUrl: "1.jpg",
    postTime: DateTime.parse("2023-09-20 10:00:00"),
    description: "How can we overcome social anxiety in group settings?",
    likeCount: 0,
    commentCount: 0,
  ),
  Community(
    name: "Jane Smith",
    imageUrl: "2.jpg",
    postTime: DateTime.parse("2023-09-19 15:30:00"),
    description:
        "Sharing an idea: Using art therapy as a form of self-expression and healing.",
    likeCount: 15,
    commentCount: 3,
  ),
  Community(
    name: "David Johnson",
    imageUrl: "3.jpg",
    postTime: DateTime.parse("2023-09-18 08:45:00"),
    description:
        "Just a random thought: How does music affect our mood and emotions?",
    likeCount: 8,
    commentCount: 2,
  ),
  Community(
    name: "Emily Wilson",
    imageUrl: "4.jpeg",
    postTime: DateTime.parse("2023-09-17 19:20:00"),
    description:
        "Let's brainstorm: What are some effective stress management techniques?",
    likeCount: 12,
    commentCount: 4,
  ),
  Community(
    name: "Michael Brown",
    imageUrl: "5.jpg",
    postTime: DateTime.parse("2023-09-16 12:15:00"),
    description:
        "Sharing a funny story: Ever had a weird dream that made you think?",
    likeCount: 6,
    commentCount: 1,
  ),
  Community(
    name: "Sophia Davis",
    imageUrl: "6.jpg",
    postTime: DateTime.parse("2023-09-15 09:30:00"),
    description:
        "Seeking recommendations: What are some good books on positive psychology?",
    likeCount: 9,
    commentCount: 3,
  ),
  Community(
    name: "Daniel Thompson",
    imageUrl: "7.jpg",
    postTime: DateTime.parse("2023-09-14 14:45:00"),
    description:
        "Sharing an interesting fact: Did you know that colors can affect our mood?",
    likeCount: 11,
    commentCount: 2,
  ),
  Community(
    name: "Olivia Martinez",
    imageUrl: "8.png",
    postTime: DateTime.parse("2023-09-13 17:10:00"),
    description:
        "Just a thought: How do you practice self-care during busy times?",
    likeCount: 7,
    commentCount: 2,
  ),
  Community(
    name: "Ethan Adams",
    imageUrl: "9.jpg",
    postTime: DateTime.parse("2023-09-12 11:20:00"),
    description:
        "Sharing an idea: Creating a gratitude journal for mental well-being.",
    likeCount: 13,
    commentCount: 5,
  ),
  Community(
    name: "Ava Wilson",
    imageUrl: "10.jpg",
    postTime: DateTime.parse("2023-09-11 16:05:00"),
    description: "Let's discuss: How does nature impact our mental health?",
    likeCount: 9,
    commentCount: 3,
  ),
  Community(
    name: "Noah Clark",
    imageUrl: "11.jpg",
    postTime: DateTime.parse("2023-09-10 13:40:00"),
    description:
        "Sharing a funny thought: Can laughter really be the best medicine?",
    likeCount: 14,
    commentCount: 4,
  ),
  Community(
    name: "Mia Turner",
    imageUrl: "12.png",
    postTime: DateTime.parse("2023-09-09 18:50:00"),
    description:
        "Just for fun: If you were a superhero, what would be your superpower for mental well-being?",
    likeCount: 10,
    commentCount: 3,
  ),
];
