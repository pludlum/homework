document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!


    const handleFavoriteSubmit = (event) => {
      event.preventDefault();

      const favoriteInput = document.querySelector(".favorite-input");
      const favorite = favoriteInput.value;
      favoriteInput.value = "";

      const newLI = document.createElement("li");
      newLI.textContent = favorite;

      const favoritesList = document.getElementById("sf-places");
      favoritesList.appendChild(newLI);
    };

    const listSubmitButton = document.querySelector(".favorite-submit");
    listSubmitButton.addEventListener("click", handleFavoriteSubmit);


  // adding new photos

  // --- your code here!



});
