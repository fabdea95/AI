import IA.DistFS.Requests;
import IA.DistFS.Servers;

import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;

import javax.swing.*;

public class Main {

    public static void main(String[] args) throws Exception {
        /*
    	int seed = Integer.parseInt(args[0]); // prints the result
        System.out.println("La semilla ingresada es " + seed); // prints the result
        System.out.println();
        */
        Requests req = new Requests(200,5,1234); 	//users, request, seed
        Servers serv = new Servers(50,5,1234);		//nserv, nrep, seed    ---> nrep  no puede exceder el 50% de nserv
        int [] peticiones = new int[req.size()];

        Estado est = new Estado(peticiones,req,serv);
        

        Estado inicial1 = est.generarsolucion1(est.getPeticiones(),est.getReq(),est.getServ());
        Estado inicial2 = est.generarsolucion2(est.getPeticiones(),est.getReq(),est.getServ());
        //System.out.println("Estado inicial (solución 1): " + inicial1.toString());
        //System.out.println("Estado inicial (solución 2): " + inicial2.toString());

        Heuristica1 h1 = new Heuristica1();
        Heuristica2 h2 = new Heuristica2();

        System.out.println("--> Heuristica 1");
        double v1 = h1.getHeuristicValue(inicial1);
        System.out.println("Con inicial 1 es: " + v1);
        v1 = h1.getHeuristicValue(inicial2);
        System.out.println("Con inicial 2 es: " + v1 + "\n");

        System.out.println("--> Heuristica 2");
        double v2 = h2.getHeuristicValue(inicial1);
        System.out.println("Con inicial 1 es: " + v2);        
        v2 = h2.getHeuristicValue(inicial2);
        System.out.println("Con inicial 2 es: " + v2 + "\n");

        long init, fin;
/*
        //HC inicial 1 - Heuristica 1
        init = System.currentTimeMillis();
        HillClimbing(inicial1,1);
        fin = System.currentTimeMillis();
        System.out.println("Tarda " + (float) ((fin-init)/1000) + " segundos.");
        System.out.println("Tarda " + ((fin-init)) + " milisegundos \n");

        //HC inicial 1 - Heuristica 2
        init = System.currentTimeMillis();
        HillClimbing(inicial1,2);
        fin = System.currentTimeMillis();
        System.out.println("Tarda " + (float) ((fin-init)/1000) + " segundos.");
        System.out.println("Tarda " + ((fin-init)) + " milisegundos \n");

        //SA inicial 1 - Heuristica 1
        init = System.currentTimeMillis();
        SimulatedAnnealing(inicial1,1);
        fin = System.currentTimeMillis();
        System.out.println("Tarda " + (float) ((fin-init)/1000) + " segundos.");
        System.out.println("Tarda " + ((fin-init)) + " milisegundos \n");

        //SA inicial 1 - Heuristica 2
        init = System.currentTimeMillis();
        SimulatedAnnealing(inicial1,2);
        fin = System.currentTimeMillis();
        System.out.println("Tarda " + (float) ((fin-init)/1000) + " segundos.");
        System.out.println("Tarda " + ((fin-init)) + " milisegundos \n");
*/
        //HC inicial 2 - Heuristica 1
        init = System.currentTimeMillis();
        HillClimbing(inicial2,1);
        fin = System.currentTimeMillis();
        System.out.println("Tarda " + (float) ((fin-init)/1000) + " segundos.");
        System.out.println("Tarda " + ((fin-init)) + " milisegundos \n");


        //HC inicial 2 - Heuristica 2
        init = System.currentTimeMillis();
        HillClimbing(inicial2,2);
        fin = System.currentTimeMillis();
        System.out.println("Tarda " + (float) ((fin-init)/1000) + " segundos.");
        System.out.println("Tarda " + ((fin-init)) + " milisegundos \n");
/*
        //SA inicial 2 - Heuristica 1
        init = System.currentTimeMillis();
        SimulatedAnnealing(inicial2,1);
        fin = System.currentTimeMillis();
        System.out.println("Tarda " + (float) ((fin-init)/1000) + " segundos.");
        System.out.println("Tarda " + ((fin-init)) + " milisegundos \n");

        //SA inicial 2 - Heuristica 2
        init = System.currentTimeMillis();
        SimulatedAnnealing(inicial2,2);
        fin = System.currentTimeMillis();
        System.out.println("Tarda " + (float) ((fin-init)/1000) + " segundos.");
        System.out.println("Tarda " + ((fin-init)) + " milisegundos \n");
*/

     }

     private static void HillClimbing(Estado estado, int nHeu){
     	System.out.println("\n---------------Algoritmo HillClimbing:---------------\n");

     	try {
            
            Problem problem;
            if (nHeu==1){
                problem =  new Problem(estado,new Sucesores(), new ProbGoalTest(),new Heuristica1());
            }else{
                problem =  new Problem(estado,new Sucesores(), new ProbGoalTest(),new Heuristica2());
            }

            //Problem problem =  new Problem(estado,new Sucesores(), new ProbGoalTest(),new Heuristica1());
            HillClimbingSearch search =  new HillClimbingSearch();
            SearchAgent agent = new SearchAgent(problem,search);
            System.out.println();

            //printActions(agent.getActions());
            printInstrumentation(agent.getInstrumentation());
            Estado fin =  (Estado) search.getGoalState();
            System.out.println("total transmission time " + fin.totalTime() + " ms");
            System.out.println("time dev " + fin.timeDev() + " ms");

            double valH_ini;
            double valH_fin;
            if (nHeu==1){
                Heuristica1 h = new Heuristica1();
                valH_ini= h.getHeuristicValue(estado);
                valH_fin = h.getHeuristicValue(fin);
            }else{
                Heuristica2 h = new Heuristica2();
                valH_ini= h.getHeuristicValue(estado);
                valH_fin = h.getHeuristicValue(fin);
            }

            System.out.println("El valor de la heuristica "+ nHeu + " con E. inicial es: " + valH_ini);
            System.out.println("El valor de la heuristica "+ nHeu + " con E. final es: " + valH_fin);

        } catch (Exception e) {
            e.printStackTrace();
        }
     }

     private static void SimulatedAnnealing(Estado estado, int nHeu){
     	System.out.println("\n---------------Algoritmo SimulatedAnnealing:---------------\n");

        try {
            Problem problem =  new Problem(estado,new SucesoresSA(), new ProbGoalTest(),new Heuristica2());
            SimulatedAnnealingSearch search =  new SimulatedAnnealingSearch(2000,100,25,0.0001);
            //Número total de iteraciones, Iteraciones por cada cambio de temperatura (ha de ser un divisor del anterior),
            //Parámetro k de la función de aceptación de estados,Parámetro λ de la función de aceptación de estados
            
            search.traceOn();
            SearchAgent agent = new SearchAgent(problem,search);

            System.out.println();
            printActions(agent.getActions());
            printInstrumentation(agent.getInstrumentation());
            System.out.println("total transmission time " + estado.totalTime());
            Estado fin =  (Estado) search.getGoalState();

            double valH_ini;
            double valH_fin;
            if (nHeu==1){
                Heuristica1 h = new Heuristica1();
                valH_ini= h.getHeuristicValue(estado);
                valH_fin = h.getHeuristicValue(fin);
            }else{
                Heuristica2 h = new Heuristica2();
                valH_ini= h.getHeuristicValue(estado);
                valH_fin = h.getHeuristicValue(fin);
            }

            System.out.println("El valor de la heuristica "+ nHeu + " con E. inicial es: " + valH_ini);
            System.out.println("El valor de la heuristica "+ nHeu + " con E. final es: " + valH_fin);

        } catch (Exception e) {
            e.printStackTrace();
        }
     }


    private static void printInstrumentation(Properties properties) {
        Iterator keys = properties.keySet().iterator();
        while (keys.hasNext()) {
            String key = (String) keys.next();
            String property = properties.getProperty(key);
            System.out.println(key + " : " + property);
        }
        
    }
    
    private static void printActions(List actions) {

        for (int i = 0; i < actions.size(); i++) {
            String action =  actions.get(i).toString();
            System.out.println(action);
            //System.out.println(actions[3]);
        }
        System.out.println("N acciones: "+actions.size());

    }
    

}
