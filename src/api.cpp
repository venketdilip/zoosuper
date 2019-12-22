#include<io.h>
#include<stdio.h>
#include<winsock2.h>
#include <bits/stdc++.h>
using namespace std;
vector<string> Keys;

int compareOperation(string s1, string s2)
{


    if((s1.compare(s2)) == 0)
        return 0;
    else
        return 1;

}

std::string listrecord( char *id)
{
    string line;
    ifstream myfile ("../database/structchk.txt");
    vector<string> words;
    std::string str1="";
    try
    {


    if (myfile.is_open())
    {

        str1.append("\{\"result\":[");

        int scount=0,eflag=0;
        while ( getline (myfile,line) )
        {
            int found_flag=0,icount=0;
            int init_size = line.length();
            char delim[] = "+~~+";
            char char_array[init_size + 1];
            strcpy(char_array, line.c_str());
            char *ptr = strtok(char_array, delim);

            if(strcmp(ptr, id)==0)
            {
                eflag=1;
                while(ptr != NULL)
                {
                    if(  icount==0)
                    {
                        if(scount ==0)
                        {
                           str1.append("{");
                        }
                        else{
                           str1.append("},{");
                        }

                        found_flag=1;
                        icount++;
                        scount++;

                    }
                    if(found_flag)
                    {
                        words.push_back(ptr);

                    }
                    ptr = strtok(NULL, delim);
                }
                printf("\n");
                Keys.begin();
                for(unsigned int i=0; i < words.size(); i++)
                {
                    if(i==2)
                    {
                        str1.append("\"powerstats\":{");

                    }
                    if(i==8)
                    {
                        str1.resize(str1.size() - 1);
                        str1.append("},\"biography\":{");

                    }
                    if(i==15)
                    {
                        str1.resize(str1.size() - 1);
                        str1.append("},\"appearance\":{");

                    }
                    if(i==21)
                    {
                        str1.resize(str1.size() - 1);
                        str1.append("},\"work\":{");

                    }
                    if(i==23)
                    {
                        str1.resize(str1.size() - 1);
                        str1.append("},\"connections\":{");

                    }
                    if(i==10 || i==17 || i==18)
                    {
                        init_size = words.at(i).length();
                        char delim1[] = "@";
                        char char_array1[init_size + 1];

                        strcpy(char_array1, words.at(i).c_str());
                        char *ptr1 = strtok(char_array1, delim1);
                        str1.append("\"");
                        str1.append(Keys.at(i));
                        str1.append("\": ");
                        str1.append("[");
                        while(ptr1 != NULL)
                        {
                            str1.append("\"");
                            str1.append(ptr1);
                            str1.append("\",");
                            ptr1 = strtok(NULL, delim1);
                        }
                        str1.resize(str1.size() - 1);
                        str1.append("],");
                    }
                    else
                    {
                            str1.append("\"");
                            str1.append(Keys.at(i));
                            str1.append("\":\" ");
                            str1.append(words.at(i));
                            str1.append("\",");

                    }


                }
                str1.resize(str1.size() - 1);
                str1.append("}");
                words.clear();

            }

        }
        if(!eflag)
        {
            str1.resize(str1.size() - 1);
            str1.resize(str1.size() - 1);
            str1.append(":[],\"status\":[\"data not found\"]}");
        }
        else{
            str1.append("}],\"status\":[\"sucess\"]}");
        }
        return str1;
        myfile.close();
    }
    else
    {
        str1="{\"result\":[],\"status\":[\"database not found\"]}";
    }

    }
        catch (int x )
        {
            cout << "Exception Caught \n";
        }
    return str1;


}

std::string listrecord1( )
{

    string line;
    ifstream myfile ("../database/structchk.txt");
    vector<string> words;
    std::string str1="";
    int malecount=0,femalecount=0;
    try
    {
            if (myfile.is_open())
            {

                str1.append("\{\"result\":[");

                int eflag=0;
                while ( getline (myfile,line) )
                {
                    int init_size = line.length();
                    char delim[] = "+~~+";
                    char char_array[init_size + 1];
                    strcpy(char_array, line.c_str());
                    char *ptr = strtok(char_array, delim);
                    string ssss;




                    if(1)
                    {
                        eflag=1;
                        int flag=0;
                        while(ptr != NULL)
                        {


                                words.push_back(ptr);
                            ptr = strtok(NULL, delim);
                            flag++;
                        }
                        printf("\n");
                        Keys.begin();
                       str1.append("\{\"");
                        for(int i=0; i < 2; i++)
                        {


                                    if(i==1)
                                    {
                                       str1.append(",\"");
                                    }


                                    str1.append(Keys.at(i));
                                    str1.append("\":\"");
                                    str1.append(words.at(i));
                                    str1.append("\"");





                        }
                                    str1.append(",\"");
                                    str1.append(Keys.at(25));
                                    str1.append("\":\"");
                                    str1.append(words.at(25));
                                    str1.append("\",\"");
                                    str1.append(Keys.at(15));
                                    str1.append("\":\"");
                                    str1.append(words.at(15));
                                    string s1(words.at(15));
                                    string s2("Male");
                                    string s3("Female");
                                    if(compareOperation(s1, s2)==0)
                                    {
                                        malecount++;
                                    }
                                    if(compareOperation(s1, s3)==0)
                                    {
                                        femalecount++;
                                    }
                        str1.append("\"},");
                        words.clear();

                    }

                }
                if(!eflag)
                {
                    str1.resize(str1.size() - 1);
                    str1.resize(str1.size() - 1);
                    str1.append(":[],\"status\":[\"data not found\"]}");
                }
                else{
                         str1.resize(str1.size() - 1);

                    str1.append("],\"status\":[\"sucess\"]");
                    str1.append(",\"male\":\"");
                    stringstream ss;
                    ss<<malecount;
                    string s;
                    ss>>s;
                    str1.append(s);
                    str1.append("\",");
                    str1.append("\"female\":\"");
                    stringstream ss1;
                    string s1;
                    ss1<<femalecount;
                    ss1>>s1;
                    str1.append(s1);
                    str1.append("\"}");

                }
                return str1;
                myfile.close();

            }
            else
            {
                    str1="{\"result\":[],\"status\":[\"database not found\"]}";
            }
    }
    catch (int x )
    {
            cout << "Exception Caught \n";
    }

    return str1;

}
int main(int argc , char *argv[])
{
                WSADATA wsa;
                SOCKET s , new_socket;
                struct sockaddr_in server , client;
                int c;
                char *message;
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
                try{


                            cout<<"\nInitialising Winsock.";
                            if (WSAStartup(MAKEWORD(2,2),&wsa) != 0)
                            {
                            cout<<"Failed. Error Code : "<<WSAGetLastError();
                            return 1;
                            }

                            cout<<"Initialised.\n";

                            if((s = socket(AF_INET , SOCK_STREAM , 0 )) == INVALID_SOCKET)
                            {
                            cout<<"Could not create socket : %d" , WSAGetLastError();
                            }



                            server.sin_family = AF_INET;
                            server.sin_addr.s_addr = INADDR_ANY;
                            server.sin_port = htons( 8888 );

                            if( bind(s ,(struct sockaddr *)&server , sizeof(server)) == SOCKET_ERROR)
                            {
                            printf("Bind failed with error code : %d" , WSAGetLastError());
                            exit(EXIT_FAILURE);
                            }


                            listen(s , 3);
                            puts("Server Starts at http://localhost:8888 \nYou can  access  super hero data /app1?id=[Id value] \n Example:http://localhost:8888/app1?id=69");

                            c = sizeof(struct sockaddr_in);
                            char receiveBuffer[1000];


                            while( (new_socket = accept(s , (struct sockaddr *)&client, &c)) != INVALID_SOCKET )
                            {
                                                puts("Connection accepted");

                                                recv(new_socket, receiveBuffer, 1000, 0);
                                                std::string ssss = std::string(receiveBuffer);
                                                std::string delimiter = "HTTP";
                                                int mend=ssss.find(delimiter);
                                                ssss=ssss.substr(0, mend-1);
                                                cout<<ssss;
                                                mend=ssss.find("/");
                                                ssss=ssss.substr(mend);
                                                mend=ssss.find("?");
                                                ssss=ssss.substr(mend+1);

                                                int init_size = ssss.length();
                                                char delim1[] = "=";
                                                char char_array1[init_size + 1];

                                                strcpy(char_array1, ssss.c_str());
                                                char *ptr1 = strtok(char_array1, delim1);

                                                char *s1=(char*)"id";
                                                char *s2=(char*)"name";



                                                string init("HTTP/1.1 200 OK\nContent-Type: application/json\nContent-Length: ");
                                                string content;

                                                   if((strcmp(ptr1, s1)==0))
                                                   {
                                                       ptr1 = strtok(NULL, delim1);
                                                       content=listrecord(ptr1);

                                                   }
                                                   else if((strcmp(ptr1, s2)==0))
                                                   {
                                                       ptr1 = strtok(NULL, delim1);
                                                       content=listrecord1();

                                                   }

                                                    else
                                                    {
                                                        content="url error";
                                                    }
                                            std::ostringstream ss;
                                            long num = content.length();
                                            ss << num;
                                            init.append(ss.str());
                                            init.append("\n\n");
                                            init.append(content);
                                            message = (char*)init.c_str();
                                            send(new_socket , message , strlen(message) , 0);

                            }
                            if (new_socket == INVALID_SOCKET)
                            {
                                cout<<"accept failed with error code : "<< WSAGetLastError();
                                return 1;
                            }
                            closesocket(s);
                            WSACleanup();

                }

                catch (int x )
                {
                        cout << "Exception Caught \n";
                }

                return 0;
}

