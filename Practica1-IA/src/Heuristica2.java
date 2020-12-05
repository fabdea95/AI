//HEURISTICA 2
/*
2. Minimizar el tiempo total de transmisión de los ficheros (suma de todos los tiempos de transmisión),
pero con la restricción de que los tiempos de transmisión de los servidores han de ser lo más similares
posibles entre ellos.
*/

import aima.search.framework.HeuristicFunction;
import IA.DistFS.Requests;
import IA.DistFS.Servers;

public class Heuristica2 implements HeuristicFunction {

    public int average(int [] totalTime) {
        int count = 0;
        for(int i=0; i< totalTime.length; ++i) {
            count += totalTime[i];
        }
        return count/totalTime.length;
    }

    public double getHeuristicValue (Object state){ 

		Estado estado = (Estado)state;
    	/* Devuelve el tiempo total de transmision de los servidores penalizando el hecho de que el tiempo de
    	transmision por cada servidor difiera mucho con los demás */ 

    	int [] peticiones = estado.getPeticiones();
    	Requests req = estado.getReq();
    	Servers serv = estado.getServ();

        int [] totalTime= new int[req.size()];
        for(int i=0; i<req.size();i++){
            totalTime[i]=0;
        }

        for(int i=0; i<req.size();i++) {
            int[] pet = req.getRequest(i);
            //System.out.println("<User " + pet[0] + ", File " + pet[1] + ", Serv " + peticiones[i] + ", Time "+ serv.tranmissionTime(peticiones[i],pet[0]) + ">");
            totalTime[i] += serv.tranmissionTime(peticiones[i], pet[0]);
        }
        int avg = average(totalTime);

        int total = 0;
        for(int i=0; i< totalTime.length; ++i) {
            total += totalTime[i];
            if(totalTime[i] - avg > 1500) total += 5000;
            if(totalTime[i] + avg < 1500) total += 5000;
        }




	    return total;
    }

}
