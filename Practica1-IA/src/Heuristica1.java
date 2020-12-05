//HEURISTICA 1
/*
1. Minimizar el tiempo de transmisión de los ficheros para el servidor que necesita más tiempo para
transmitir sus peticiones.
*/

import aima.search.framework.HeuristicFunction;
import IA.DistFS.Requests;
import IA.DistFS.Servers;

public class Heuristica1 implements HeuristicFunction {

    public double getHeuristicValue (Object state){ 

    	Estado estado = (Estado)state;
    	/* Devuelve el tiempo de transmision de los ficheros del servidor que se demora más */

    	int [] peticiones= estado.getPeticiones(); //aqui tengo los servidores
	    Requests req = estado.getReq();
	    Servers serv = estado.getServ();

	    int [] totalTime= new int[serv.size()];
	    for(int i=0; i<serv.size();i++){
	    	totalTime[i]=0;
	    }
//
	    for(int i=0; i<req.size();i++){
            int[] pet = req.getRequest(i);
            //System.out.println("<User " + pet[0] + ", File " + pet[1] + ", Serv " + peticiones[i] + ", Time "+ serv.tranmissionTime(peticiones[i],pet[0]) + ">");
            //int antes=totalTime[peticiones[i]];
            totalTime[peticiones[i]]= totalTime[peticiones[i]] + serv.tranmissionTime(peticiones[i],pet[0]);
            //int despues=totalTime[peticiones[i]];
        	//System.out.println("servidor: " + peticiones[i] + " antes: " + antes + " aumento: " + serv.tranmissionTime(peticiones[i],pet[0]) + " despues: " + despues);
        }

        int maxTime=0;
        int maxTimeServ=-1;
        for(int i=0; i<serv.size();i++){
	    	if (totalTime[i]>maxTime){
	    		maxTime=totalTime[i];
	    		maxTimeServ=i;
	    	}
	    }
	    //System.out.println("El servidor con mayor tiempo es : " + maxTimeServ);
/*
	    for(int i=0; i<serv.size();i++){
	    	System.out.print(totalTime[i]+", ");
	    }

		System.out.println();*/
	    return (maxTime);
    }

}