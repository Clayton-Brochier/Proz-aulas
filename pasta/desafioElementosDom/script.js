let elementoJs = document.createElement("h1");
let body = document.querySelector("body");
let produto = document.createElement("div");


elementoJs.innerText = "Vende-se!";
elementoJs.id = "titulo";
produto.id = "elemento-venda"
produto.innerHTML = `
<h2>PlayStation 5 Pro</h2>
<p>Console PlayStaion 5 - Edição Spider-man 2 novo.</p>
<p>R$ 3.945,90</p>
<img src="./612SFC+tsbL._AC_SX342_SY445_.jpg">
`

body.appendChild(elementoJs);
body.appendChild(produto);


console.log(elementoJs);
console.log(produto);


