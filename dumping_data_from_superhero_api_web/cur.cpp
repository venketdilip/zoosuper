#include <winsock2.h>
#include <iostream>
#include <vector>
#include <locale>
#include <sstream>
#include<io.h>
#include<stdio.h>
#include <bits/stdc++.h>
#include <string>
#include <curl/curl.h>
#include <Windows.h>


using namespace std;
void sooo(std::string so);
void sooo1(std::string so);
void url(std::string so);
int ff(int x);
int parse_json();
std::vector<std::string> fetchdata( std::string id);



#include <cstdlib>
#include <pthread.h>
std::vector<std::string> Keys;
        std::vector<std::string> json_data;
        string website_HTML;


string data;





struct member
{
            struct Appearance
            {
                std::string gender;
                std::string race;
                std::vector<std::string> height;
                std::vector<std::string> weight;
                std::string eye_color;
                std::string hair_color;
            }Appearanceobj;
            struct Biography
            {
                    std::string full_name;
                    std::string alter_egos;
                    std::vector<std::string> aliases;
                    std::string place_of_birth;
                    std::string first_appearance;
                    std::string publisher;
                    std::string alignment;
            }obj;

            struct Connections
            {
                    std::string group_affiliation;
                    std::string relatives;
            }Connectionsobj;

            struct Image
            {
                    std::string url;
            }Imageobj;


            struct Powerstats
            {
                    std::string intelligence;
                    std::string strength;
                    std::string speed;
                    std::string durability;
                    std::string power;
                    std::string combat;
            }Powerstatsobj;

            struct Work
            {
                    std::string occupation;
                    std::string base;

            }Workobj;
            struct Result
            {
                    std::string id;
                    std::string name;



            }Resultobj;

    void writeToFile()
    {
        std::ofstream outputFile;
        std::vector<std::string>::iterator ptr;
        outputFile.open("structchk.txt", std::ios::app);

                    outputFile<<Resultobj.id<<"+~~+";
                    outputFile<<Resultobj.name<<"+~~+";

                    outputFile<<Powerstatsobj.intelligence<<"+~~+";
                    outputFile<<Powerstatsobj.strength<<"+~~+";
                    outputFile<<Powerstatsobj.speed<<"+~~+";
                    outputFile<<Powerstatsobj.durability<<"+~~+";
                    outputFile<<Powerstatsobj.power<<"+~~+";
                    outputFile<<Powerstatsobj.combat<<"+~~+";
                    outputFile<<obj.full_name<<"+~~+";
                    outputFile<<obj.alter_egos<<"+~~+";
                     for (ptr = obj.aliases.begin(); ptr <obj.aliases.end(); ptr++)
                    outputFile << *ptr << "@";
                    outputFile<<obj.alter_egos<<"+~~+";
                    outputFile<<obj.place_of_birth<<"+~~+";
                    outputFile<<obj.first_appearance<<"+~~+";
                    outputFile<<obj.publisher<<"+~~+";
                    outputFile<<obj.alignment<<"+~~+";
                    outputFile << Appearanceobj.gender <<"+~~+";
                    outputFile << Appearanceobj.race <<"+~~+";
                    for (ptr = Appearanceobj.height.begin(); ptr < Appearanceobj.height.end(); ptr++)
                            outputFile << *ptr << "@";
                    outputFile <<  "+~~+";
                    for (ptr = Appearanceobj.weight.begin(); ptr < Appearanceobj.weight.end(); ptr++)
                        outputFile << *ptr << "@";
                    outputFile <<  "+~~+";
                    outputFile << Appearanceobj.eye_color <<"+~~+";
                    outputFile << Appearanceobj.hair_color <<"+~~+";
                    outputFile<<Workobj.occupation<<"+~~+";
                    outputFile<<Workobj.base<<"+~~+";
                    outputFile<<Connectionsobj.group_affiliation<<"+~~+";
                    outputFile<<Connectionsobj.relatives<<"+~~+";
                    outputFile<<Imageobj.url<<"+~~+";
                    outputFile<<std::endl;
                    outputFile.close();
    }
};
member e;

void set_Appearance(const std::string & gender,const std::string & race,const std::vector<std::string> &  height,const std::vector<std::string> &  weight,const std::string & eye_color,const std::string & hair_color)
            {
                e.Appearanceobj.gender=std::string(gender);
                e.Appearanceobj.race=std::string(race);
                e.Appearanceobj.height=height;
               e.Appearanceobj.weight=weight;
                e.Appearanceobj.eye_color=std::string(eye_color);
                e.Appearanceobj.hair_color=std::string(hair_color);
            }
void set_Biography(const std::string & full_name,const std::string & alter_egos,const std::vector<std::string> & aliases,const std::string & place_of_birth,const std::string & first_appearance,const std::string & publisher,const std::string & alignment)
            {
                     e.obj.full_name=std::string(full_name);
                    e.obj.alter_egos=std::string(alter_egos);
                    e.obj.aliases=aliases;
                    e.obj.place_of_birth=std::string(place_of_birth);
                    e.obj.first_appearance=std::string(first_appearance);
                    e.obj.publisher=std::string(publisher);
                    e.obj.alignment=std::string(alignment);
            }
void set_Connections(const std::string & group_affiliation,const std::string & relatives)
            {
                e.Connectionsobj.group_affiliation=std::string(group_affiliation);
                e.Connectionsobj.relatives=std::string(relatives);
            }
void set_Image(const std::string & url)
            {
                e.Imageobj.url=std::string(url);
            }
void set_Powerstats(const std::string & intelligence,const std::string & strength,const std::string & speed,
                                 const std::string & durability,const std::string & power,const std::string & combat)
            {
                    e.Powerstatsobj.intelligence=std::string(intelligence);
                    e.Powerstatsobj.strength=std::string(strength);
                    e.Powerstatsobj.speed=std::string(speed);
                    e.Powerstatsobj.durability=std::string(durability);
                    e.Powerstatsobj.power=std::string(power);
                    e.Powerstatsobj.combat=std::string(combat);
            }
void set_Work(const std::string & occupation,const std::string & base)
            {
                    e.Workobj.occupation=std::string(occupation);
                    e.Workobj.base=std::string(base);
            }
void set_Result(const std::string & id,const std::string & name)
            {
                   e.Resultobj.id=std::string(id);
                    e.Resultobj.name=std::string(name);

            }



void addrecord(std::vector<std::string> inputdata)
            {


                                            for (int i = 0; i < inputdata.size(); i++)
                                            {
                                                string cat=inputdata.at(i);
                                                if(cat.compare("-")==0||cat.compare("")==0)
                                                {

                                                    inputdata[i]="No";
                                                }


                                                cout<<inputdata.at(i)<<"\n";

                                            }




                                            std::string id=inputdata.at(0);
                                            std::string name=inputdata.at(1);
                                            std::string intelligence=inputdata.at(2);
                                            std::string strength=inputdata.at(3);
                                            std::string speed=inputdata.at(4);
                                            std::string durability=inputdata.at(5);
                                            std::string power=inputdata.at(6);
                                            std::string combat=inputdata.at(7);
                                            std::string full_name=inputdata.at(8);
                                            std::string alter_egos=inputdata.at(9);
                                            std::vector<std::string> aliases;
                                            std::string place_of_birth=inputdata.at(11);
                                            std::string first_appearance=inputdata.at(12);
                                            std::string publisher=inputdata.at(13);
                                            std::string alignment=inputdata.at(14);
                                            std::string gender=inputdata.at(15);
                                            std::string race=inputdata.at(16);
                                            std::vector<std::string> height;
                                            std::vector<std::string> weight;
                                            std::string eye_color=inputdata.at(19);
                                            std::string hair_color=inputdata.at(20);
                                            std::string occupation=inputdata.at(21);
                                            std::string base=inputdata.at(22);
                                            std::string group_affiliation=inputdata.at(23);
                                            std::string relatives=inputdata.at(24);
                                            std::string url=inputdata.at(25);


                                            std:string line= inputdata.at(10);
                                            int init_size = line.length();
                                            char delim[] = "\",\"";
                                            char char_array[init_size + 1];
                                            strcpy(char_array, line.c_str());
                                            char *ptr = strtok(char_array, delim);


                                                while(ptr != NULL)
                                                {

                                                    aliases.push_back(ptr);
                                                    ptr = strtok(NULL, delim);
                                                }
                                            line= inputdata.at(17);
                                            init_size = line.length();
                                            char char_array1[init_size + 1];
                                            strcpy(char_array1, line.c_str());
                                            char *ptr1 = strtok(char_array, delim);


                                                while(ptr1 != NULL)
                                                {

                                                    height.push_back(ptr1);
                                                    ptr1 = strtok(NULL, delim);
                                                }
                                            line= inputdata.at(18);
                                            init_size = line.length();
                                            char char_array2[init_size + 1];
                                            strcpy(char_array2, line.c_str());
                                            char *ptr2 = strtok(char_array2, delim);


                                                while(ptr2 != NULL)
                                                {

                                                    weight.push_back(ptr2);
                                                    ptr2 = strtok(NULL, delim);
                                                }




                                            set_Result(id,name);
                                            set_Powerstats(intelligence,strength,speed,durability,power,combat);
                                            set_Biography(full_name,alter_egos,aliases,place_of_birth,first_appearance,publisher,alignment);
                                            set_Appearance(gender,race,height,weight,eye_color,hair_color);
                                            set_Work(occupation,base);
                                            set_Connections(group_affiliation,relatives);
                                            set_Image(url);
                                            e.writeToFile();


}


size_t writeCallback(char* buf, size_t size, size_t nmemb, void* up)
{

    for (int c = 0; c<size*nmemb; c++)
    {
        data.push_back(buf[c]);
    }
    return size*nmemb;
}
int main(int argc, char *argv[])
{


try{

    int arg1 = atoi(argv[1]);

    ff(arg1);
    addrecord(json_data);
    json_data.clear();

}catch(int x)
{


}

    return 0;
}
int ff(int x)
{

try{
CURL* curl;
std::stringstream ss;
ss << x;
string urll="http://www.superheroapi.com/api.php/113700893455928/"+ss.str();
    curl_global_init(CURL_GLOBAL_ALL); //pretty obvious
    curl = curl_easy_init();
    curl_easy_setopt(curl, CURLOPT_URL, urll.c_str() );
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, &writeCallback);
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
    curl_easy_perform(curl);

    cout << endl <<"dddd"<< strstr(data.c_str(), "{\"response\"") << endl;
string hh=strstr(data.c_str(), "{\"response\"");
website_HTML=hh;
 data.clear();
size_t found = website_HTML.find("{\"response\":");

parse_json();
curl_easy_cleanup(curl);
curl_global_cleanup();


}
catch(int x)
{
    cout << "Exception Caught \n";
}

    return 0;
}
int parse_json()
        {

                Keys.push_back("id");
                Keys.push_back("name");
                Keys.push_back("intelligence");
                Keys.push_back("strength");
                Keys.push_back("speed");
                Keys.push_back("durability");
                Keys.push_back("power");
                Keys.push_back("combat");
                Keys.push_back("full-name");
                Keys.push_back("alter-egos");
                Keys.push_back("aliases");
                Keys.push_back("place-of-birth");
                Keys.push_back("first-appearance");
                Keys.push_back("publisher");
                Keys.push_back("alignment");
                Keys.push_back("gender");
                Keys.push_back("race");
                Keys.push_back("height");
                Keys.push_back("weight");
                Keys.push_back("eye-color");
                Keys.push_back("hair-color");
                Keys.push_back("occupation");
                Keys.push_back("base");
                Keys.push_back("group-affiliation");
                Keys.push_back("relatives");
                Keys.push_back("url");
                for (int i = 0; i < Keys.size(); i++) {
                    if(i==10||i==17||i==18)
                    {
                        sooo1(Keys.at(i));

                    }
                    else{
                        sooo(Keys.at(i));
                    }
                }


            return 0;
        }
        void sooo(std::string so)
        {

                     std::string line;
                     std::string s;


                        std::string str1="";
                         std::string s1="\",\"";
                         std::string stt="\"},\"";
                         line=website_HTML;
                    if((so.compare("url")) == 0)
                        stt="\"}}";
                        std::string s2="\"";
                        s2.append(so);
                        s2.append("\"");

                        size_t found = line.find(s2);
                        if (found != string::npos)
                        {
                            s=line.substr(found+s2.length());
                        }
                        size_t found1 = s.find(s1);
                        size_t found12 = s.find(stt);
                        found1=(found1<found12)?found1:found12;
                        if (found1 != string::npos)
                        {
                            json_data.push_back(s.substr(2,found1-2));
                        }

        }

        void sooo1(std::string so)
        {


                 std::string line;
                 std::string s;
                    std::string str1="";
                     std::string s1="\"],\"";
                     line=website_HTML;
                    std::string s2="\"";
                    s2.append(so);
                    s2.append("\"");


                    size_t found = line.find(s2);

                    if (found != string::npos)
                    {
                        s=line.substr(found+s2.length());
                    }
                    size_t found1 = s.find(s1);

                    if (found1 != string::npos)
                    {

                        json_data.push_back(s.substr(3,found1-3));

                    }

        }
