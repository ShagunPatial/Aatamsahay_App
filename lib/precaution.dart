var dis_index = {
  '(vertigo) Paroymsal  Positional Vertigo': 10,
  'AIDS': 24,
  'Acne': 12,
  'Alcoholic hepatitis': 32,
  'Allergy': 3,
  'Arthritis': 39,
  'Bronchial Asthma': 31,
  'Cervical spondylosis': 20,
  'Chicken pox': 19,
  'Chronic cholestasis': 7,
  'Common Cold': 18,
  'Dengue': 35,
  'Diabetes': 13,
  'Dimorphic hemmorhoids(piles)': 17,
  'Drug Reaction': 1,
  'Fungal infection': 28,
  'GERD': 6,
  'Gastroenteritis': 40,
  'Heart attack': 37,
  'Hepatitis B': 27,
  'Hepatitis C': 29,
  'Hepatitis D': 36,
  'Hepatitis E': 34,
  'Hypertension': 15,
  'Hyperthyroidism': 21,
  'Hypoglycemia': 11,
  'Hypothyroidism': 4,
  'Impetigo': 14,
  'Jaundice': 33,
  'Malaria': 2,
  'Migraine': 30,
  'Osteoarthristis': 9,
  'Paralysis (brain hemorrhage)': 25,
  'Peptic ulcer diseae': 16,
  'Pneumonia': 38,
  'Psoriasis': 5,
  'Tuberculosis': 41,
  'Typhoid': 26,
  'Urinary tract infection': 22,
  'Varicose veins': 23,
  'hepatitis A': 8
};

var dic_prec = {
  1: [
    'Stop Irritation',
    'Consult Nearest Hospital',
    'Stop Taking Drug',
    'Follow Up'
  ],
  2: [
    'Consult Nearest Hospital',
    'Avoid Oily Food',
    'Avoid Non Veg Food',
    'Keep Mosquitos Out'
  ],
  3: [
    'Apply Calamine',
    'Cover Area With Bandage',
    'Use Ice To Compress Itching'
  ],
  4: ['Reduce Stress', 'Exercise', 'Eat Healthy', 'Get Proper Sleep'],
  5: [
    'Wash Hands With Warm Soapy Water',
    'Stop Bleeding Using Pressure',
    'Consult Doctor',
    'Salt Baths'
  ],
  6: [
    'Avoid Fatty Spicy Food',
    'Avoid Lying Down After Eating',
    'Maintain Healthy Weight',
    'Exercise'
  ],
  7: ['Cold Baths', 'Anti Itch Medicine', 'Consult Doctor', 'Eat Healthy'],
  8: [
    'Consult Nearest Hospital',
    'Wash Hands Through',
    'Avoid Fatty Spicy Food',
    'Medication'
  ],
  9: ['Acetaminophen', 'Consult Nearest Hospital', 'Follow Up', 'Salt Baths'],
  10: [
    'Lie Down',
    'Avoid Sudden Change In Body',
    'Avoid Abrupt Head Movment',
    'Relax'
  ],
  11: [
    'Lie Down On Side',
    'Check In Pulse',
    'Drink Sugary Drinks',
    'Consult Doctor'
  ],
  12: [
    'Bath Twice',
    'Avoid Fatty Spicy Food',
    'Drink Plenty Of Water',
    'Avoid Too Many Products'
  ],
  13: ['Have Balanced Diet', 'Exercise', 'Consult Doctor', 'Follow Up'],
  14: [
    'Soak Affected Area In Warm Water',
    'Use Antibiotics',
    'Remove Scabs With Wet Compressed Cloth',
    'Consult Doctor'
  ],
  15: ['Meditation', 'Salt Baths', 'Reduce Stress', 'Get Proper Sleep'],
  16: [
    'Avoid Fatty Spicy Food',
    'Consume Probiotic Food',
    'Eliminate Milk',
    'Limit Alcohol'
  ],
  17: [
    'Avoid Fatty Spicy Food',
    'Consume Witch Hazel',
    'Warm Bath With Epsom Salt',
    'Consume Alovera Juice'
  ],
  18: [
    'Drink Vitamin C Rich Drinks',
    'Take Vapour',
    'Avoid Cold Food',
    'Keep Fever In Check'
  ],
  19: [
    'Use Neem In Bathing',
    'Consume Neem Leaves',
    'Take Vaccine',
    'Avoid Public Places'
  ],
  20: [
    'Use Heating Pad Or Cold Pack',
    'Exercise',
    'Take Otc Pain Reliver',
    'Consult Doctor'
  ],
  21: [
    'Eat Healthy',
    'Massage',
    'Use Lemon Balm',
    'Take Radioactive Iodine Treatment'
  ],
  22: [
    'Drink Plenty Of Water',
    'Increase Vitamin C Intake',
    'Drink Cranberry Juice',
    'Take Probiotics'
  ],
  23: [
    'Lie Down Flat And Raise The Leg High',
    'Use Oinments',
    'Use Vein Compression',
    'Dont Stand Still For Long'
  ],
  24: [
    'Avoid Open Cuts',
    'Wear Ppe If Possible',
    'Consult Doctor',
    'Follow Up'
  ],
  25: ['Massage', 'Eat Healthy', 'Exercise', 'Consult Doctor'],
  26: [
    'Eat High Calorie Vegitables',
    'Antiboitic Therapy',
    'Consult Doctor',
    'Medication'
  ],
  27: ['Consult Nearest Hospital', 'Vaccination', 'Eat Healthy', 'Medication'],
  28: [
    'Bath Twice',
    'Use Detol Or Neem In Bathing Water',
    'Keep Infected Area Dry',
    'Use Clean Cloths'
  ],
  29: ['Consult Nearest Hospital', 'Vaccination', 'Eat Healthy', 'Medication'],
  30: [
    'Meditation',
    'Reduce Stress',
    'Use Poloroid Glasses In Sun',
    'Consult Doctor'
  ],
  31: [
    'Switch To Loose Cloothing',
    'Take Deep Breaths',
    'Get Away From Trigger',
    'Seek Help'
  ],
  32: ['Stop Alcohol Consumption', 'Consult Doctor', 'Medication', 'Follow Up'],
  33: [
    'Drink Plenty Of Water',
    'Consume Milk Thistle',
    'Eat Fruits And High Fiberous Food',
    'Medication'
  ],
  34: ['Stop Alcohol Consumption', 'Rest', 'Consult Doctor', 'Medication'],
  35: [
    'Drink Papaya Leaf Juice',
    'Avoid Fatty Spicy Food',
    'Keep Mosquitos Away',
    'Keep Hydrated'
  ],
  36: ['Consult Doctor', 'Medication', 'Eat Healthy', 'Follow Up'],
  37: ['Call Ambulance', 'Chew Or Swallow Asprin', 'Keep Calm'],
  38: ['Consult Doctor', 'Medication', 'Rest', 'Follow Up'],
  39: ['Exercise', 'Use Hot And Cold Therapy', 'Try Acupuncture', 'Massage'],
  40: [
    'Stop Eating Solid Food For While',
    'Try Taking Small Sips Of Water',
    'Rest',
    'Ease Back Into Eating'
  ],
  41: ['Cover Mouth', 'Consult Doctor', 'Medication', 'Rest']
};

var dic_yog = {
  1: ['Vrikshasana', 'Matsya Asan'],
  2: ['nan', 'nan'],
  3: ['Pawanamuktasan', 'Sethu Bandhasana'],
  4: ['Setu Bandasana', 'Bridge Pose'],
  5: ['Deep Breathing', 'Child Pose'],
  6: ['Paschimottasan', 'Supta Badhakonasan'],
  7: ['Kapalbharti Pranayam', 'Bhujangasan'],
  8: ['Kapalbharti Pranayam', 'Cobra Pose'],
  9: ['Vinyasa Asan', 'Ashtanga Yoga'],
  10: ['Walking', 'Biking'],
  11: ['Legs-Up-The-Wall Pose', 'Bow Pose'],
  12: ['Pranayam', 'Matsyasan'],
  13: ['Legs-Up-The-Wall Pose', 'Bow Pose'],
  14: ['nan', 'nan'],
  15: ['Uttanasan', 'Viparita Karani'],
  16: ['Pranayam', 'Shataram'],
  17: ['Janusirasan', 'Sarvangasan'],
  18: ['Pranayam', 'Uttanasana'],
  19: ['nan', 'nan'],
  20: ['Matsyasan', 'Bhujangasasn'],
  21: ['Bhujangasan', 'Matsyasan'],
  22: ['Shatkriyas', 'Laghooshankhaprakshalana'],
  23: ['Mountain Pose', 'Boat Pose'],
  24: ['Viparita', 'Bridge Pose'],
  25: ['Uttanapadasana', 'Vajrasana'],
  26: ['Kapalbharti', 'Anulom Vilom Pranayam'],
  27: ['Half Fish Pose', 'Shalabasana'],
  28: ['Mountain Pose', 'Bend Forward Form'],
  29: ['Half Fish Pose', 'Shalabasana'],
  30: ['Adho Mukha Svanasaa', 'Prasarita Padottanasana'],
  31: ['Sukhasana', 'Bhujangasasn'],
  32: ['Locust Pose', 'Boat Pose'],
  33: ['Kapalbharti', 'Anulom Vilom Pranayam'],
  34: ['Half Fish Pose', 'Shalabasana'],
  35: ['Adho Mukha Svanasaa', 'Kapalbharti'],
  36: ['Half Fish Pose', 'Shalabasana'],
  37: ['Utthita Trikonasan', 'Seat Forward Bend Pose'],
  38: ['Lotus Pose', 'Sukhasan'],
  39: ['Tadasan', 'Chakki Asan'],
  40: ['Childs Pose', 'Paschimottanasan'],
  41: ['Bhujangasan', 'Tadasan']
};
