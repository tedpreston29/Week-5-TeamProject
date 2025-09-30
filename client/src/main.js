const buttonMoodHappy = document.getElementById(`happy`);
const buttonMoodSad = document.getElementById(`sad`);
const buttonMoodAdven = document.getElementById(`adventurous`);
const buttonMoodFright = document.getElementById(`frightening`);
const buttonMoodThrill = document.getElementById(`thrilling`);
const reviewForm = document.getElementById(`reviewform`);
console.log(reviewForm);
const moodContainer = document.getElementById(`mainDisplay`);

async function getMoodData() {
  const getData = await fetch();

  console.log(getData);
}

// function generateHTML

reviewForm.addEventListener("submit", async (event) => {
  event.preventDefault();
  const data = new FormData(reviewForm);
  const dataCreated = Object.fromEntries(data);
  console.log(dataCreated);

  const sendData = await fetch(`http://localhost:7878/reviews`, {
    headers: {
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify(dataCreated),
  });
});
