const buttonMoodHappy = document.getElementById(`happy`);
const buttonMoodSad = document.getElementById(`sad`);
const buttonMoodAdven = document.getElementById(`adventurous`);
const buttonMoodFright = document.getElementById(`frightening`);
const buttonMoodThrill = document.getElementById(`thrilling`);
const reviewForm = document.getElementById(`reviewform`);
const moodContainer = document.getElementById(`mainDisplay`);
const reviewDisplay = document.getElementById(`reviewDisplay`);
const imageDisplay = document.getElementById("movieImgContainer");

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

async function getReviews() {
  const getReview = await fetch(`http://localhost:7878/reviews`);
  const gotReview = await getReview.json();
  console.log(gotReview);
  addReviews(gotReview);
}

function addReviews(reviewsArray) {
  reviewsArray.forEach((reviewObject) => {
    const div = document.createElement("div");
    div.classList.add("review-container");
    console.log(reviewObject);

    const filmName = document.createElement("p");
    filmName.innerText = reviewObject.moviename;

    const movieReview = document.createElement("p");
    movieReview.innerText = reviewObject.review;

    div.append(filmName, movieReview);
    reviewDisplay.append(div);
  });
}
getReviews();
