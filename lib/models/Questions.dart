class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "When I introduced Sally to my brother, they ____ hands.",
    "options": ['Shake', 'Shook', 'have shaken', 'are shaking'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "The children were playing cheerfully outside while ____",
    "options": [
      'the taxi has arrived',
      'it started to rain',
      'their parents were watching TV.',
      'the lights went out suddenly.'
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "I think we will meet again ____ Sunday.",
    "options": ['On', 'At', 'Since', 'Last'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "If you have a headache, you ____ see a doctor.",
    "options": [' should', ' would', ' need', 'could'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "Choose the correct sentence.",
    "options": [
      'I enjoy to play basketball.',
      'She wants going outside.',
      'Jonathan decided to study. ',
      'Camille suggests to travel.'
    ],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "If you___ the ice, it___ .",
    "options": [
      '  heat/ can melt',
      ' heated/ melted',
      ' heat/ melts',
      'heat/ melted'
    ],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "A:My brother loves playing computer games. B:___",
    "options": [' Does he', ' Is he', ' Is she', 'Has he'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question":
        "The girl was watching ____ in the mirror when her boyfriend came in.",
    "options": [' himself ', ' itself', 'herself ', 'themselves'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question":
        "My mother hates horror films. My father doesn’t like horror films,____.",
    "options": [' too', ' neither', ' either ', 'so'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Jonathan: Have you got a computer in your room? Lis:____",
    "options": [
      ' No, I have got.',
      'Yes, I don’t.',
      ' Yes, I have.',
      'No, I do.'
    ],
    "answer_index": 2,
  },
];

const List sample_data2 = [
  {
    "id": 1,
    "question": " Garry_____his friends to the party yet.",
    "options": [
      'haven’t invited',
      'hasn’t invite',
      'didn’t invite',
      ' hasn’t invite'
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": " I have_____in İstanbul since the our company moved there.",
    "options": ['been lived', 'living', 'been living', 'been live'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        " When they came to the house, they____already prepared the dinner.",
    "options": ['has', 'have', 'did', 'had'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question":
        "A: There’s ____ at the door.\nB: It may be our neighbour’s son.",
    "options": [
      'somewhere',
      'sometime',
      'something',
      'someone',
    ],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question":
        "Everyone likes her in the school. Because she is a very_____person.",
    "options": ['shy', 'beautiful', 'sociable', ' afraid'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "  He has broken his arm while____a tree.",
    "options": ['to climb', 'climbing', 'to be climbing', 'climb'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": " The coffee is____hot to drink.",
    "options": ['enough', 'so', 'such', 'too'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "He is skilled_____to get the job in the interview.",
    "options": ['enough', 'so', 'such', 'too'],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question": "The nature_____by humans and their way to live.",
    "options": ['pollutes', 'polluted', 'is polluted', 'was polluted'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "A: ____ does Tony leave work? \nB: At half past five.",
    "options": ['What time', 'Who', 'Where', 'What size'],
    "answer_index": 0,
  },
];

const List sample_data3 = [
  {
    "id": 1,
    "question": "If Melisa had a few days off, _____.",
    "options": [
      'she will visit Rome.',
      ' she would go on holiday.',
      'she would have to go to work.',
      'she can read books.'
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "A: Can you swim ?\nB: No, but I wish I ____.",
    "options": ['did', 'were', 'could', 'would'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "If you had made your attitude more understandable, he____that way.",
    "options": [
      'wouldn’t have thought',
      'shouldn’t have thought',
      'couldn’t have thought',
      ' hasn’t thought'
    ],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "The fire spreaded so quickly that whole village______down.",
    "options": ['flooded', 'boiled', 'burnt', ' transferred'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": " If you try_____a proper job, you need to form a CV.",
    "options": ['to finding', 'finding', 'find', 'to find'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "The cake which she had made is____sweet to eat.",
    "options": ['enough', 'too', 'more', 'most'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": " I_____to find my purse all day. Have you seen it?",
    "options": [
      'have been trying',
      'had tried',
      'had been trying',
      ' am trying'
    ],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": " When she arrived school, the exam_____already finished.",
    "options": ['has ', 'did', 'have', 'had'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "After he met Jane, he has become a______person than he was.",
    "options": ['good', 'more good', 'better', 'best'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "By time we got home, ____.",
    "options": [
      'they had eaten dinner.',
      'they were waiting for us.',
      'we ate dinner together.',
      'they have set the table.'
    ],
    "answer_index": 0,
  },
];
