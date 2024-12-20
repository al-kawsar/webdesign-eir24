
const op = document.getElementById("op");
const ip = document.getElementById("ip");
const nav = document.getElementById("list");

op.addEventListener('click', () => {
    console.log('open')
    nav.classList.add("open")
    ip.classList.add("c")
})

ip.addEventListener('click', () => {
    console.log('remove')
    nav.classList.remove("open")
    ip.classList.remove("c")
})
