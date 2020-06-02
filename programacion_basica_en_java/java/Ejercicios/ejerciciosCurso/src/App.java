import java.util.Scanner;

public class App {

    private static Scanner teclado = new Scanner(System.in);

    public static void main(String[] args) throws Exception {
        //descomentar funcion a ejecutar y comentar el resto//

        //  mainEjercicioIndividual16(); 
        // mainEjercicioGrupal_5();
        // mainEjercicioIndividual17();
        // mainEjercicioIndividual18(); 
        // mainEjercicioIndividual19(); 
          mainEjercicioGrupal_6();      
    }

 ///////Ejercicio individual 16//////////////////
    private static void mainEjercicioIndividual16(){
        int nVentas = 0;
        int total=0;
        escribir("ingrese numero de ventas");
        nVentas = teclado.nextInt();            
        for(int i=1; i <= nVentas; i++){
            escribir("ingrese venta");
            total = teclado.nextInt() + total;
        }
        escribir("Total: "+ total );
    }



    ///////Ejercicio individual 17//////////////////
    public static void mainEjercicioIndividual17(){
        int numero =-1;
        int cantidadCifras=0;
        do {
            escribir("Ingrese numero entero positivo");          
            numero= teclado.hasNextInt() ? teclado.nextInt():-1;
            teclado.nextLine();
        } while (numero < 0 );

    
        cantidadCifras = String.valueOf(numero).split("").length;           
        escribir("cifras: " +cantidadCifras);
    }

  
    //////////////Ejercicio grupal 5//////////////////////////////////////////////////////
    private static void mainEjercicioGrupal_5(){
        int operando1= 0;
        int operando2 =0;
        String signo = "";

        escribir("calculadora App ejercicio grupal 5");
        escribir("ingrese operando 1");
        operando1 = App.teclado.nextInt();

        escribir("ingrese operando 2");
        operando2 = teclado.nextInt();

        escribir("ingrese signo");
        signo = teclado.next();
    
        calculadoraApp(operando1, operando2, signo);
    }

    private  static void calculadoraApp(int operando1, int operando2,String signo){
           
        int resultado = 0;

        switch(signo){
            case "+":
                    resultado = operando1 + operando2;
                break;
            case "-":
                    resultado = operando1 - operando2;
                break;
            case "*":
                    resultado = operando1 * operando2;
                break;  
            case "/":                    
                    resultado = operando1 / operando2;
                break; 
            case "^":
                    resultado =  (int) Math.pow(operando1, operando2);
                break;
            case "%":
                    resultado = operando1 % operando2;
                break;
            default:
                System.out.println("error");
                break;                      
        }
        escribir("valor = " +String.valueOf(resultado));
    }


    ///////////////////////Ejercicio individual 18//////////////////////////////
    private static void mainEjercicioIndividual18() {
        escribir("ingrese venta ej: 12.3");
        Double venta =Double.parseDouble(teclado.nextLine());
               venta = ((venta * 0.19)+venta);

        escribir("venta mas IVA = " + String.format("%.3f",venta));        
    }

        ///////////////////////Ejercicio individual 19//////////////////////////////

    private static void mainEjercicioIndividual19(){
        escribir("ingrese radio");
        Double radio =Double.parseDouble(teclado.nextLine());
        Double area =(3.14 * Math.pow(radio, 2));
        escribir("area de circulo = " + area);
    }

///////////////////////Ejercicio grupal 6//////////////////////////////
    private static void mainEjercicioGrupal_6(){
        int numero =-1;
         do {
            escribir("Ingrese numero entero");          
            numero = teclado.hasNextInt() ? teclado.nextInt():-1;
            teclado.nextLine();
        } while (numero < 0 );
        escribir("numero= " +numero);   
    }



    private static void escribir(String message){
        System.out.println(message);
    }

}
