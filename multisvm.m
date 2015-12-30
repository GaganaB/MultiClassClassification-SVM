%USing Support Vector Machines for multiclass classification

%build models
for k=1:numClasses
    %Vectorized statement that binarizes Group
    G1vAll=(GroupTrain==u(k));
    models(k) = svmtrain(TrainingSet,G1vAll);
end

%classify test cases
%build testing and training set 

TS=zeros(20,x); %initialisation where x is description number
    for i=1:y
       %get the complete file name
       %calling function sfta - descriptor generation
       display(f)
       %display the current image file
               
       for k=1:z 
       TS(i,k)=a(k); %training set generation
       end
       j=j+1; %increment j to read the next file name
       display(j)
    end
    
    %for the testing set
    GT=[.....];
    %group train generation
    TestSet=zeros( , ); %initialisation with zeros 
       j=1;
       for i=1:5
       %get the complete file name
       display (f)
       % get the name of the file currently being processed
       %descriptor generation 
       for k=1:x  
       TestingSet(i,k)=a(k);
       end
        j=j+1; %variable initialised to the next image file name 
    end      
    

