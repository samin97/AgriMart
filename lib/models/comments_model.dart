class CommentsModel {
  final String name;
  final int likes;
  final String imageURL;
  final String address;
  final String comments;

  const CommentsModel(
      {required this.name,
      required this.likes,
      required this.imageURL,
      required this.address,
      required this.comments});

  static const List<CommentsModel> itemsList = [
    CommentsModel(
        name: 'Rahul Joshi',
        likes: 12,
        imageURL:
            'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
        address: 'Patan, Lalitpur',
        comments: 'Great basket of vegetables'),
    CommentsModel(
        name: 'Sita Parajuli',
        likes: 17,
        imageURL:
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
        address: 'Patan, Lalitpur',
        comments: 'Can i get a discount'),
    CommentsModel(
        name: 'Rohit Shrestha',
        likes: 12,
        imageURL:
            'https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=691',
        address: 'Patan, Lalitpur',
        comments: 'Nice basket of vegetables'),

    CommentsModel(
        name: 'Rohit Shrestha',
        likes: 12,
        imageURL:
        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
        address: 'Patan, Lalitpur',
        comments: 'Nice basket of vegetables'),

    CommentsModel(
        name: 'Rohit Shrestha',
        likes: 12,
        imageURL:
        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
        address: 'Patan, Lalitpur',
        comments: 'Nice basket of vegetables'),




  ];
}
