<?php
include "conexao.php";

$cod = $_POST['cod'];

$sql = "SELECT * FROM tb_protocolos
        WHERE num_protocolo LIKE '$cod'";

$consultar = $pdo->prepare($sql);

try{

    $consultar->execute();
    if($consultar->rowCount()>=1){
        $resultado = $consultar->fetchAll(PDO::FETCH_ASSOC);

        foreach($resultado as $item){
            $codigo = $item['num_protocolo'];
            $nome = $item['nome_completo'];
            $cpf_pessoa = $item['cpf'];
            $email_pessoa = $item['email'];
            $telefone_pessoa = $item['telefone'];
            $setor = $item['setor_resp'];
            $data_pessoa = $item['data_hora'];
            $detalhes_pessoa = $item['detalhes'];

            echo "
                    <div class='atualizacao'>
                       <b> Nº da solicitação:</b> <span class='codigo'>$codigo</span> <br><br>
                       <b> Data/Hora da abertura:</b> <span class='data_hora'>
                            $data_pessoa
                        </span> <br><br> 
                       <b> Nome completo: </b><span class='nome'>$nome</span> <br><br>
                       <b> CPF:</b> <span class='cpf'>$cpf_pessoa</span> <br><br>
                       <b> E-mail:</b> <span class='email'>$email_pessoa</span> <br><br>
                       <b>Telefone:</b> <span class='codigo'>$telefone_pessoa</span> <br><br>
                       <b> Setor responsavel:</b> <span class='setor'>$setor</span> <br><br>
                       <b> Detalhes da solicitação :</b> <br><br>
                        <span class='deta'>$detalhes_pessoa</span> <br><br>

                        
                    </div>
            ";

        }
    }else{
        echo "Nada encontrado!";
    }
}catch(PDOException $erro){
    echo "Falha ao consultar!";
}

?>