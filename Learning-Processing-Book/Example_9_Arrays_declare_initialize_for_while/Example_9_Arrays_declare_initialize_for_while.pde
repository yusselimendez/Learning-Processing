float[] scores = new float[2];

scores[0] = 1.2;
scores[1] = 1.3;

int[] numbers = {1,2,3,4};

float[] values = new float[5];
int n = 0;
while(n < values.length){
 values[n] = random(0,10);
 println(values[n]);
 n++;
}
println();
for(int i = 0 ; i < values.length; i++){
 values[i] = values[i] * 2 ;
 println(values[i]);
}