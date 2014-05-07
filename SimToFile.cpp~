/*************************************************************
           Fonctions permettant de récupérer les résultats
           des simulations du process Hitting et de créer un
           fichier des données de simulations

    ------------------------------------------------------

 Auteur: Fippo Fitime Louis
 Date: 07/11/ 2013
 Fichier: main.cpp



*************************************************************/

#include <stdlib.h>
#include <stdio.h>
/* stdlib pour exit(), et stdio pour puts() */

#include <dirent.h>
/* Pour l'utilisation des dossiers */

#include <fstream> // pour la manipulation des fichiers avec du c++
#include <iostream>
#include <string> //manipulation des chaines de caractères

#ifndef WIN32
    #include <sys/types.h>
#endif

using namespace std;


//fonction pour arrondir à l'entier le plus proche

int arrondi(float nombre) {
  return nombre + 0.5;
}



//fonction principale

int main(int argc, char *argv[])
{
    DIR* rep = NULL;//pointeur sur le repertoire que nousy allons manipuler

    struct dirent* fichierLu = NULL; // pointeur sur le fichier

    //les fichier avec le c++
    ifstream fichierLuBis; // fichier courant qu'on va lire dans le dossier
    ofstream fichierSortie; // fichier de sortie
    string dName;

    //pour se renseigner sur le repertoire courant
    string repCourant;


    //je déclare les variables qui m'intéressent dans les fichiers que je vais lire
    //à savoir le temps(float) et l'état (int)
    int etatInitial, etatLu;//etat initial et l'etat lu
    float tempsInitial,tempsPrecedant, tempsLu;//le temps initial et le temps lu


    //compteur du nombre de colone par sorte écri dans le fichier de sorti
    int compteurColone(0);


   /* le traitements relatifs à l'ouverture des dossiers */

    rep = opendir(argv[1]); /* Ouverture d'un dossier */
    cout<<"l'argument  "<<argv[1];

    if (rep == NULL) /* Si le dossier n'a pas pu être ouvert */
    {
       perror(""); /* perror() va nous écrire l'erreur. */
       exit(1); /* (mauvais chemin par exemple) */
    }

    puts("Le dossier a ete ouvert avec succes");
    //fichierLu = readdir(rep);
    //fichierLu = readdir(rep);


    /* ouverture du fichier de sorti */

    string nom(argv[1]),sortie="Fich"+nom;//sortie=(string)argv[1]+nom;//pour fabriquer le nom du fichier de sortie
    fichierSortie.open(sortie.c_str(), ios::out | ios::trunc);  //déclaration du flux et ouverture du fichier

        if(fichierSortie)  // si l'ouverture a réussi
        {
            // instructions
            cout<<"ouverture réuissi du fichier de sorti"<<endl;
                //fichier.close();  // on referme le fichier
            fichierSortie<<"Sortes"<<" ";
            for(int i=0; i<26; i++)
            {
                fichierSortie<<i<<" ";
            }
            fichierSortie<<26<<endl;
        }
        else  // sinon
                cerr << "Erreur à l'ouverture !" << endl;




    //et maintenant nous y allons effectuer des traitements dans le dosssier
    while((fichierLu = readdir(rep)) != NULL)
    {
        //traitement des fichiers Lus dans notre repertoire
        //cout<<"Le fichier lu s'appelle "<<fichierLu->d_name<<endl;
        dName=(string)fichierLu->d_name;
       // cout<<"je convertis bien en string "<<dName<<endl;


        //je me renseigne sur le repertoire courant
        //fonctions possibles de manipulation getcwd(), chdir(), GetCurrentDirectory(), SetCurrentDirectory()
        //ça ne marche pas très bien je vais chercher pourquoi après

        //je change de repertoire de travail
        chdir(argv[1]);


         //ouverture du fichier en c++
        if((dName!="..")&&(dName!=".")){
        cout<<"ici---ici"<<dName.c_str()<<endl;


        fichierLuBis.open(dName.c_str(), ios::in);  // on ouvre le fichier en lecture


        if(fichierLuBis)  // si l'ouverture a réussi
        {
            // instructions
            cout<<"fichier lu bis est bien ouvert"<<endl;
            fichierLuBis>>tempsInitial>>etatInitial;
            tempsPrecedant=arrondi(tempsInitial);//on initialise le temps precedant


            //on écrit le nom de la sorte
            fichierSortie<<dName<<" "<<etatInitial<<" ";
            compteurColone=2;




            while(fichierLuBis)
            {
                //on lit la valeur courante
                fichierLuBis>>tempsLu>>etatLu;

                //on écrit dans le fichier de sorti
                if(fichierSortie)  // si l'ouverture a réussi
                  {
                    // instructions à écrire pour chaque ligne du fichier de sorti
                    for(int i=tempsPrecedant;i<=arrondi(tempsLu);i++)
                    {
                        fichierSortie<<etatLu<<" ";
                        compteurColone++;
                    }
                    cout<<"compteurdecolone"<<compteurColone<<endl;




                  }
                else  // sinon
                    cerr << "Erreur à l'ouverture !" << endl;

                tempsPrecedant=arrondi(tempsLu)+1;

            }


            fichierLuBis.close();  // on ferme le fichier
            fichierSortie<<compteurColone<<endl;
        }
        else  // sinon
                cerr << "Impossible d'ouvrir le fichier !" << endl;
    }
    }

    //fermeture du fichier de sorti
    fichierSortie.close();


    if (closedir(rep) == -1) /* S'il y a eu un souci avec la fermeture */
        exit(-1);

    puts("Le dossier a ete ferme avec succes");
    cout<<"l'argument  "<<argv[1];

    return 0;
}
