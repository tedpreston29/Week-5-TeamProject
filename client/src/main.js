const buttonMoodHappy = document.getElementById(`happy`);
const buttonMoodSad = document.getElementById(`sad`);
const buttonMoodAdven = document.getElementById(`adventurous`);
const buttonMoodFright = document.getElementById(`frightening`);
const buttonMoodThrill = document.getElementById(`thrilling`);
const reviewForm = document.getElementById(`reviewform`);
const moodContainer = document.getElementById(`mainDisplay`);
const reviewDisplay = document.getElementById(`reviewDisplay`);
const imageDisplay = document.getElementById("movieImgContainer");

buttonMoodHappy.addEventListener(`click`, async function () {
  fetchMovieMood(`happy`);
});

buttonMoodSad.addEventListener(`click`, function () {
  fetchMovieMood(`sad`);
});

buttonMoodAdven.addEventListener(`click`, function () {
  fetchMovieMood(`adventurous`);
});

buttonMoodFright.addEventListener(`click`, function () {
  fetchMovieMood(`frightening`);
});

buttonMoodThrill.addEventListener(`click`, function () {
  fetchMovieMood(`thrilling`);
});

async function fetchMovieMood(mood) {
  const getMood = await fetch(`http://localhost:7878/movieMood?mood=${mood}`);
  const gotMood = await getMood.json();
  generateMoodImage(gotMood);

  console.log(gotMood);
}

function generateMoodImage(images) {
  imageDisplay.innerHTML = "";

  images.forEach(function (item) {
    const moodImg = document.createElement(`img`);
    moodImg.src = item.imgsrc;
    moodImg.setAttribute(`class`, `moodImages`);
    imageDisplay.append(moodImg);
  });
}

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
