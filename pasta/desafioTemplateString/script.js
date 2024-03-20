//Crie uma função que recebe dois números como parâmetros e imprime quatro frases no terminal
// (a partir de template strings) demonstrando as quatro operações básicas aplicadas a ambos números. Exemplo:

// 4 + 5 = 9
// 4 - 5 = -1
// 4 x 5 = 20
// 4 / 5 = 0.8 

// Resolução1:

function operacoes(num1, num2){    
    console.log(`A soma de ${num1} + ${num2} = ${num1 + num2}`);
    console.log(`A subtração de ${num1} - ${num2} = ${num1 - num2}`);
    console.log(`A multiplicação de ${num1} x ${num2} = ${num1 * num2}`);
    console.log(`A divisão de ${num1} / ${num2} = ${num1 / num2}`);
}

operacoes(10, 5);


// Resolução2:

function operacoesBasicas(){
    let n1 = parseFloat(prompt("Digite o primeiro número:"));
    let n2 = parseFloat(prompt("Digite o segundo número:"))

    if (isNaN(n1) || isNaN(n2)) {
        console.log("Digite números válido.");
        return;
    }

    console.log(`A soma de ${n1} + ${n2} = ${n1 + n2}`);
    console.log(`A subtração de ${n1} - ${n2} = ${n1 - n2}`);
    console.log(`A multiplicação de ${n1} x ${n2} = ${n1 * n2}`);
    console.log(`A divisão de ${n1} / ${n2} = ${n1 / n2}`);
}

operacoesBasicas();