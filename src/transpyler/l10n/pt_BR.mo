��    ^           �      �  C   �     =  �   J     	  t   4	  C   �	  U  �	  �   C  ~     �   �  k   ,  1   �  )   �  *   �  2        R  �   g  �   C  S   �       8   =      v  0   �     �     �     �     �     �     �     �                         "  	   .     8     <     B     F     K     O  f   T     �  
   �     �     �     �     �     �     �     �     �     �                 
        *     0     5     ;     K     S     X     `     g  �  m  	          	   (     2     7     >     D     Q     Y     ^     k     {     �     �     �     �     �     �     �     �     �     �     �     �     �  i  �  A   Z     �  �   �      �  �   �  P   r  ~  �  �   B  �     �   �  �   ]  3   �  )     0   C  5   t  :   �  �   �  �   �  [   W     �  F   �  !      "   :      ]      v      |      �      �      �      �      �   )   �   
   �      �      �   	   !  
   !     '!     .!  	   >!     H!     X!  D   `!     �!     �!     �!     �!     �!     �!     �!     �!     "     "     "     *"     2"     ;"     C"     O"     b"     p"     "     �"     �"     �"     �"  	   �"  H  �"     $     0$     I$     ^$     c$     i$  "   ~$     �$     �$     �$     �$     �$     �$     �$     �$     	%     %     "%     +%     ?%     Q%     V%     \%     ^%     c%         9   X   S      K   =                <                       6       H       L             Z             -   ]       0             ;   G       /   4             [   ,   O   I           V          3   E   &   A       (   )      2          %       D   
   1       "       N   *   	       !       ?   C           .       >   :   P   '   F   B   $   Y       @         +      J      \   8          T                 Q   5      #   R   W   7          U   ^           M            A tuple-based 2D vector.

Supports all basic arithmetic operations. Clear screen Convert argument to string and concatenate.

If only one argument is passed, assumes it is a sequence.

Examples:
    >>> concatenate('x = ', 2)
    'x = 2'
    >>> concatenate([1, 2, 3, 4])
    '1234' Cosine of an angle (in degrees) Delay execution for a given number of seconds.

The argument may be a floating point number for subsecond precision. Displays a string after applying the provided formatting arguments. Format text inserting parameters in the wildcard positions.

There are two different syntax for string formatting. The first is based
on C and uses symbols such as %s, %f, %d to delimit insertion points.

>>> format_string('%i != %.2f', 42, 43)
'42 != 43.00'

The second uses curly braces.

>>> format_string('{0} != {1}', 42, 43)
'42 != 43' Prints the object or text provided on the screen.

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
    >>> data = read_file("foo.txt") Return a vector with the given (x, y) components. Return rotated vector by the given angle. Return the absolute value of the argument. Return the product of all numbers in the sequence. Return unity vector. Saves the text content to the indicated file, deleting any previous content.

WARNING! If the given file exists, this function will overwrite your
content without asking!

Examples:
    >>> save_in_file(data, "foo.txt") Similar to concatenate(), but takes an extra separator as first argument
argument.

Examples:
    >>> join(', ', 1, 2, 3)
    '1, 2, 3' Similar to the `show` function, but displays the resulting message in a
dialog box. Sine of an angle (in degrees) Stops execution until the user presses the <return> key. Tangent of an angle (in degrees) The dot product (scalar product) of two vectors. Type quit() to leave. Vec Vector norm. abs alert angle args args, kwargs ceil cls complex concatenate conjugate cos count dot exit exp file float(x) -> floating point number

Convert a string or number to a floating point number, if possible. format_string from_angle imag index join log log10 log2 max message message, text, num min msg norm normalized pause perp print print_formatted product quit randint random range range(stop) -> range object
range(start, stop[, step]) -> range object

Return an object that produces a sequence of integers from start (inclusive)
to stop (exclusive) by step.  range(i, j) produces i, i+1, i+2, ..., j-1.
start defaults to 0, and stop is omitted!  range(4) produces 0, 1, 2, 3.
These are exactly the valid indices for a list of 4 elements.
When step is given, it specifies the increment (or decrement). read_file read_number read_text real rotate round save_in_file seconds self self, invert separator, args seq, start, result, x sin sleep sqrt string, args, kwargs sum tan text, args, kwargs text, file, F u, v vec x x, y y Project-Id-Version: 
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
X-Generator: Poedit 2.0.2
 Um vetor 2D.

Suporta todas as operações aritméticas básicas. Limpar tela Converte argumentos para string e concatena.

Se somente um argumento for passado, o mesmo é tratado como uma sequência.

Examples:
    >>> concatenar('x = ', 2)
    'x = 2'
    >>> concatenar([1, 2, 3, 4])
    '1234' Cosseno de um ângulo (em graus) Atrasa a execução por um dado número de segundos. O argumento não precisa ser um número inteiro.

O argumento pode conter casas decimais para especificar intervalos de tempo com frações de segundo. Exibe uma sequência depois de aplicar os argumentos de formatação fornecidos. Formata o texto inserindo os parâmetros dados nas posições coringa.

Existem duas sintaxes diferentes para a formatação de texto. A primeira,
baseada em C, utiliza o símbolo %s, %f, %d, etc para delimitar os pontos
de inserção por posição.

>>> formatar('%i = %.2f', 42, 42)
'42 = 42.00'

A segunda usa esta sintaxe (explicar!)

>>> formatar('{0} = {1}', 42, 42)
'42 = 42' Mostra o objeto ou texto fornecido na tela.

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
    >>> data = leia_arquivo("foo.txt") Cria um vetor com as componentes (x, y) fornecidas. Retorna o vetor girado pelo ângulo dado. Retorna o módulo (valor absoluto) do argumento. Retornar o produto de todos os números no argumento. Retorna um vetor unitário na direção do vetor original. Salva o conteúdo de texto no arquivo indicado, excluindo qualquer conteúdo anterior.

ATENÇÃO! Se o arquivo existir, esta função substituirá seu conteúdo sem avisar!

Examples:
    >>> salvar_em_arquivo(dados, "foo.txt") Semelhante à concatenar(), mas também recebe um separador extra como argumento.

Examples:
    >>> juntar(', ', 1, 2, 3)
    '1, 2, 3' Semelhante à função `mostrar`, mas exibe a mensagem resultante em uma caixa de diálogo. Seno de um ângulo (em graus) Interrompe a execução até que o usuário pressione a tecla <enter>. Tangente de um ângulo (em graus) O produto escalar de dois vetores. Digite sair() para sair. Vetor Norma (tamanho) do vetor. módulo alerta ângulo args args, kwargs arrendondar_para_cima
arredonde_para_cima cos
coseno complexo concatenar
concatene conjugado cos
coseno contar produto_escalar sair
saia exp
exponencial arquivo Converte argumento para um número de ponto flutuante, se possível. formatar
formate coordenadas_polares imaginário índice juntar
junte log
logaritmo log10 log2 máximo mensagem mensagem, texto, num mínimo mensagem módulo normalizado pausar
pause
pausa perpendicular mostrar
mostre mostrar_formatado produto sair inteiro_aleatório número_aleatório intervalo Retorna uma lista de inteiros. Pode ser chamada de 3 maneiras diferentes:

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
leia_texto real girar arredondar
arredonde salvar_em_arquivo
salve_em_arquivo segundos self self, invertido separador, args seq, começo, resultado, x seno dormir raiz
raiz_quadrada texto, args, kwargs soma tangente texto, args, kwargs texto, arquivo, F u, v vetor x x, y y 