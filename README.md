# cesar-cipher-in-verilog

Muitos dos progressos feitos pela humanidade foram em sua grande parte graças à habilidade de comunicação desenvolvida pelos seres humanos. Desde os primórdios da humanidade existe a necessidade de um indivíduo se comunicar com um grupo seleto de pessoas, e daí surge a motivação para a criação de um método que possibilite transformar uma mensagem em uma cifra que, se interceptada, torne difícil a absorção da informação contida na mensagem por parte do interceptador. 

A criptoanálise é uma das principais forças de uma nação em uma Guerra. Ela foi muito utilizada nas duas Guerras Mundiais que esse mundo vivenciou. Ela é responsável pela derrocada de líderes militares, assim como pela promoção de outros. Antigamente essa função de criptoanálise de mensagens era feita por poucos engenheiros e matemáticos. Hoje em dia, a quebra de códigos é realizada por inúmeras pessoas com conhecimentos nas mais diversificadas áreas. 

Em criptografia, a Cifra de César, é uma das mais simples e conhecidas técnicas de criptografia, foi nomeada através de Júlio César, o general Romano que foi o principal responsável por transformar Roma em um império aproximadamente em 50 a.C. Essa cifra era usada no Império Romano para fins de proteção de informações relevantes do ponto de vista militar. É um tipo de cifra de substituição na qual cada letra do texto é substituída por outra, que se apresenta no alfabeto abaixo dela um número fixo de vezes que é determinado por uma chave. O processo de criptografia de uma cifra de César é frequentemente incorporado como parte de esquemas mais complexos, e continua tendo aplicações modernas.

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/8bac4cda-0066-4805-81cf-36bdaf75ea09)

Fig. 1 - A ação de uma cifra de César. Este exemplo está com uma chave de valor 3, então o B no texto normal se torna E no texto cifrado. 

Neste trabalho, vocês devem mascarar números, e para isso vocês devem utilizar a ideia da técnica de substituição da Cifra de César. Primeiramente, cada equipe precisa obter a sua chave (1,2,3...)

Note que a representação binária de cada número da nossa coleção de números pode variar de equipe por causa da chave

| Números | Representação binária |
|---------|------------------------|
|    1    | 1 0 0 0 0              |
|    2    | 1 1 0 0 0              |
|    3    | 1 1 1 0 0              |
|    4    | 1 1 1 1 0              |
|    5    | 1 1 1 1 1              |
|    6    | 0 1 1 1 1              |
|    7    | 0 0 1 1 1              |
|    8    | 0 0 0 1 1              |
|    9    | 0 0 0 0 1              |
|    0    | 0 0 0 0 0              |


Exemplo utilizando a chave 1:

| Entrada | Saída       |
|---------|-------------|
|    0    | 0 0 0 1 1 1 |

Exemplo utilizando a chave 2:

| Entrada | Saída         |
|---------|---------------|
|    0    | 0 0 0 1 1 1 1 |

# Descrição do trabalho
Em posse das informações acima, é necessário que vocês utilizem a linguagem de descrição de hardware Verilog para descrever o circuito tanto em ambiente virtual (simulação) quanto em ambiente físico (FPGA) para exibir os números criptografados em um display de 7 segmentos (fig. 2). Vocês podem considerar uma exibição em binário ou decimal nos displays. Exemplo: 11111 pode ser exibido como 11111 ou 31.

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/3324c7fd-deca-4789-a4ab-bbbbbc045263)

Fig. 2: Display de sete segmentos.

Displays de sete segmentos são comumente usados em eletrônica como forma de exibir uma informação alfanumérica (binário, octadecimal, decimal ou hexadecimal) que possa ser prontamente compreendida pelo usuário sobre as operações internas de um dispositivo e os quais podem ser ligados ou desligados individualmente (fig. 3).

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/53da9092-78ec-4703-b9f6-9c57f7d64b58)

Fig. 3: Simulação de um display LED de sete segmentos exibindo os 16 dígitos.

O objetivo deste trabalho prático consiste na implementação de um encriptador capaz de converter um número (de 0 a 9) em seu número correspondente pela chave. Vocês precisam dos seguintes módulos:

● número (fig.4): recebe a sequência binária de 0 a 9 e retorna a um novo
valor equivalente. Observe que a descrição dos sinais é apresentada na
tabela 1.

● transmissão: responsável por receber a sequência de bits proveniente do
primeiro e transmiti-la ao meio de saída desejado (ao testbench em
simulação e ao FPGA em ambiente real)

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/1ae1d70e-9c55-4269-950f-31cef1128622)

Fig. 4. Esboço do módulo número, responsável pela codificação da entrada


Tabela 1 – Descrição dos sinais

| Nome       | Tamanho | E/S     | Descrição                                                 |
|------------|---------|---------|-----------------------------------------------------------|
| Número     | 4 bits  | Entrada | Número a ser mascarado                                    |
| Reset      | 1 bit   | Entrada | Inicializa o sistema.                                    |
| Ready      | 1 bit   | Entrada | Indica que a entrada do número já foi finalizada. A conversão pode ser iniciada. |
| Novo número| 5 bits  | Saída   | Número mascarado                                         |


Ao final, sua implementação deverá ser capaz de receber um número em binário e exibir seu valor equivalente em relação a sua chave. 

Atenção: O módulo número deve ter sua saída gerada através de lógica combinacional. Para isso, você deve propor e simplificar uma tabela-verdade a fim de obter as saídas, de acordo com os passos descritos abaixo na seção 2.

# 2. Etapas do desenvolvimento

Os passos seguintes devem ser seguidos no processo de desenvolvimento do módulo número:

1. Levantamento das equações booleanas para cada saída com base na chave da sua
equipe;
2. Simplificação das equações booleanas utilizando lógica booleana e mapas de Karnaugh;
3. Apresentação das formas canônicas e reduzidas;
4. Apresentação do mintermo e do maxtermo das saídas;
5. Elaboração do circuito simplificado com portas lógicas no software [Logisim](http://www.cburch.com/logisim/download.html).

Os passos seguintes devem ser seguidos no processo de desenvolvimento de todos os
módulos:
1. Elaboração e simulação dos módulos em Verilog através da ferramenta [Icarus Verilog](https://bleyer.org/icarus/);
2. Visualização das formas de onda resultantes através da ferramenta [GTKWave](https://gtkwave.sourceforge.net/).

# 3. Dicas

a. Utilize sinais de controle: Como os módulos saberão se é ou não a hora de transmitir a
mensagem final? Através de sinais de controle. Crie tantos quanto forem necessários, desde que
sejam coerentes;

b. Reset: Não existe nenhum tipo de circuito que não precise, em algum momento, retornar a um
estado inicial. Portanto, não se esqueça de implementar o sinal de controle em questão.

c. Entrada inválida: Utilizem uma forma para representar uma entrada inválida.

# 4. Observações

Todas as etapas devem ser documentadas no relatório que deverá ser entregue. O moodle será o
ambiente de submissão do trabalho, e é necessário que apenas um aluno do grupo o faça. Deverá ser
submetido um arquivo compactado (.zip) contendo:

● A documentação detalhada em formato .pdf

● Os arquivos em Verilog dos módulos implementados e do módulo de teste (testbench)

● Arquivo de simulação de ondas (.vcd).

● Um vídeo de até 5 minutos explicando o código e demonstrando o funcionamento.

OBS: Para a etapa da FPGA vocês devem enviar apenas os arquivos utilizados no Quartus elaborar uma nova documentação e um novo vídeo.

# 5. Configurando o ambiente

Configurando o ambiente para trabalhar com FPGA  (ALTERA DE2-115 CYCLONE IV)

É necessário realizar o download dos seguintes itens:

* Intel® Cyclone® IV Device Support
* ModelSim-Intel® FPGA Edition (includes Starter Edition)
* Intel® Quartus® Prime (includes Nios® II EDS)

  ![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/7342ddb6-dd35-43ca-8a20-18acbb8544dc)


Será utilizado a versão 17.0 neste tutorial. 
OBS: a versão que vem no CD-ROM é a 10.0.
OBS²: a versão lite é free.

Windows:
https://www.intel.com/content/www/us/en/software-kit/669557/intel-quartus-prime-lite-edition-design-software-version-17-0-for-windows.html

Linux:
https://www.intel.com/content/www/us/en/software-kit/669553/intel-quartus-prime-lite-edition-design-software-version-17-0-for-linux.html


Durante a instalação, certifique-se que os seguintes itens estão marcados:

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/f1af0bf5-7b0d-4dec-b3be-cd99fd6b9055)


Uma vez instalado, certifique-se que a porta USB-Blaster foi reconhecida. Conecte o cabo USB no seu computador e na porta USB Blaster Port. 

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/d416e36c-d8f1-4367-806c-6fe15265cd8c)

Abra o Quartus e vá para: Tools > Programmer > Hardware Setup

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/4fa10102-7d9b-40f7-80b6-3f3a60dd3171)

Se a porta USB não tiver sido reconhecida, instale o driver manualmente. 
Caminho: intelFPGA_Lite\17.0\quartus\drivers

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/e3f870af-8830-4975-87c2-6c34286d867e)


Utilize o System Builder para gerar o arquivo que você irá trabalhar. 

System Builder
http://download.terasic.com/downloads/cd-rom/de2-115/DE2_115_SystemBuilder_V101.zip

Certifique-se que a configuração esteja igual ao do print abaixo.
 Em seguida: Generate > Salvar.
  
![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/f4503869-5101-4b87-b772-f120b4a255d0)

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/c7bf576a-f4fa-4bfb-96e3-adaa7bea8751)

Abra o arquivo .qpf. 


OBS:  Não é necessário importar o módulo “numero.v” ou qualquer outro criado no DE2_115.v se o arquivo estiver no mesmo diretório.


Observem que ao final do arquivo DE2_115.v há um espaço para vocês realizarem a codificação.

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/17b5149b-6fe9-4cac-9191-c60f0d3d9a98)


Uma vez codificado, clique do lado direito em Compile Design e em seguida clique em Start. 

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/e585842b-dbb0-46ca-ada8-fd4bbe09e079)


Se não houver nenhum erro, o programa irá informar com checks verdes que conseguiu compilar com sucesso. Caso contrário, ele irá informar o erro.

Agora, é necessário executar o programa na FPGA. Clique do lado direito em Program Device e clique em Open
![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/2d51b1d5-eebc-48f0-baaa-f734aac1df61)


Será exibido a janela Programmer, clique em Start para executar seu programa na FPGA.
![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/839ba6a5-55aa-4f71-80ce-0db6584fc284)


![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/81f9f188-f3f1-4c41-b434-20b44fff7854)

Seu programa estará disponível e funcionando na FPGA quando o progresso completar 100%. Boa diversão :)

Referências úteis:

https://www.intel.com/content/www/us/en/developer/articles/training/how-to-program-your-first-fpga-device.html
http://www.terasic.com.tw/cgi-bin/page/archive_download.pl?Language=China&No=502&FID=cd9c7c1feaa2467c58c9aa4cc02131af
https://www.youtube.com/watch?v=xB99jX9QMOE
https://www.boolean-algebra.com/kmap/
http://www.32x8.com/var4kmapx.html
https://play.google.com/store/apps/details?id=karnagh.ammsoft.karnagh&hl=en_US&gl=US"										
http://www.asic-world.com/verilog/veritut.html										
https://www.youtube.com/watch?v=3Xm6fgKAO94										
https://www.youtube.com/watch?v=aYVz0l3ZMWc&t=250s										
https://www.youtube.com/shorts/y_a0tsLkhBY										
https://www.youtube.com/watch?v=KXZ-wxfF4do										
https://www.bing.com/videos/search?q=logisim+to+generate+circuit&docid=608046466311195536&mid=F7ABDF8F7B8E0B6A2F41F7ABDF8F7B8E0B6A2F41&view=detail&FORM=VIRE										

# Exemplo utilizando a chave 1: 

| Index | A   | B   | C   | D   | S4 | S3 | S2 | S1 | S0 |
|-------|-----|-----|-----|-----|----|----|----|----|----|
| 0     | 0   | 0   | 0   | 0   | 1  | 0  | 0  | 0  | 0  |
| 1     | 0   | 0   | 0   | 1   | 1  | 1  | 0  | 0  | 0  |
| 2     | 0   | 0   | 1   | 0   | 1  | 1  | 1  | 0  | 0  |
| 3     | 0   | 0   | 1   | 1   | 1  | 1  | 1  | 1  | 0  |
| 4     | 0   | 1   | 0   | 0   | 1  | 1  | 1  | 1  | 1  |
| 5     | 0   | 1   | 0   | 1   | 0  | 1  | 1  | 1  | 1  |
| 6     | 0   | 1   | 1   | 0   | 0  | 0  | 1  | 1  | 1  |
| 7     | 0   | 1   | 1   | 1   | 0  | 0  | 0  | 1  | 1  |
| 8     | 1   | 0   | 0   | 0   | 0  | 0  | 0  | 0  | 1  |
| 9     | 1   | 0   | 0   | 1   | 0  | 0  | 0  | 0  | 0  |
| 10    | 1   | 0   | 1   | 0   | x  | x  | x  | x  | x  |
| 11    | 1   | 0   | 1   | 1   | x  | x  | x  | x  | x  |
| 12    | 1   | 1   | 0   | 0   | x  | x  | x  | x  | x  |
| 13    | 1   | 1   | 0   | 1   | x  | x  | x  | x  | x  |
| 14    | 1   | 1   | 1   | 0   | x  | x  | x  | x  | x  |
| 15    | 1   | 1   | 1   | 1   | x  | x  | x  | x  | x  |


## Formas canônicas
 
* MINTERMO (1):

| S   | Termo                                              |
| --- | -------------------------------------------------- |
| s4  | !A !B !C !D + !A !B !C D + !A !B C !D + !A !B C D + !A B !C !D |
| s3  | !A !B !C D + !A !B C !D + !A !B C D + !A B !C !D + !A B !C D |
| s2  | !A !B C !D + !A !B C D + !A B !C !D + !A B !C D + !A B C !D |
| s1  | !A !B C D + !A B !C !D + !A B !C D + !A B C !D + !A B C D |
| s0  | !A B !C !D + !A B !C D + !A B C !D + !A B C D + A !B !C !D |


	
* MAXTERMO (0):
  
| S   | Termos                                                  |
| --- | ------------------------------------------------------- |
| s4  | (A+!B+C+!D) (A+!B+!C+D) (A+!B+!C+!D) (!A+B+C+D) (!A+C+D+!E) |
| s3  | (A+B+C+D) (A+!B+!C+D) (A+!B+!C+!D) (!A+B+C+D) (!A+B+C+!D) |
| s2  | (A+B+C+D) (A+B+C+!D) (A+!B+!C+!D) (!A+B+C+D) (!A+B+C+!D) |
| s1  | (A+B+C+D) (A+B+C+!D) (A+B+!C+D) (!A+B+C+D) (!A+B+C+!D) |
| s0  | (A+B+C+D) (A+B+C+!D) (A+B+!C+D) (A+B+!C+!D) (!A+B+C+!D) |


## Formas Minimizadas (K-map)
	
* MINTERMO (1):
  
| S   | Termos              |
| --- | ------------------- |
| s4  | !A !B + B !C !D     |
| s3  | B !C + !B C + !A !B D |
| s2  | !B C + B !C + B !D  |
| s1  | CD + B              |
| s0  | A !D + B            |

	
* MAXTERMO (0):
  
| S   | Termos                      |
| --- | --------------------------- |
| s4  | (!B + !D) (!B + !C) (!A)    |
| s3  | (B + C + D) (!B + !C) (!A)  |
| s2  | (B + C) (!B + !C + !D)      |
| s1  | (B + C) (B + D)             |
| s0  | (A + B) (!A + !D)           |

Logisim com MAXTERMO (0):

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/3b6f7d5e-7357-446d-87de-76458200b4f2)

Logisim com MINTERMO (1):

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/00f63bce-8afb-4103-b978-179737b06946)

Legenda:

![image](https://github.com/mtsfreitas/cesar-cipher-in-verilog/assets/21324690/319b1352-ab24-4908-a052-1ee0954cdedb)


Autor: Matheus Freitas Martins
