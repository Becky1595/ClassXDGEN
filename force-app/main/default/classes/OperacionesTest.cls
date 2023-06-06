@isTest
public  class OperacionesTest {
    @TestSetup
    static void makeData(){
        
    }

    public static testMethod void CalcularAreaTest() {
        Decimal base = 10;
        Decimal altura = 5;
        Decimal resultado = 10;

        Decimal resultadoexperado = Figuras.Triangulo(base,altura);
        System.assertEquals(resultadoexperado, resultado,'El calculo del área del Triangulo es incorrecta');
    }
}