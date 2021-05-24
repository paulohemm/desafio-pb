# Desafio | Quality Assurance

O projeto neste repositório consiste em realizar uma automatização de teste para a funcionalidade: [The Internet](https://the-internet.herokuapp.com/dynamic_loading/1), de acordo com o desafio prático, validando se o texto “Hello World” é apresentado corretamente após o botão “START” ser clicado. O projeto encontra na suiteDesafioPB, dividido entre resource, results e tests.

## suiteDesafioPB
- **tests** - contendo o arquivo testDesafioPB.robot onde é realizado o cenário de teste com keywords.
- **resource** - contendo o arquivo resource.robot onde é feita a implementação das keywords do teste.
- **results** - contem os resultados do projeto, como o log.html e report.html que podem ser abertos em um navegador para vizualizar o relatório do teste, o output.xml com informação da execução do teste e a captura do elemento "Hello World!" no formato .png.

## Ferramentas e Técnicas
- Robot Framework, para realização do teste
- Selenium Library, uma biblioteca de teste da web para Robot Framework
- Behavior Driven Development (BDD), para organização do código
 
## Pré-Requisitos do Projeto
Para rodar o projeto é necessário instalar as seguintes ferramentas:

- Instalar o [Python 3.x e o pip](https://www.python.org/downloads/). 
- Instalar o Robot Framework, no terminal execute o seguinte comando: 
```
pip install -U robotframework robot --version
```
- Instalar Selenium Library para o Robot Framework:
```
pip install --upgrade robotframework-seleniumlibrary
```
A biblioteca do Selenium requer um driver para fazer a interface com o navegador escolhido e que precisa ser instalado antes que o projeto possa ser executado. o driver também precisam estar no PATH do computador, por exemplo após fazer o download, colocar o arquivo em /usr/local/bin no caso do linux, para verificar o PATH basta executar ``` echo %PATH% ``` no terminal do windows e ``` echo $PATH ``` no terminal do linux. abaixo está o link para os drivers (apenas um é necessário).
- [ChromeDriver](https://chromedriver.chromium.org/downloads) para o google chrome (necessário baixar o arquivo com a mesma versão do navegador).
- [GeckoDriver](https://github.com/mozilla/geckodriver/releases) para o firefox.

## Instruções para rodar o projeto:
Para rodar o teste, após clonar o repositório e realizado os pré-requisitos, pode ser utilizado o seguinte comando no terminal, dentro da pasta suiteDesafioPB:
```
robot -d ./results tests 
```
ou alternativamente:
```
python -m robot -d ./results tests 
```
caso o GeckoDriver tiver sido selecionado, é necessário rodar o seguinte comando:
```
robot -d ./results -v BROWSER:firefox tests
```
ou alternativamente:
```
python -m robot -d ./results -v BROWSER:firefox tests 
```
## Resultados
![reportTeste](https://user-images.githubusercontent.com/54223200/119348859-cd815c00-bc73-11eb-8993-494ac7041801.gif)
![logTeste](https://user-images.githubusercontent.com/54223200/119348869-cf4b1f80-bc73-11eb-861f-a86fd44cbbae.gif)


## Considerações
- Tive uma incerteza enquanto os nomes se eram para ser estritamente iguais ao solicitado e por fim utilizei o botão sendo "Start" e o texto "Hello World!" por ser apenas uma troca de variável a implementação permaneceria a mesma neste caso(salvo ressalva que o teste falharia para o caso não utilizado).
