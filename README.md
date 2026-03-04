<img src="img/blackjack_header.png">

> *Un desafío personal para practicar mis conocimientos de ensamblador MIPS.*

<hr>

## ¿Por qué este proyecto?

Desde pequeño siempre he querido saber el exacto por qué de las cosas. Cuando empecé a programar no fue diferente, por eso quedé fascinado con el **Ensamblador**, dónde su bajo nivel te permite tener control sobre prácticamente cada bit. Fue ese control absoluto sobre la máquina lo que me motivó para empezar este proyecto.

¿Por qué **MIPS** y **QtSpim**? La verdad fue el stack en el que trabajaba cuando tuve mi primer contacto con el Ensamblador en la universidad y no quiero migrar ahora a otro stack sabiendo el tiempo que conllevaría.

La elección del **Blackjack** es para salirse de la normalidad de juegos como el 3 en raya o la serpiente.

<hr>

## El juego

Blackjack clásico de 1 jugador vs dealer, corriendo en consola con **posible** interfaz en arte ASCII.
Desarrollado completamente en **MIPS Assembly** y ejecutado en el simulador **QtSpim**.

### Características
- [ ] Baraja de 52 cartas con mezcla aleatoria
- [ ] Lógica completa de Blackjack (Hit, Stand, Bust, Push)
- [ ] Manejo correcto del As (1 u 11)
- [ ] **Posible** interfaz ASCII con cartas visuales
- [ ] Turno automático del dealer (regla del 17)

Quiero simular también la baraja siendo barajada, no generar un número aleatorio.

<hr>

## Stack técnico

| Herramienta | Versión | Uso |
|-------------|---------|-----|
| MIPS32 | — | Lenguaje principal |
| QtSpim | 9.1.24 | Simulador / entorno de ejecución |
| VisualStudioCode | latest | IDE / entorno de creación |


<hr>


## Estructura del proyecto

```
untitled-blackjack/
├── README.md
├── blackjack.asm        # Archivo principal
└── docs/
    └── pseudocode.md    # Pseudocódigo de referencia
```

<hr>

## Diario de desarrollo

### Problemas encontrados y soluciones

> *Aquí iré documentando mi recorrido*

<hr>

<details>
<summary> <b>[Problema 1] — La aleatoriedad no existe</b> </summary>

**Fecha:** 04/04/2026

**Descripción:** Al parecer en MIPS no existe una forma de crear un número aleatorio, en casi ningún sitio a menos que midan fenómenos físicos.


**Causa:** No quiero usar librerías externas y necesito un número aleatorio para barajar las cartas.


**Solución:** La mejor solución que encontré es la "*pseudoaletoriedad*", básicamente un número inicial o "seed" que una fórmula matemática alterará para dar una ilusión de aleatoriedad. La seed podemos pedirla al usuario para evitar la misma secuencia en todas las partidas


**Código relevante:**
```mips
# código
```
</details>

<hr>

## Qué aprendí

> *Futuras reflexiones*

### Sobre MIPS


### Sobre ensamblador en general


### Sobre el proceso

<hr>

## Referencias


<hr>

*Proyecto desarrollado como ejercicio personal de bajo nivel. 100% ensamblador, 0% librerías externas.*
