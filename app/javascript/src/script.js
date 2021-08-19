document.querySelector("#jokeBoton").addEventListener
("click", getDataAsyncAwait);

const jokeContainer = document.querySelector
("#jokeContainer");

function getDataAsyncAwait() {
    try {
        const result = await fetch(`https://api.chucknorris.io/jokes/random`);
        const data = await result.json();
        jokeContainer.innertext = data.value;
    } catch (err) {
        console.log(err);
    }

    
}


<button id="jokeBoton">Get a Chuck Norry's Joke</button>
<div id="jokeContainer"></div>

<script src="script.js"></script>