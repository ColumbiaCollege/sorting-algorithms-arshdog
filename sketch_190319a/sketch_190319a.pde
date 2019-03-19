
int smallestSlot= 0;
int iterations = 0;
int [] sorting = new int [10];

void setup() {

  size(900, 600);
  background (0);
  fill(255);
  for (int i = 0; i<10; i++) {
    sorting [i] = int(random(20));
  }



  frameRate(2);
}

void draw () {
  background(0);
  iterations = 0;
  //print(sorting);
  for (int i = 0; i < sorting.length; i++) {
    smallestSlot = iterations; 
    println(iterations);
    for (int j = iterations; j<sorting.length; j++) {
      if (sorting [j] < sorting[i]) {
        smallestSlot = j;
      }
    }
    //temp is equal to ouer smallest slot 
    //the smallest slot is equal to the slot that we started with
    //and now ther slot were starting with is whatever is in the temp , which is the smallest value 
    int temp;
    temp = sorting[smallestSlot];
    sorting [smallestSlot] = sorting[i];
    sorting[i] = temp;
    iterations++;

    for ( int k = 0; k<10; k++) {
      fill(255);
      rect((width/10)*k, 0, 50, int(20*sorting[k]));
      //println("test");
    }
  }
}
