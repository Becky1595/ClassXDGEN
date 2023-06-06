/**
* @description       : 
* @author            : LabsXD
* @canal             : 
* @last modified on  : 05-06-2023
* @last modified by  : LabsXD
**/
public with sharing class Figuras {
    /**
  * @author LabsXD
  * @date 05/06/2023
  * @description Directs to the corresponding method according to methodName
  * @param methodName Triangulo
  * @param input input
  * @param output base, altura
  * @param options options
  * @return true
  */
    public static Decimal Triangulo(Decimal base, Decimal altura) {

        return (base * Altura)/2;
    }

    /**
  * @author LabsXD
  * @date 05/06/2023
  * @description Directs to the corresponding method according to methodName
  * @param methodName Cuadrado
  * @param input input
  * @param output base; altura
  * @param options options
  * @return true
  */
    public static Decimal Cuadrado(Decimal lado1, Decimal lado2) {

        return lado1 * lado2;
    }
}