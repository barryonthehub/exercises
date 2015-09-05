var slaying = true;
var youHit = Math.floor(Math.random() * 2);
var thisRoundDamage = Math.floor(Math.random() * 5 + 1);
var totalDamage = 0;

while(slaying) {
    if(youHit) {
        console.log("Nice shot!");
        totalDamage += thisRoundDamage;
        if(totalDamage >= 4) {
            console.log("The Dragon is dead!");
            slaying = false;
            } else {
                youHit = Math.floor(Math.random() * 2);
            }
    } else {
        console.log("You lose :-(");
        slaying = false;
    }
}
