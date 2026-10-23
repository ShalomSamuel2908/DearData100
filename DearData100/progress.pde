
void setup() {
  size(1000, 700);
  background(245);
}

void draw() {
  background(245);

  // Project title
  fill(30);
  textSize(32);
  textAlign(CENTER);
  text("My Gym Progress", width / 2, 60);

  // Project subtitle
  textSize(16);
  text("Dear Data - 20 Workout Sessions", width / 2, 95);
}
