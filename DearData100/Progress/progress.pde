String[] exercises = {
  "Shoulder Press",
  "Lat Pulldown",
  "Chest Press",
  "Pushdown",
  "Curl",
  "Leg Press",
  "Leg Curl",
  "Leg Extension",
  "Adductor Machine",
  "Calf Raise"
};
// Array of all exercises.

// First 5 exercises are upper body.
// Last 5 exercises are lower body.

// Weights are measured in pounds (lbs).
// Each row is an exercise.
// Each column is a session from 1 to 10.

int[][] weights = {
  {60,60,60,60,65,65,65,65,70,70},
  {130,135,135,135,135,140,140,140,140,145},
  {85,85,90,90,90,95,95,95,100,100},
  {40,40,40,45,45,45,45,45,50,50},
  {80,80,80,85,85,85,85,90,90,90},

  {245,255,255,255,255,255,265,265,265,265},
  {75,75,80,80,80,80,80,85,85,85},
  {100,105,105,105,110,110,110,115,115,115},
  {100,100,105,105,105,110,110,110,115,115},
  {220,220,230,230,230,240,240,240,250,250}
};

// Repetitions completed in each session

int[][] reps = {
  {6,7,8,9,6,7,8,9,6,7},
  {9,6,7,8,9,6,7,8,9,6},
  {7,8,6,7,8,6,7,8,6,7},
  {8,9,10,6,7,8,9,10,6,7},
  {7,8,9,6,7,8,9,6,7,8},

  {12,8,9,10,11,12,8,9,10,11},
  {9,10,6,7,8,9,10,6,7,8},
  {8,6,7,8,6,7,8,6,7,8},
  {7,8,6,7,8,6,7,8,6,7},
  {7,8,6,7,8,6,7,8,6,7}
};

// Minimum and maximum rep ranges

int[] minReps = {
  6,6,6,6,6,8,6,6,6,6
};

int[] maxReps = {
  9,9,8,10,9,12,10,8,8,8
};


void setup() {
  size(1000, 700);
  background(245);

  // Display organised workout data
  displayWorkoutData();

  // Test retrieving data
  println("Shoulder Press Session 10:");
  println("Weight: " + getWeight(0, 9) + " lbs");
  println("Reps: " + getReps(0, 9));
}



void draw() {
  background(245);

  // Project title
  fill(30);
  textAlign(CENTER);
  textSize(32);
  text("My Gym Progress", width / 2, 50);

  // Project subtitle
  textSize(16);
  text("Dear Data - 20 Workout Sessions",
       width / 2, 80);

  // Upper body heading
  fill(50, 120, 220);
  textSize(22);
  text("Upper Body", width / 2, 125);

  // Draw upper body exercise circles
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {

      float x = 185 + j * 75;
      float y = 160 + i * 45;

      fill(50, 120, 220);
      noStroke();
      ellipse(x, y, 20, 20);
    }
  }

  // Lower body heading
  fill(230, 130, 50);
  textSize(22);
  text("Lower Body", width / 2, 415);

  // Draw lower body exercise circles
  for (int i = 5; i < 10; i++) {
    for (int j = 0; j < 10; j++) {

      float x = 185 + j * 75;
      float y = 450 + (i - 5) * 45;

      fill(230, 130, 50);
      noStroke();
      ellipse(x, y, 20, 20);
    }
  }
}



void displayWorkoutData() {

  println("===== GYM WORKOUT DATA =====");

  for (int i = 0; i < exercises.length; i++) {

    println("---------------------");
    println("Exercise: " + exercises[i]);

    // Separate upper and lower body
    if (i < 5) {
      println("Upper Body");
    } else {
      println("Lower Body");
    }

    // Display the rep range
    println("Rep Range: " + minReps[i]
      + " - " + maxReps[i]);

    // Print the 10 sessions
    for (int j = 0; j < 10; j++) {
      println("Session " + (j + 1)
        + ": " + weights[i][j]
        + " lbs x " + reps[i][j] + " reps");
    }
  }
}

// Function to retrieve weight
int getWeight(int exercise, int session) {
  return weights[exercise][session];
}

// Function to retrieve reps
int getReps(int exercise, int session) {
  return reps[exercise][session];
}
