 
function createUser(element) {
    return document.createElement(element);
}

function append(parent, element) {
    return parent.appendChild(element);
}

fetch('https://randomuser.me/api/?results=6'), {
    method: "GET",
    headers: { "Accept": ""}
}
    .then((resp) => resp.json())
    .then(function (data) {
        let user = data.result;
        return user.map(function (user) {
            let li = createUser('li'),
               img = createUser('img'),
               p = createUser('p');
            img.src = user.picture.large;
            p.innerHTML = `${user.name.first} ${user.name.last}`
            append(li, img);
            append(li, p);
            append(document.getElementById('users'), li);

        })
    })
    .catch(function (err) {
        console.log(error);
    })

