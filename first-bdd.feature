@Execução-Manual @Prioridade-Baixa @Versão3.49 @Sistema-Kernel @Funcionalidade-ContasFinanceiras @Solicitação-Banco
Funcionalidade: Realizar cadastro de motivo bloqueio para contas financeiras 
Como um gerente bancário 
Quero que o sistema permita que eu cadastre/consulte/exclua um motivo de bloqueio para as contas financeiras 
De forma que seja possível cadastrar mais de um motivo de bloqueio para uma mesma conta e as informações sejam usadas para geração de relatórios

Cenário: Incluir um motivo bloqueio
#Tela com campos de Num. Agência, Num. Conta, Motivo Bloqueio e Saldo devedor. Botões disponíveis de "Novo/Consulta/Exclusão/Salvar/Cancelar e Sair".
Dado uma conta <Conta> na situação <Situacao>
E que possua saldo devedor <ValorSaldoDevedor> 
Quando selecionada no sistema, os dados não serão editáveis exceto, o campo "Motivo Bloqueio"
E ao fornecer o código do motivo bloqueio <CodigoMotivoBloqueio> 
E ao tentar salvar o registro
Então o campo será preenchido automaticamente com as informações previamente cadastradas no sistema, o sistema validará os campos salvando o cadastro caso, não seja encontrados erros

Exemplos: 
|Conta  |Situacao      |ValorSaldoDevedor|CodigoMotivoBloqueio       |
|00125-8|Ativa         |R$13.000,00      |Negativação junto ao Banco |     
|00125-8|Transferida   |R$13.000,00      |Quebra de Contrato         |

Cenário: Incluir um novo motivo bloqueio com um anteriormente já cadastrado na conta
Quando o usuário selecionar uma conta 
E adicionar um novo motivo bloqueio, caso o motivo bloqueio informado já tenha sido cadastrado anteriormente na conta
Então o sistema não permitirá salvar o registro e exibirá uma mensagem de alerta

