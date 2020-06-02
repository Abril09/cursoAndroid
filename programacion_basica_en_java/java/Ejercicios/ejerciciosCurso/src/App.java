import java.util.Scanner;

public class App {

    private static Scanner teclado = new Scanner(System.in);

    public static void main(String[] args) throws Exception {
         mainEjercicioIndividual16(); 
        // mainEjercicioGrupal_5();
        // mainEjercicioIndividual17();
        
    }

 ///////Ejercicio individual 16//////////////////
    public static void mainEjercicioIndividual16(){
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

        teclado.close();
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

    /////////////////////////////////////////////////////7

    private static void escribir(String message){
        System.out.println(message);
    }

}
