let textoH1 = document.querySelector("#titulo");
let textoLink = document.querySelector("a");
let adicionaItensUl = document.querySelector("ul")
let adicionaitensOl = document.querySelector("#lista-ordenada")


textoH1.innerText = "Título principal";
textoLink.innerText = "Acesse o site Proz aqui!";
adicionaItensUl.innerHTML = `
    <li>HTML</li>
    <li>CSS</li>
    <li>JS</li>
`;
adicionaitensOl.innerHTML = `
    <li><a href= "www.google.com.br">Google</a></li>
    <li><a href= "https://github.com/Clayton-Brochier/Proz-aulas">GitHub</a></li>
    <li><a href= "https://www.youtube.com/watch?v=1-w1RfGIov4&list=PLHz_AreHm4dlsK3Nr9GVvXCbpQyHQl1o1">Curso em video JS</a></li>
`


console.log(textoH1);
console.log(textoLink);
console.log(adicionaItensUl);
console.log(adicionaItensOl);