��    <      �  S   �      (  "   )  �   L  C        Z  U  t  [   �  R   &  �   y  ~   F	  �   �	  k   b
  4   �
  7     �   ;  �     S   �  8   �     ,  �   3               $     1     :     @     F     R     Z     _  	   d     n     |  	   �     �     �     �     �     �     �     �     �     �     �     �  �  �  	   �     �  	   �     �     �  
   �     �     �     �  �   �     p     �     �     �  i  �  )     �   <  P     "   i  ~  �  6     2   B  �   u  �   H  �   �  �   �           8  �   Y  �   B  [   �  F   '     n  2   s     �     �     �     �     �     �     �  
   �  	   �     �               %     ,     H     ^     v     �     �     �     �  	   �     �     �  	   �  H  �     ;     T     m  "   �     �     �     �     �     �  x   �     U     i     }     �     $                 :   (   4             /   9      6               *       "   )                      
         0                 <       5      '      ,      -   .       7   &      #   1             !           +              8      	           ;             3                           %   2        Clear all drawings made by turtle. Convert argument to string and concatenate.

If only one argument is passed, assumes it is a sequence.

Examples:
    >>> concatenate('x = ', 2)
    'x = 2'
    >>> concatenate([1, 2, 3, 4])
    '1234' Displays a string after applying the provided formatting arguments. Finish program execution. Format text inserting parameters in the wildcard positions.

There are two different syntax for string formatting. The first is based
on C and uses symbols such as %s, %f, %d to delimit insertion points.

>>> format_string('%i != %.2f', 42, 43)
'42 != 43.00'

The second uses curly braces.

>>> format_string('{0} != {1}', 42, 43)
'42 != 43' Move the turtle backward by the given step size (in pixels).

Aliases: backward | back | bk Move the turtle forward by the given step size (in pixels).

Aliases: forward | fd Prints the object or text provided on the screen.

If called with multiple arguments, prints them in sequence, separating
them with a white space.

Examples:
    >>> print("Hello world!")
    Hello World! Prompts the user for a numeric entry.

Examples:
    >>> x = read_number('A number:')  # user types 2...
    >>> x + 40
    42 Prompts the user for a text entry.

Examples:
    >>> name = read_text('Your name:')
    >>> show("Hello," + name)  # the user types "Maria"
    Hello Maria Reads the content from a text file and returns it as string.

Examples:
    >>> data = read_file("foo.txt") Return a string with the name of the current avatar. Return a tuple of (R, G, B) with the current pen color. Saves the text content to the indicated file, deleting any previous content.

WARNING! If the given file exists, this function will overwrite your
content without asking!

Examples:
    >>> save_in_file(data, "foo.txt") Similar to concatenate(), but takes an extra separator as first argument
argument.

Examples:
    >>> join(', ', 1, 2, 3)
    '1, 2, 3' Similar to the `show` function, but displays the resulting message in a
dialog box. Stops execution until the user presses the <return> key. Turtle Turtle representation on client.

Client knows the pos, heading, avatar and a dictionary of arbitrary meta
values. The client holds a reference to a connection and each method simply
sends messages through this connection object. alert args args, kwargs backward clear color concatenate drawing exit file fillcolor format_string forward getavatar getcolor getfillcolor join message message, text, num msg pause pos print print_formatted range range(stop) -> range object
range(start, stop[, step]) -> range object

Return an object that produces a sequence of integers from start (inclusive)
to stop (exclusive) by step.  range(i, j) produces i, i+1, i+2, ..., j-1.
start defaults to 0, and stop is omitted!  range(4) produces 0, 1, 2, 3.
These are exactly the valid indices for a list of 4 elements.
When step is given, it specifies the increment (or decrement). read_file read_number read_text save_in_file self self, step separator, args show sleep sleep(seconds)

Delay execution for a given number of seconds.  The argument may be
a floating point number for subsecond precision. string, args, kwargs text, args, kwargs text, file, F x Project-Id-Version: 
Report-Msgid-Bugs-To: fabiomacedomendes@gmail.com
POT-Creation-Date: 
PO-Revision-Date: 
Last-Translator: Fábio Mendes <fabiomacedomendes@gmail.com>
Language-Team: 
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Poedit 2.0.1
 Limpa todos os desenhos feitos pelo tuga. Converte argumentos para string e concatena.

Se somente um argumento for passado, o mesmo é tratado como uma sequência.

Examples:
    >>> concatenar('x = ', 2)
    'x = 2'
    >>> concatenar([1, 2, 3, 4])
    '1234' Exibe uma sequência depois de aplicar os argumentos de formatação fornecidos. Concluir a execução do programa. Formata o texto inserindo os parâmetros dados nas posições coringa.

Existem duas sintaxes diferentes para a formatação de texto. A primeira,
baseada em C, utiliza o símbolo %s, %f, %d, etc para delimitar os pontos
de inserção por posição.

>>> formatar('%i = %.2f', 42, 42)
'42 = 42.00'

A segunda usa esta sintaxe (explicar!)

>>> formatar('{0} = {1}', 42, 42)
'42 = 42' Move o Tuga para trás pelo passo fornecido em pixels. Mova o Tuga para frente pelo passo dado em pixels. Mostra o objeto ou texto fornecido na tela.

Se chamado com vários argumentos, imprime-os em sequência, separando-os com um espaço em branco.

Exemplos:
    >>> mostrar("Olá mundo!")
    Olá Mundo! Solicita ao usuário uma entrada numérica.

Exemplos:
    >>> x = leia_número('A number:')  # usuário digita 2
    >>> x + 40
    42 Solicita ao usuário uma entrada de texto.

Exemplos:
    >>> nome = leia_texto('Seu nome:')
    >>> mostre("Olá," + nome)  # o usuário digita "Maria"
    Olá Maria Lê o conteúdo de um arquivo de texto e o retorna como sequência de caracteres.

Exemplos:
    >>> data = leia_arquivo("foo.txt") Retorna o nome do avatar atual. Retorna  a cor de desenho atual. Salva o conteúdo de texto no arquivo indicado, excluindo qualquer conteúdo anterior.

ATENÇÃO! Se o arquivo existir, esta função substituirá seu conteúdo sem avisar!

Examples:
    >>> salvar_em_arquivo(dados, "foo.txt") Semelhante à concatenar(), mas também recebe um separador extra como argumento.

Examples:
    >>> juntar(', ', 1, 2, 3)
    '1, 2, 3' Semelhante à função `mostrar`, mas exibe a mensagem resultante em uma caixa de diálogo. Interrompe a execução até que o usuário pressione a tecla <enter>. Tuga Uma nova instância do Tuga para desenhar na tela. alerta args args, kwargs trás limpar cor concatenar
concatene desenhando sair
saia arquivo cor_preenchimento formatar
formate frente obter_avatar
obtenha_avatar obter_cor
obtenha_cor obter_cor_preenchimento juntar
junte mensagem mensagem, texto, num mensagem pausar
pause
pausa posição mostrar
mostre mostrar_formatado intervalo Retorna uma lista de inteiros. Pode ser chamada de 3 maneiras diferentes:

intervalo(n) -> [0, 1, ..., n - 1]
intervalo(a, b) -> [a, a + 1, ..., b - 1]
intervalo(a, b, x) -> [a, a + x, ..., b - 1]


Exemplos:
    >>> intervalo(5)
    [0, 1, 2, 3, 4]
    >>> intervalo(2, 5)
    [2, 3, 4]
    >>> intervalo(0, 5, 2)
    [0, 2, 4] ler_arquivo
leia_arquivo ler_número
leia_número ler_texto
leia_texto salvar_em_arquivo
salve_em_arquivo self self, passo separador, args mostrar
mostre dormir Dormir (segundos)

Atrasa a execução por um dado número de segundos. O argumento não precisa ser um número inteiro. texto, args, kwargs texto, args, kwargs texto, arquivo, F x 