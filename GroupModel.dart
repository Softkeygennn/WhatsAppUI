class GroupModel {
  final  String profilePic;
  final String title;
  final String message;
  final String time;
  GroupModel({
    required this.message,
    required this.profilePic,
    required this.time,
    required this.title
  });
}
List<GroupModel> groupList = [
GroupModel(message: 'This is the new group',
profilePic: 'https://plus.unsplash.com/premium_photo-1690579804905-86ee0f135a38?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww',
time: '12:03 pm',
title: 'Technologist',
),
GroupModel(message: 'Army 2024',
profilePic: 'https://plus.unsplash.com/premium_photo-1690579804905-86ee0f135a38?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww',
time: '12:03 pm',
title: 'Pak Army',
),
GroupModel(message: 'Good luck',
profilePic: 'https://plus.unsplash.com/premium_photo-1690579804905-86ee0f135a38?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww',
time: '12:03 pm',
title: 'IT Students',
),
];