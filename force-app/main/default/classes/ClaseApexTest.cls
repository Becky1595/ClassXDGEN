public with sharing class ClaseApexTest {
    public static void variables_Primitivas() {

        //Variables primitivas
        Integer count = 10;
        Decimal price = 100.40;
        Boolean isActive = true;
        String name = 'Leon Velazquez';
        Datetime fecha_hora = Datetime.now();
        Date  fecha = Date.today();
        Time hora = fecha_hora.time();

        System.debug('Valores: ' + count + ' price ' + price + ' isActive ' + isActive);
        System.debug('Valores: ' + name + ' fecha ' + fecha );
        System.debug('Valores: ' + fecha_hora + ' hora ' + hora );
        System.debug('Valores: ' + fecha_hora + ' hora ' + hora );

        casa home = new casa();
        home.sala = 'Sofa';
        home.cosina = 'estufa';
        home.patio = 'pasto';

        System.debug('Clase compuestas: ' + home);

    }

     //Variables compuestas

    public static List<Integer> Numeros(){
        
        //arreglos
        List<Integer> listNumber = new List<Integer>();
        listNumber.add(1);
        listNumber.add(2);
        listNumber.add(3);
        System.debug('Listas de números: ' + listNumber);
        return listNumber;
    }

    public static set<String> Frutas(){
        
        //set
        Set<String> setFrutas = new Set<String>();
        setFrutas.add('Manzana');
        setFrutas.add('naranja');
        setFrutas.add('Uva');
        System.debug('Conjunto de frutas: ' + setFrutas);
        return setFrutas;

    }

    public static Map<String,String> Nombre() {
        //Mapa
        Map<String, String> mapName = new Map<String, String>();
        mapName.put('Andrea', 'Perez');
        mapName.put('Alejandra', 'Alaverez');
        mapName.put('Adriana', 'Muñoz');
        System.debug('Mapa de nombres: ' + mapName);
        System.debug('Nombre 1: ' + mapName.get('Andrea'));
        return mapName;
    }

    //clases personalizadas
    class Casa{
        public String sala;
        public String cosina;
        public String patio;
    }
    
    //Condicionales
    public static String condicionalIF(String nombre){
        if (nombre != null ) {
            System.debug('valor: ' + nombre);
            return nombre;
        } else {
            System.debug('El nombre no tiene valor');
            return nombre;
        }
    }

    public static void condicionalSWitch(String concionales){
        switch on  concionales{
            when 'Lunes' {
                System.debug('Inicio de semana');
            }
            when 'Miercoles' {
                System.debug('Media semana');
            }
            when 'Domingo' {
                System.debug('fianl de la semana');
            }
            when else {
                System.debug('El día ingresado no existe');
            }
        }
    }

    //Ciclos

    //For loop
    public static void for_loop() {

        List<Integer> listNumber = new List<Integer>();
        listNumber.add(1);
        listNumber.add(2);
        listNumber.add(3);
        
        for (Integer i = 0; i < listNumber.size(); i++) {
            System.debug('Valor de la lista:' + listNumber[i]);

        }
    }

    //for iteration
    public static void for_Iteration() {
        Set<String> setFrutas = new Set<String>();
        setFrutas.add('Manzana');
        setFrutas.add('naranja');
        setFrutas.add('Uva');

        for (String Frutas : setFrutas) {
            System.debug('Valor: ' + Frutas);
        }
    }

    //for SOQL
    public static void for_SOQL() {
        Set<String> setFrutas = new Set<String>();
        setFrutas.add('Manzana');
        setFrutas.add('naranja');
        setFrutas.add('Uva');

        for (Account acc : [Select Id,Name from Account]) {
            System.debug('Valor: ' + acc.Name);
        }
    }

    //While
    public static void while_ciclo() {
        Integer i=1;
        while (i<=5) {
            System.debug(i);
            i++;
        }
    }

    //Do While
    public static void do_While() {
        Integer i=1;
        
        do {
            System.debug(i);
                i++;
        } while (i<=5);
    }

    //Metodo No Estatico
    public Integer sumar (Integer a, Integer b){
        return a+b;
    }

    //Metodo Statico
    public static Integer multiplicar(Integer a, Integer b) {
        return a*b;
    }

}