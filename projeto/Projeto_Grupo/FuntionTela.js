 let saldo = 0;

    function adicionarTransacao() {
        let descricao = document.getElementById("descricao").value;
        let valor = parseFloat(document.getElementById("valor").value);
        let tipo = document.getElementById("tipo").value;
        let categoria = document.getElementById("categoria").value;

        if (descricao === "" || isNaN(valor)) {
            alert("Efetue Transações!");
            return;
        }

        if (tipo === "receita") {
            saldo += valor;
        } else {
            saldo -= valor;
        }

        document.getElementById("saldo").textContent = saldo.toFixed(2);

        let tabela = document.getElementById("listaTransacoes");
        let linha = tabela.insertRow();

        linha.innerHTML = `
            <td>${descricao}</td>
            <td>${categoria}</td>
            <td class="${tipo}">${tipo}</td>
            <td class="${tipo}">${valor.toFixed(2)}</td>
        `;

        document.getElementById("descricao").value = "";
        document.getElementById("valor").value = "";
    }

    function adicionarCategoria() {
        let novaCategoria = document.getElementById("novaCategoria").value;

        if (novaCategoria === "") {
            alert("Digite o nome da categoria!");
            return;
        }

        let select = document.getElementById("categoria");
        let option = document.createElement("option");
        option.text = novaCategoria;
        select.add(option);

        document.getElementById("novaCategoria").value = "";
    }