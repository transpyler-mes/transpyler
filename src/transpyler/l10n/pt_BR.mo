��    O      �  k         �     �  �   �  C   �  U  �  ~   &	  �   �	  k   B
  L   �
  �   �
  \   �  R   4  *   �  K   �  �   �  �   �  �   �  S   -  8   �     �     �     �     �     �  �   �     �     �     �  �   �     �  	   �     �     �     �     �     �     �     �     �  
   �     �  
   �     �     �     �            
   
  	             %     *     .     6     I  	   M     W     [  	   a     k  	   w     �     �     �  
   �     �     �     �     �  
   �     �     �     �            i             �     �  i  �     �  �     P   �  ~  1  �   �  �   D  �   �  �   �  �   _  d     [   y  ,   �  N     �   Q  �   :  �     [   �  F   �     9     @     E     X     a  �   r  	   d      n      u   �   ~      L!  	   a!     k!     r!     ~!  	   �!     �!  	   �!     �!     �!     �!     �!     �!     �!  "    "     #"     /"     ;"  
   C"     N"     ["     a"     n"     v"     "     �"  	   �"     �"     �"     �"     �"     �"     #  "   #     *#     :#     J#     Y#     `#     i#     q#     }#     �#     �#  
   �#     �#  j   �#  	   2$     <$  
   >$     &   3          -   '   :          F   +       >             =      J                   *              <   5   "   )                  ,                  G             !           9   /      E           6   4   L               2   @   M          O      8                 ;   .       H   N   	            D   B       A   ?             #   (   K   7   %         $   
      0           C   I      1    <lambda> Convert argument to string and concatenate.

If only one argument is passed, assumes it is a sequence.

Examples:
    >>> concatenate('x = ', 2)
    'x = 2'
    >>> concatenate([1, 2, 3, 4])
    '1234' Displays a string after applying the provided formatting arguments. Format text inserting parameters in the wildcard positions.

There are two different syntax for string formatting. The first is based
on C and uses symbols such as %s, %f, %d to delimit insertion points.

>>> format_string('%i != %.2f', 42, 43)
'42 != 43.00'

The second uses curly braces.

>>> format_string('{0} != {1}', 42, 43)
'42 != 43' Prompts the user for a numeric entry.

Examples:
    >>> x = read_number('A number:')  # user types 2...
    >>> x + 40
    42 Prompts the user for a text entry.

Examples:
    >>> name = read_text('Your name:')
    >>> show("Hello," + name)  # the user types "Maria"
    Hello Maria Reads the content from a text file and returns it as string.

Examples:
    >>> data = read_file("foo.txt") Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff. Return a new list containing all items from the iterable in ascending order.

A custom key function can be supplied to customize the sort order, and the
reverse flag can be set to request the result in descending order. Return the binary representation of an integer.

>>> bin(2796202)
'0b1010101010101010101010' Return the hexadecimal representation of an integer.

>>> hex(12648430)
'0xc0ffee' Return the number of items in a container. Return the octal representation of an integer.

>>> oct(342391)
'0o1234567' Saves the text content to the indicated file, deleting any previous content.

WARNING! If the given file exists, this function will overwrite your
content without asking!

Examples:
    >>> save_in_file(data, "foo.txt") Shows the object or text provided on the screen.

If called with multiple arguments, prints them in sequence, separating
them with a white space.

Examples:
    >>> show("Hello world!")
    Hello World! Similar to concatenate(), but takes an extra separator as first argument
argument.

Examples:
    >>> join(', ', 1, 2, 3)
    '1, 2, 3' Similar to the `show` function, but displays the resulting message in a
dialog box. Stops execution until the user presses the <return> key. alert args as_integer_ratio bin bool bool(x) -> bool

Returns True when the argument x is true, False otherwise.
The builtins True and False are the only two instances of the class bool.
The class bool is a subclass of the class int, and cannot be subclassed. chr clear complex complex(real[, imag]) -> complex number

Create a complex number from a real part and an optional imaginary part.
This is equivalent to (real + imag*1j) where imag defaults to 0. concatenate conjugate copy denominator dict exit file find float format format_map format_string from_bytes fromhex fshow hex imag int is_integer isnumeric items join len message message, text, num mro numerator oct pause read_file read_number read_text real save_in_file separator, args setdefault show sleep sorted split startswith string, args, kwargs text, args, kwargs text, file, F to_bytes type type(object_or_name, bases, dict)
type(object) -> the object's type
type(name, bases, dict) -> a new type update x x, start Project-Id-Version: 
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
 <lambda> Converte argumentos para string e concatena.

Se somente um argumento for passado, o mesmo é tratado como uma sequência.

Examples:
    >>> concatenar('x = ', 2)
    'x = 2'
    >>> concatenar([1, 2, 3, 4])
    '1234' Exibe uma sequência depois de aplicar os argumentos de formatação fornecidos. Formata o texto inserindo os parâmetros dados nas posições coringa.

Existem duas sintaxes diferentes para a formatação de texto. A primeira,
baseada em C, utiliza o símbolo %s, %f, %d, etc para delimitar os pontos
de inserção por posição.

>>> formatar('%i = %.2f', 42, 42)
'42 = 42.00'

A segunda usa esta sintaxe (explicar!)

>>> formatar('{0} = {1}', 42, 42)
'42 = 42' Solicita ao usuário uma entrada numérica.

Exemplos:
    >>> x = leia_número('A number:')  # usuário digita 2
    >>> x + 40
    42 Solicita ao usuário uma entrada de texto.

Exemplos:
    >>> nome = leia_texto('Seu nome:')
    >>> mostre("Olá," + nome)  # o usuário digita "Maria"
    Olá Maria Lê o conteúdo de um arquivo de texto e o retorna como sequência de caracteres.

Exemplos:
    >>> data = leia_arquivo("foo.txt") Retorna um texto com um único caractere a partir do valor numérico na tabela unicode; 

A tabela unicode contêm todos símbolos utilizados em diversas linguagens. O valor de n está na faixa 0 <= n <= 0x10ffff (111411). Retornar uma nova lista contendo todos os itens do argumento organizados em ordem crescente.

Uma função opcional pode ser fornecida para personalizar a ordem de classificação. Retorna a representação binária de um inteiro.

>>> binário(2796202) 
'0b1010101010101010101010' Retorna a representação hexadecimal de um inteiro.

>>> hexadecimal(12648430) 
'0xc0ffee' Retorna o número de elementos de um objeto. Retorna a representação octal de um inteiro.

>>> octal(342391) 
'0o1234567' Salva o conteúdo de texto no arquivo indicado, excluindo qualquer conteúdo anterior.

ATENÇÃO! Se o arquivo existir, esta função substituirá seu conteúdo sem avisar!

Examples:
    >>> salvar_em_arquivo(dados, "foo.txt") Mostra o objeto ou texto fornecido na tela.

Se chamado com vários argumentos, imprime-os em sequência, separando-os com um espaço em branco.

Exemplos:
    >>> mostrar("Olá mundo!")
    Olá Mundo! Semelhante à concatenar(), mas também recebe um separador extra como argumento.

Examples:
    >>> juntar(', ', 1, 2, 3)
    '1, 2, 3' Semelhante à função `mostrar`, mas exibe a mensagem resultante em uma caixa de diálogo. Interrompe a execução até que o usuário pressione a tecla <enter>. alerta args razão_de_inteiros binário booleano
lógico booleano(x) -> lógico

Converte valor para uma variável lógica (verdadeiro/falso).

Quase todos objetos são avaliados como verdadeiros, exceto:
* O número zero
* Uma string, lista, conjunto, dicionário ou tupla vazia
* A constante Nulo caractere limpar complexo Complexo (real [, imag]) -> número complexo

Crie um número complexo a partir de uma parte real e uma parte imaginária opcional. Equivalente a (real + imag * 1j) em que imag assume o valor padrão de 0. concatenar
concatene conjugado cópia denominador dicionário sair
saia arquivo encontrar real formatar
formate formatar_mapa
formate_mapa formatar
formate de_bytes de_hexadecimal mostrar_formatado
mostre_formatado hexadecimal imaginário inteiro é_inteiro é_numérico itens juntar
junte tamanho mensagem mensagem, texto, num mro numerador octal pausar
pause
pausa ler_arquivo
leia_arquivo ler_número
leia_número ler_texto
leia_texto real salvar_em_arquivo
salve_em_arquivo separador, args definir_padrão mostrar
mostre dormir ordenado dividir começa_com texto, args, kwargs texto, args, kwargs texto, arquivo, F para_bytes tipo Tipo (object_or_name, bases, dict) tipo (objeto) -> tipo de objeto tipo (nome, bases, dict) -> um novo tip atualizar x x, começo 