import IA.DistFS.Requests;
import IA.DistFS.Servers;

import java.util.ArrayList;
import java.util.Iterator;

import java.util.Random;
import java.util.Set;
import java.util.Arrays;

public class Estado {
    private int[] peticiones;
    public static Requests req;
    public static Servers serv;

    public Estado(int[] peticiones, Requests req, Servers serv) {
        //this.peticiones = peticiones;
        this.peticiones =Arrays.copyOf(peticiones, peticiones.length);
        this.req = req;
        this.serv = serv;
    }

    public int[] getPeticiones() {
        return peticiones;

    }

    public static Requests getReq() {
        return req;
    }

    public static Servers getServ() {
        return serv;
    }

    public void setPeticiones(int[] peticiones) {
        this.peticiones = peticiones;
    }

    public static void setReq(Requests req) {
        Estado.req = req;
    }

    public static void setServ(Servers serv) {
        Estado.serv = serv;
    }


    //FUNCIONES PARA IMPRESIÓN
    public int printRequest(){
        for(int i=0; i<this.req.size();i++){
            int[] pet = this.req.getRequest(i);
            System.out.println("<User " + pet[0] + ", File " + pet[1] + ">");
        }
        System.out.println();
        return 0;
    }

    public int printPeticiones(){
        for(int i=0; i<this.req.size();i++){
            int[] pet = this.req.getRequest(i);
            System.out.println("<User " + pet[0] + ", File " + pet[1] + ", Serv " + this.peticiones[i] + ", Time "+ this.serv.tranmissionTime(this.peticiones[i],pet[0]) + ">");
        }
        System.out.println();
        return 0;
    }


    /*
    SOLUCION 1 : Utilizar un servidor random del conjunto de servidores que almacenan los archivos
    */

    public Estado generarsolucion1(int[] peticiones, Requests req, Servers serv) {
        for(int i=0; i < peticiones.length; ++i) {
            int[] pet = req.getRequest(i);  //devuelve usuario, archivo por cada request
            Set<Integer> servidores = serv.fileLocations(pet[1]); //devuelve conjunto de servidores donde esta el archivo
            Iterator<Integer> it = servidores.iterator();
            int servidor = it.next();
            peticiones[i] = servidor; 
        }
        //peticiones = arreglo de servidor ID (int) de donde se entregara el archivo al usuario

        return new Estado(peticiones,req,serv);
    }


    /*
    SOLUCION 2 : Utilizar el mejor servidor de la primera mitad
    */
    public int getBestServer(Set<Integer> servidores, int user){
        Iterator<Integer> itr = servidores.iterator();
        int min=99999999;
        int bestServer=-1;
        for(int i=0; i< (servidores.size()); i++){
            int servidor=itr.next();
            int time= serv.tranmissionTime(servidor,user);
            //System.out.println("tiempo" + time);
            if(time<min){
                min=time;
                bestServer=servidor;
            }
        }
        //System.out.println("---------bestServer " + bestServer + " time " + min);
        return bestServer;
    }
    public Estado generarsolucion2(int[] peticiones, Requests req, Servers serv) {
        for(int i=0; i < peticiones.length; ++i) {
            int[] pet = req.getRequest(i);  //devuelve usuario, archivo por cada request
            Set<Integer> servidores = serv.fileLocations(pet[1]); //devuelve conjunto de servidores donde esta el archivo

            int bestServer=getBestServer(servidores, pet[0]);
            peticiones[i] = bestServer; 
        }
        //peticiones = arreglo de servidor ID (int) de donde se entregara el archivo al usuario

        return new Estado(peticiones,req,serv);
    }

    public ArrayList<Estado> generarHijos() {
        ArrayList<Estado> hijos = new ArrayList<>();
        hijos.addAll(this.cambiar_servidor());
        //hijos.addAll(this.swapServer());
        return hijos;
    }

    public Estado generarHijos2() {
        ArrayList<Estado> hijos = new ArrayList<>();
        hijos.addAll(this.cambiar_servidor());
        //hijos.addAll(this.swapServer());
        Random myRandom = new Random();
        int i = myRandom.nextInt(hijos.size());
        return hijos.get(i);
    }


    public boolean puede_cambiar(int i, int j){

        /*Devuelve la respuesta a si el servidor de la peticion i esta dentro del conjunto
        de servidores en los que esta alojado el file j*/

        int[] pet = this.req.getRequest(j);
        Set<Integer> servidores = serv.fileLocations(pet[1]);
        return servidores.contains(this.peticiones[i]);
    }


    public ArrayList<Estado> swapServer(){
        //funcion 1

        /*Intercambia los servidores de dos consultas diferentes i, j (en caso se pudiera)*/
        ArrayList<Estado> hijos = new ArrayList<>();
        /*for(int i=0; i < req.size(); ++i) {
            for(int j=0; j <req.size(); ++j) {
                if (puede_cambiar(i, j) && puede_cambiar(j, i)) {
                    int[] pet_hijo = new int[req.size()];
                    if (req.size() >= 0) System.arraycopy(this.peticiones, 0, pet_hijo, 0, req.size());
                    int aux = pet_hijo[i];
                    pet_hijo[i] = pet_hijo[j];;
                    pet_hijo[j] = aux;
                    Estado hijo = new Estado(pet_hijo,req,serv);
                    hijos.add(hijo);
                }
            }
         }*/

        for (int i = 0; i < req.size(); ++i) {
            Random myRandom = new Random();
            int j = myRandom.nextInt(req.size());
            if (puede_cambiar(i,j) && puede_cambiar(j,i)) {

                int[] pet_hijo = new int[req.size()];
                for (int k = 0; k < req.size(); ++k) {
                    pet_hijo[k] = this.peticiones[k];
                }
                int aux = pet_hijo[i];
                pet_hijo[i] = pet_hijo[j];
                pet_hijo[j] = aux;
                Estado hijo = new Estado(pet_hijo, req, serv);
                hijos.add(hijo);
            }
        }

        return  hijos;
    }

    public ArrayList<Estado> cambiar_servidor() {

        ArrayList<Estado> hijos = new ArrayList<>();

        for (int i = 0; i < req.size(); ++i) {
            int[] pet = req.getRequest(i);
            Set<Integer> servidores = serv.fileLocations(pet[1]);
            Iterator<Integer> it = servidores.iterator();
            int s = this.peticiones[i];
            int s1 = it.next();
            int s0 = s1;

            int[] pet_hijo = Arrays.copyOf(this.peticiones, this.peticiones.length);
            /*int [] pet_hijo = new int[req.size()];
            for(int j=0; j < req.size(); ++j) {
                pet_hijo[j] = this.peticiones[j];
            }*/

            while ((it.hasNext()) && (s != s1)) {
                s1 = it.next();
            }
            if (it.hasNext()) {
                s1 = it.next();
                if (s1 != s) {
                    pet_hijo[i] = s1;
                }
            }
            else {
                    pet_hijo[i] = s0;
            }
            Estado hijo = new Estado(pet_hijo,req,serv);
            hijos.add(hijo);
        }
        return hijos;

    }

    @Override
    public String toString() {
        String retVal = "\n";
        for(int i=0; i<this.req.size();i++){
            int[] pet = req.getRequest(i);
            retVal=retVal + "<User " + pet[0] + ", File " + pet[1] + ", Serv " + this.peticiones[i] + ", Time "+ serv.tranmissionTime(this.peticiones[i],pet[0]) + "> \n";

        }

        return retVal;
    }

    public int totalTime(){
        int time = 0;
        for(int i=0; i<this.req.size();i++) {
            int[] pet = req.getRequest(i);
            time = time + serv.tranmissionTime(this.peticiones[i], pet[0]);
        }
        return time;
    }

    public float timeDev(){
        int tiempo_tot = totalTime();
        float media = tiempo_tot/(this.req.size());
        double tot = 0;
        int time = 0;
        double scarto = 0;
        double dev = 0;
        for(int i=0; i< this.req.size();i++) {
            int[] pet = req.getRequest(i);
            time = serv.tranmissionTime(this.peticiones[i], pet[0]);
            scarto = time - media;
            tot = tot + Math.pow(scarto, 2);
        }
        dev = Math.sqrt(tot/req.size());
        float retdev = (float)dev;
        return  retdev;
    }


}
