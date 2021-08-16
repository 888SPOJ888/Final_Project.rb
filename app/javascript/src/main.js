const input = document.querySelector("input");
const button = document.querySelector("button");
const hablaContainer = document.querySelector(".habla-Container");

button.addEventListener("click", (e) => {
    e.preventDefault();
    traer(input.value);

})


function traer(word) {
    fetch("https://hablaa-dictionary-translation-hablaa-v1.p.rapidapi.com/translation/%7Btext_to_translate%7D/%7Blang_code_src-lang_code_dst%7D/", {
	"method": "GET",
	"headers": {
		"x-rapidapi-key": "d1baf306d8mshefcaa2643931dedp19b4e9jsn4a45078682ac",
		"x-rapidapi-host": "hablaa-dictionary-translation-hablaa-v1.p.rapidapi.com"
	}
        })
        .then(response => response.json())
        .then(response => {
            console.log(response.result);
        })
        .catch(err => {
            console.error(err);
        });
    
    traer('book')

}



